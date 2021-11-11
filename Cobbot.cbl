           IDENTIFICATION DIVISION.
           PROGRAM-ID. CobolBot.
           ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT ReadFile ASSIGN TO "Cobbotlog.txt"
                   ORGANIZATION IS LINE SEQUENTIAL.
               SELECT WriteFile ASSIGN TO "CobbotReturn.txt"
                   ORGANIZATION IS LINE SEQUENTIAL.
               SELECT RequestFile ASSIGN TO "MovieRequests.txt"
                   ORGANIZATION IS LINE SEQUENTIAL.
      *    A seperate file for the program to read that isn't thrown off
      *    by a sugg request        
               SELECT WhatFile ASSIGN TO "WhatsPlaying.txt"
                   ORGANIZATION IS LINE SEQUENTIAL.    
           DATA DIVISION.
           FILE SECTION.
           FD ReadFile.
               01 ReadRec.
                   02 Trigger              PIC X(5).
                   02 Instring             PIC X(70).
           FD WriteFile.
               01 OutString                PIC X(150).
           FD RequestFile.
               01 Request                  PIC X(100).
           FD WhatFile.
               01 WhatString               PIC X(100).    
           WORKING-STORAGE SECTION.

           01 SuggestionTable                  IS GLOBAL.
               02 SuggestionValues         OCCURS 6 TIMES.
                   03 SMovieName               PIC X(60).
                   03 SComment                 PIC X(60).

      *    Conversion table for seaons to make the discord command 
      *    easier for the users   
           01 SeasonTable.
               02 SeasonValues.
                   03 FILLER       PIC X(18) VALUE "Season 01Season 02".
                   03 FILLER       PIC X(18) VALUE "Season 03Season 04".
                   03 FILLER       PIC X(18) VALUE "Season 05Season 06".
                   03 FILLER       PIC X(18) VALUE "Season 07Season 08".
                   03 FILLER       PIC X(18) VALUE "Season 09Season 10".
                   03 FILLER       PIC X(18) VALUE "Season 11Season 12".
                   03 FILLER       PIC X(18) VALUE "Season 13Season 14".
                   03 FILLER       PIC X(18) VALUE "Season 15Season 16".
                   03 FILLER       PIC X(18) VALUE "Season 17Season 18".
                   03 FILLER       PIC X(18) VALUE "Season 19Season 20".
                   03 FILLER       PIC X(18) VALUE "Season 21Season 22".
                   03 FILLER       PIC X(18) VALUE "Season 23Season 24".
                   03 FILLER       PIC X(18) VALUE "Season 25Season 26".
                   03 FILLER       PIC X(18) VALUE "Season 27Season 28".
                   03 FILLER       PIC X(18) VALUE "Season 29Season 30".
               02 SeasonNames      REDEFINES SeasonValues.
                   03 Season       PIC X(9) OCCURS 30 TIMES
                                            INDEXED BY Sidx.

      *    I wanted to keep the file names intact on my actual system
      *    so this table converts the names from the standard discord
      *    command without me having to rename stuff on computer.  
           01 JoeBobTable.
               02 EpisodeNames.
               03 FILLER PIC X(49) VALUE "S01E01Tourist Trap".
               03 FILLER PIC X(49) VALUE "S01E02Sleepaway Camp".
               03 FILLER PIC X(49) VALUE "S01E03Rabid".
               03 FILLER PIC X(49) VALUE "S01E04The Prowler".
               03 FILLER PIC X(49) 
              VALUE "S01E05Sorority Babes in the Slimeball Bowl-O-Rama".
               03 FILLER PIC X(49) VALUE "S01E06Daughters of Darkness".
               03 FILLER PIC X(49) VALUE "S01E07Blood Feast".
               03 FILLER PIC X(49) VALUE "S01E08Basket Case".
               03 FILLER PIC X(49) VALUE "S01E09Re-Animator".
               03 FILLER PIC X(49) VALUE "S01E10Demons".
               03 FILLER PIC X(49) VALUE "S01E11Legend of Boggy Creek".
               03 FILLER PIC X(49) VALUE "S01E12Hellraiser".
               03 FILLER PIC X(49) VALUE "S01E13Pieces".
               03 FILLER PIC X(49) VALUE 
                   "S02E01The Texas Chainsaw Massacre".
               03 FILLER PIC X(49) VALUE "S02E02The Hills Have Eyes".
               03 FILLER PIC X(49) VALUE "S02E03Dead or Alive".
               03 FILLER PIC X(49) VALUE "S02E04Blood Rage".    
               03 FILLER PIC X(49) VALUE "S03E01Phantasm".
               03 FILLER PIC X(49) VALUE "S03E02Phantasm III".
               03 FILLER PIC X(49) VALUE "S03E03Phantasm IV".
               03 FILLER PIC X(49) VALUE "S03E04Phantasm Ravager".
               03 FILLER PIC X(49) VALUE "S04E01C.H.U.D".
               03 FILLER PIC X(49) VALUE "S04E02Castle Freak".
               03 FILLER PIC X(49) VALUE "S04E03Q: The Winged Serpent".
               03 FILLER PIC X(49) VALUE "S04E04Society".
               03 FILLER PIC X(49) VALUE "S04E05Deathgasm".
               03 FILLER PIC X(49) VALUE "S04E06The Changeling".
               03 FILLER PIC X(49) VALUE "S04E07Madman".
               03 FILLER PIC X(49) VALUE 
                       "S04E08Wolfguy - Enranged Lycanthrope".
               03 FILLER PIC X(49) VALUE "S04E09Demon Wind".
               03 FILLER PIC X(49) VALUE "S04E10House of the Devil".
               03 FILLER PIC X(49) VALUE "S04E11WolfCop".
               03 FILLER PIC X(49) VALUE 
                       "S04E12Henry Portrait of a Serial Killer".        
               03 FILLER PIC X(49) VALUE "S04E13Contamination".
               03 FILLER PIC X(49) VALUE 
                   "S04E14A Girl Walks Home Along at Night".
               03 FILLER PIC X(49) VALUE "S04E15The Stuff".
               03 FILLER PIC X(49) VALUE "S04E16Street Trash".
               03 FILLER PIC X(49) VALUE "S04E17Blood Harvest".
               03 FILLER PIC X(49) VALUE 
                       "S04E18Hello Mary Lou: Prom Night II".
               03 FILLER PIC X(49) VALUE "S05E01Halloween".        
               03 FILLER PIC X(49)
                 VALUE "S05E02Halloween 4- The Return of Michael Myers".
               03 FILLER PIC X(49) VALUE 
                   "S05E03Halloween 5- The Curse of Michael Myers".
               03 FILLER PIC X(49) VALUE "S06E01Black Christmas".
               03 FILLER PIC X(49) VALUE "S06E02Jack Frost".
               03 FILLER PIC X(49) VALUE 
                   "S06E03Silent Night Deadly Night Part 2".      
               03 FILLER PIC X(49) VALUE "S07E01Chopping Mall".
               03 FILLER PIC X(49) VALUE "S07E02Bloodsucking Freaks".
               03 FILLER PIC X(49) VALUE "S07E03Maniac".
               03 FILLER PIC X(49) VALUE "S07E04Heathers".
               03 FILLER PIC X(49) VALUE "S07E05Brain Damage".
               03 FILLER PIC X(49) VALUE "S07E06Deep Red".
               03 FILLER PIC X(49) VALUE "S07E07Troma's War".
               03 FILLER PIC X(49) VALUE "S07E08One Cut of the Dead".
               03 FILLER PIC X(49) VALUE "S07E09The Exorcist III".
               03 FILLER PIC X(49) VALUE "S07E10Deadbeat at Dawn".
               03 FILLER PIC X(49) VALUE "S07E11Dead Heat".
               03 FILLER PIC X(49) VALUE "S07E12Cannibal Holocaust".
               03 FILLER PIC X(49) VALUE "S07E13Mayhen".
               03 FILLER PIC X(49) VALUE "S07E14Tetsuo: The Iron Man".
               03 FILLER PIC X(49) VALUE "S07E15Scare Package".
               03 FILLER PIC X(49) VALUE "S07E16Hogzilla".
               03 FILLER PIC X(49) VALUE 
                       "S07E17Hellbound: Hellraiser II".
               03 FILLER PIC X(49) VALUE "S07E18Hell Comes to FrogTown".
               03 FILLER PIC X(49) VALUE 
                           "S07E19Slumber Party Massacre II".
               03 FILLER PIC X(49) VALUE "S07E20Victor Crowley".                    
               03 FILLER PIC X(49) VALUE "S08E01Haunt".
               03 FILLER PIC X(49) VALUE "S08E02Hack-O-Lantern".
               03 FILLER PIC X(49) VALUE "S09E01Deadly Games".
               03 FILLER PIC X(49) VALUE "S09E02Christmas Evil".
               03 FILLER PIC X(49) VALUE "S10E01Tammy and the T-Rex".
               03 FILLER PIC X(49) VALUE "S10E02The Love Witch".
               03 FILLER PIC X(49) VALUE "S11E01Mother's Day".
               03 FILLER PIC X(49) VALUE "S11E02House by the Cemetary".
               03 FILLER PIC X(49) VALUE "S11E03Audition".
               03 FILLER PIC X(49) VALUE "S11E04Class of 1984".
               03 FILLER PIC X(49) VALUE "S11E05Bride of Reanimator".
               03 FILLER PIC X(49) VALUE "S11E06Next of Kin".
               03 FILLER PIC X(49) VALUE "S11E07Ginger Snaps".
               03 FILLER PIC X(49) VALUE "S11E08Fried Barry".
               03 FILLER PIC X(49) VALUE "S11E09Mandy".
               03 FILLER PIC X(49) VALUE "S11E10Dead and Buried".
               03 FILLER PIC X(49) VALUE "S11E11Maniac Cop".
               03 FILLER PIC X(49) VALUE "S11E12Maniac Cop 2".
               03 FILLER PIC X(49) VALUE "S11E13Train to Busan".
               03 FILLER PIC X(49) VALUE "S11E14Spookies".
               03 FILLER PIC X(49) VALUE "S11E15SledgeHammer".
               03 FILLER PIC X(49) VALUE "S11E16Things".
               03 FILLER PIC X(49) VALUE "S11E17EvilSpeak".
               03 FILLER PIC X(49) VALUE "S11E18Day of the Beast".
               03 FILLER PIC X(49) VALUE "S11E19Little Shop of Horrors".
               03 FILLER PIC X(49) VALUE 
                           "S11E20Humanoids from the Deep".
               02 JbobNames REDEFINES EpisodeNames.
                03 JoeBob                  OCCURS 91 TIMES
                                           ASCENDING KEY IS JSeep
                                           INDEXED BY JIdx.
                   04 JSeep                PIC X(6).
                   04 JName                PIC X(43).

           01 Triggers                 PIC X(3).
           01 PrintRandom.
               02 FILLER                   PIC X(13) VALUE 
               "Now Playing: ".
               02 FILLER                    PIC XX VALUE '`"'.
               02 PrnRandMovie              PIC X(45).
               02 FILLER                    PIC X VALUE "`".

           01 PrintComment.
               02 FILLER               PIC X VALUE "`".
               02 PrnComment                 PIC X(62).
               02 FILLER               PIC X VALUE "`".

           01 PrnMovieName.
               02 Filler               PIC X(13) VALUE "Now Playing: ".
               02 FILLER               PIC X VALUE '`'.
               02 PrnTitle               PIC X(50).
               02 FILLER               PIC X VALUE '`'.
           01 PrnWant1.
               02 FILLER             PIC X(16) VALUE "Requested File: ".
           01 PrnWantTitle.
               02 FILLER               PIC X VALUE '`'.
               02 PrnWantName          PIC X(50).
               02 FILLER               PIC X VALUE '`'.
           01 PrnWant2.
               02  FILLER              PIC X(24) VALUE "Added to list".
           01 PrnError                 PIC X(70).
           01 Counters.
               02 Idx                      PIC 999.

           01 PrnSuggestion.
               02 FILLER               PIC X(3) VALUE "`".
               02 PrnSName             PIC X(50).
               02 PrnSComment          PIC X(60).
               02 FILLER               PIC X(3) VALUE "`".  
           01 MoviePathrec.
               02 FILLER               PIC X(13) VALUE "./mpc-be.exe ".
               02 FILLER               PIC X(4) VALUE '"E:\'.
               02 FILLER               PIC X(7) VALUE "Movies\".
               02 FullMovie                    PIC X(80).
               02 FILLER               PIC X   VALUE '"'.
               02 FILLER               PIC X VALUE SPACE.
               02 FILLER                   PIC X VALUE "&".
           01 ShowPathRec.
               02 FILLER               PIC X(13) VALUE "./mpc-be.exe ".
               02 FILLER               PIC X(4) VALUE '"E:\'.
               02 FILLER               PIC X(11) VALUE "Television\".
               02 FullShow             PIC X(150).
               02 FILLER               PIC X Value SPACE.
               02 FILLER               PIC X VALUE "&".
           01 JoeBobPathRec.
               02 FILLER               PIC X(13) VALUE "./mpc-be.exe ".
               02 FILLER               PIC X(4) VALUE '"E:\'.
               02 FILLER               PIC X(11) VALUE "Television\".
               02 JbobName             PIC X(37) VALUE 
           "The Last Drive-In With Joe Bob Briggs".
               02 JoebobT               PIC X(150).
               02 FILLER               PIC X Value SPACE.
               02 FILLER               PIC X VALUE "&".    
           01 ShowUnStr.
               02 ShowSeason           PIC X(3).
               02 FullSeason           PIC X(9).
      *    Basic randomizer for random file   
           01 RandomMods.
               02 RandNum                  PIC 9(3).
               02 RollMod                  PIC 9(3) VALUE 0.
               02 MinNum                   PIC 9 VALUE 1.
               02 MovieMod                 PIC 9(3) VALUE 322.
               02 MovieRand                PIC 9(3).
           01 StringStuff.    
               02 CharCount                    PIC 99.
               02 StrgSize                     PIC 99.
               02 JStrgSize                    PIC 99. 
               02 MoviePath                PIC X(40).
               02 MovieName                PIC X(35).
           01 CurrentDate.
               02 FILLER                      PIC X(12).
               02 Seed                        PIC 9999.

           01 Holds.
               02 HoldShowTitle            PIC X(50).
               02 SeEp                     PIC X(6).
               02 SeasonNum                PIC 99. 
               02 HoldJname                PIC X(30).
               02 HoldOut                  PIC X(150).
           01 Whatcheck.
               02 FILLER               PIC X(13) VALUE "Now Playing: ".
               02 Playing              PIC X(53).
           01 SuggDecade               PIC X(3).
               88  DecadeSugg          VALUE "00s", "10s", "20s", "30s",
                                      "40s", "50s", "60s", "70s", "80s",
                                       "90s".
               88  RegSugg              VALUE SPACES.                        
           01 TallyMovie                   PIC X(80).  
           PROCEDURE DIVISION.
           OPEN INPUT ReadFile
      *    Creates seed for random number generation
           MOVE FUNCTION CURRENT-DATE TO CurrentDate
           COMPUTE RandNum = FUNCTION RANDOM(Seed)
      *    Reads the file written by the JS that has trigger command
           READ ReadFile
      *    Evalates the command while ignoring requested file  
           EVALUATE FUNCTION UPPER-CASE(ReadRec(1 : 4))
           WHEN "RAND"
                   PERFORM SelectRandomMovie
           WHEN "SUGG"
               PERFORM SuggestMovie        
           WHEN "FILM"
               PERFORM SelectMovie
           WHEN "SHOW"
               PERFORM SelectShow
           WHEN "WANT"
               PERFORM WriteRequest
           WHEN "JBOB"
               PERFORM GetJoeBob                              
           WHEN "WHAT"
               PERFORM WhatCommand
           END-EVALUATE
      *    Tallys the movies that have been selected
           MOVE FullMovie TO TallyMovie
           CALL 'MovieTally' USING TallyMovie
           END-CALL
           CLOSE ReadFile
           DISPLAY "POST CLOSE"
           STOP RUN.

           SelectMovie.
           PERFORM GetMovieName
           Call "SYSTEM" USING MoviePathRec
           END-Call
           MOVE FullMovie TO PrnTitle
           OPEN OUTPUT WriteFile, WhatFile
           WRITE Outstring FROM PrnMovieName
           WRITE WhatString FROM PrnMovieName
           CLOSE WriteFile, WhatFile.

           GetMovieName.
           DISPLAY "Instring: " Instring
           INSPECT FUNCTION REVERSE(InString) TALLYING CharCount
                               FOR LEADING SPACES
                               
           COMPUTE StrgSize = (70 - CharCount)
           
           UNSTRING Instring
               INTO MoviePath   
           STRING MoviePath(1 :StrgSize)
           INTO FullMovie
           END-STRING
           DISPLAY MoviePathRec.
           
           SelectShow.
      *        Seperating show name from episode request
           INSPECT FUNCTION REVERSE(InString) TALLYING CharCount
                               FOR LEADING SPACES                 
           COMPUTE StrgSize = (70 - CharCount)
               MOVE InString (1 : Strgsize - 7) TO HoldShowTitle.
      *    Expand Season into full text    
           MOVE Instring(Strgsize - 5: 6) TO SeEp     
           UNSTRING SeEp DELIMITED BY 'e'
               Into ShowSeason
           MOVE ShowSeason(2 : ) TO SeasonNum
           SET Sidx TO 1
           SEARCH Season
                   WHEN Sidx = Seasonnum
                       Move Season(Sidx) TO FullSeason
           END-SEARCH
      *    Get string length for proper file path
           MOVE 0 TO CharCount  
           INSPECT FUNCTION REVERSE(HoldShowTitle) TALLYING CharCount
                                           FOR LEADING SPACES                              
           COMPUTE StrgSize = (50 - CharCount)                                             
           STRING HoldShowTitle(1 :StrgSize), "\", FullSeason, "\",
                                   HoldShowTitle(1 : StrgSize), " - "
                                   , SeEp,'.mkv"'
               INTO FULLSHOW
      *    Calls system to Start media Player    
           CALL "SYSTEM" USING ShowPathRec
           END-CALL
           OPEN OUTPUT WriteFile, WhatFIle
      *    Writes message to display what is being shown and stores it
      *    for future reference for the WHAT command
           MOVE FullShow TO PrnTitle
           WRITE OutString FROM PrnMovieName
           WRITE WhatString FROM PrnMovieName
           CLOSE WriteFile, WhatFile.
           
           GetJoeBob.
      *        Seperating show name from episode request
           INSPECT FUNCTION REVERSE(InString) TALLYING CharCount
                               FOR LEADING SPACES                 
           COMPUTE StrgSize = (70 - CharCount)
               MOVE InString (1:Strgsize) TO SeEp
           UNSTRING SeEp DELIMITED BY 'e' or 'E'
               INTO ShowSeason
           MOVE ShowSeason(2 : ) TO SeasonNum
           SET Sidx TO 1
           SEARCH Season
                   WHEN Sidx = SeasonNum
                       Move Season(Sidx) TO FullSeason
           END-SEARCH
           DISPLAY Seep, JSeep(1)
           SEARCH ALL JoeBob
               WHEN JSeep(Jidx) = FUNCTION UPPER-CASE(Seep)
               MOVE JName(jidx) TO HoldJName
           END-SEARCH
           DISPLAY "Joebob Name: " HoldJname
           MOVE 0 TO Charcount 
           INSPECT FUNCTION REVERSE(HoldJName) TALLYING Charcount
                                           FOR LEADING SPACES
           COMPUTE JStrgSize = (30 - CharCount)
           MOVE 0 TO CharCount  
                           
           COMPUTE StrgSize = (50 - CharCount)                                             
           STRING "\", FullSeason, "\", JbobName, " - "
                           , SeEp, " - ", HoldJname(1 : JstrgSize), 
                           '.mkv"'
               INTO JoebobT
           DISPLAY HoldJname "!"
               MOVE HoldJName TO PrnTitle
           DISPLAY "Full Show Path: " JoebobPathRec.
           CALL "SYSTEM" USING JoebobPathRec
           END-CALL
           OPEN OUTPUT WriteFile, WhatFile
           Write OutString FROM PRNMOVIENAME
           WRITE WhatString FROM PrnMovieName
           Close WriteFile, WhatFile.

           SelectRandomMovie.
      *    Starts a random movie
           COMPUTE MovieRand = FUNCTION RANDOM * (MovieMod - 
                               MinNum + 1) + MinNum
           ADD 1 TO Seed
           CALL "CobbotRandomMovie" USING  Seed, MovieRand, FullMovie,
                                           PrnComment   
           END-CALL                                                         
           MOVE FullMovie TO PrnRandMovie
          
           CALL "SYSTEM" USING MoviePathRec
           END-CALL
           OPEN OUTPUT WriteFile, WhatFile
           WRITE OutString FROM PrintRandom
           WRITE OutString FROM PrintComment
           WRITE WhatString FROM PrintRandom
           CLOSE WriteFile, WhatFile.

           WriteRequest.
           OPEN EXTEND RequestFile
           OPEN OUTPUT WriteFile
           WRITE Request FROM Instring
           MOVE InString TO PrnWantName
           WRITE OutString FROM PrnWant1
           WRITE OutString FROM PrnWantTitle
           WRITE OutString FROM PrnWant2
           CLOSE RequestFile, WriteFile.

           SuggestMovie.
           OPEN OUTPUT WriteFile
           INSPECT FUNCTION REVERSE(ReadRec) TALLYING Charcount
                               FOR LEADING SPACES                             
           COMPUTE MovieRand = FUNCTION RANDOM * (MovieMod - 
                               MinNum + 1) + MinNum
           ADD 1 TO Seed
           MOVE ReadRec(6 : 75 - CharCount) TO SuggDecade
           DISPLAY Suggdecade
           IF DecadeSugg
             CALL "SuggestMovieDecade" USING MovieRand,  SuggDecade,
                                       SuggestionTable                     
             END-CALL
           END-IF
           IF RegSugg
           CALL "SuggestMovie" USING MovieRand, SuggestionTable
           END-CALL
           END-IF
           PERFORM VARYING IDX FROM 1 BY 1 UNTIL Idx > 5
           DISPLAY SuggestionValues(Idx)
           MOVE SMovieName(idx) TO PrnSName
           MOVE SComment(idx) TO PrnScomment
           WRITE OutString FROM PrnSuggestion
           END-PERFORM
           CLOSE WriteFile.

           WhatCommand.
           OPEN INPUT WhatFile
           READ WhatFile
           MOVE WhatString TO HoldOut
           DISPLAY "HOldout:  " Holdout
           MOVE  HoldOut(14 : ) TO Playing
           DISPLAY "What Check: " Whatcheck
           OPEN OUTPUT WriteFile
           WRITE OutSTring FROM WhatCheck
           CLOSE WriteFile, WhatFile.

           