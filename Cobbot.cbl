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
           WORKING-STORAGE SECTION.
      *    COPY RandMovie.cpy
           01 SuggestionTable                  IS GLOBAL.
               02 SuggestionValues         OCCURS 5 TIMES.
                   03 SMovieName               PIC X(50).
                   03 SComment                 PIC X(60).
               
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
                
           01 JoeBobTable.
               02 EpisodeNames.
               03 FILLER PIC X(49) VALUE "s01e01Tourist Trap".
               03 FILLER PIC X(49) VALUE "s01e02Sleepaway Camp".
               03 FILLER PIC X(49) VALUE "s01e03Rabid".
               03 FILLER PIC X(49) VALUE "s01e04The Prowler".
               03 FILLER PIC X(49) 
              VALUE "s01e05Sorority Babes in the Slimeball Bowl-O-Rama".
               03 FILLER PIC X(49) VALUE "s01e06Daughters of Darkness".
               03 FILLER PIC X(49) VALUE "s01e07Blood Feast".
               03 FILLER PIC X(49) VALUE "s01e08Basket Case".
               03 FILLER PIC X(49) VALUE "s01e09Re-Animator".
               03 FILLER PIC X(49) VALUE "s01e10Demons".
               03 FILLER PIC X(49) VALUE "s01e11Legend of Boggy Creek".
               03 FILLER PIC X(49) VALUE "s01e12Hellraiser".
               03 FILLER PIC X(49) VALUE "s01e13Pieces".
               03 FILLER PIC X(49) VALUE 
                   "s02e01The Texas Chainsaw Massacre".
               03 FILLER PIC X(49) VALUE "s02e02The Hills Have Eyes".
               03 FILLER PIC X(49) VALUE "s02e03Dead or Alive".
               03 FILLER PIC X(49) VALUE "s02e04Blood Rage".    
               03 FILLER PIC X(49) VALUE "s03e01Phantasm".
               03 FILLER PIC X(49) VALUE "s03e02Phantasm III".
               03 FILLER PIC X(49) VALUE "s03e03Phantasm IV".
               03 FILLER PIC X(49) VALUE "s03e04Phantasm Ravager".
               03 FILLER PIC X(49) VALUE "s04e01C.H.U.D".
               03 FILLER PIC X(49) VALUE "s04e02Castle Freak".
               03 FILLER PIC X(49) VALUE "s04e03Q: The Winged Serpent".
               03 FILLER PIC X(49) VALUE "s04e04Society".
               03 FILLER PIC X(49) VALUE "s04e05Deathgasm".
               03 FILLER PIC X(49) VALUE "s04e06The Changeling".
               03 FILLER PIC X(49) VALUE "s04e07Madman".
               03 FILLER PIC X(49) VALUE 
                       "s04e08Wolfguy - Enranged Lycanthrope".
               03 FILLER PIC X(49) VALUE "s04e09Demon Wind".
               03 FILLER PIC X(49) VALUE "s04e10House of the Devil".
               03 FILLER PIC X(49) VALUE "s04e11WolfCop".
               03 FILLER PIC X(49) VALUE 
                       "s04e12Henry Portrait of a Serial Killer".        
               03 FILLER PIC X(49) VALUE "s04e13Contamination".
               03 FILLER PIC X(49) VALUE 
                   "s04e14A Girl Walks Home Along at Night".
               03 FILLER PIC X(49) VALUE "s04e15The Stuff".
               03 FILLER PIC X(49) VALUE "s04e16Street Trash".
               03 FILLER PIC X(49) VALUE "s04e17Blood Harvest".
               03 FILLER PIC X(49) VALUE 
                       "s04e18Hello Mary Lou: Prom Night II".
               03 FILLER PIC X(49) VALUE "s05e01Halloween".        
               03 FILLER PIC X(49)
                 VALUE "s05e02Halloween 4- The Return of Michael Myers".
               03 FILLER PIC X(49) VALUE 
                   "s05e03Halloween 5- The Curse of Michael Myers".
               03 FILLER PIC X(49) VALUE "s06e01Black Christmas".
               03 FILLER PIC X(49) VALUE "s06e02Jack Frost".
               03 FILLER PIC X(49) VALUE 
                   "s06e03Silent Night Deadly Night Part 2".      
               03 FILLER PIC X(49) VALUE "s07e01Chopping Mall".
               03 FILLER PIC X(49) VALUE "s07e02Bloodsucking Freaks".
               03 FILLER PIC X(49) VALUE "s07e03Maniac".
               03 FILLER PIC X(49) VALUE "s07e04Heathers".
               03 FILLER PIC X(49) VALUE "s07e05Brain Damage".
               03 FILLER PIC X(49) VALUE "s07e06Deep Red".
               03 FILLER PIC X(49) VALUE "s07e07Troma's War".
               03 FILLER PIC X(49) VALUE "s07e08One Cut of the Dead".
               03 FILLER PIC X(49) VALUE "s07e09The Exorcist III".
               03 FILLER PIC X(49) VALUE "s07e10Deadbeat at Dawn".
               03 FILLER PIC X(49) VALUE "s07e11Dead Heat".
               03 FILLER PIC X(49) VALUE "s07e12Cannibal Holocaust".
               03 FILLER PIC X(49) VALUE "s07e13Mayhen".
               03 FILLER PIC X(49) VALUE "s07e14Tetsuo: The Iron Man".
               03 FILLER PIC X(49) VALUE "s07e15Scare Package".
               03 FILLER PIC X(49) VALUE "s07e16Hogzilla".
               03 FILLER PIC X(49) VALUE 
                       "s07e17Hellbound: Hellraiser II".
               03 FILLER PIC X(49) VALUE "s07e18Hell Comes to FrogTown".
               03 FILLER PIC X(49) VALUE 
                           "s07e19Slumber Party Massacre II".
               03 FILLER PIC X(49) VALUE "s07e20Victor Crowley".                    
               03 FILLER PIC X(49) VALUE "s08e01Haunt".
               03 FILLER PIC X(49) VALUE "s08e02Hack-O-Lantern".
               03 FILLER PIC X(49) VALUE "s09e01Deadly Games".
               03 FILLER PIC X(49) VALUE "s09e02Christmas Evil".
               03 FILLER PIC X(49) VALUE "s10e01Tammy and the T-Rex".
               03 FILLER PIC X(49) VALUE "s10e02The Love Witch".
               03 FILLER PIC X(49) VALUE "s11e01Mother's Day".
               03 FILLER PIC X(49) VALUE "s11e02House by the Cemetary".
               03 FILLER PIC X(49) VALUE "s11e03Audition".
               03 FILLER PIC X(49) VALUE "s11e04Class of 1984".
               03 FILLER PIC X(49) VALUE "s11e05Bride of Reanimator".
               03 FILLER PIC X(49) VALUE "s11e06Next of Kin".
               03 FILLER PIC X(49) VALUE "s11e07Ginger Snaps".
               03 FILLER PIC X(49) VALUE "s11e08Fried Barry".
               03 FILLER PIC X(49) VALUE "s11e09Mandy".
               03 FILLER PIC X(49) VALUE "s11e10Dead and Buried".
               03 FILLER PIC X(49) VALUE "s11e11Maniac Cop".
               03 FILLER PIC X(49) VALUE "s11e12Maniac Cop 2".
               03 FILLER PIC X(49) VALUE "s11e13Train to Busan".
               03 FILLER PIC X(49) VALUE "s11e14Spookies".
               03 FILLER PIC X(49) VALUE "s11e15SledgeHammer".
               03 FILLER PIC X(49) VALUE "s11e16Things".
               03 FILLER PIC X(49) VALUE "s11e17EvilSpeak".
               03 FILLER PIC X(49) VALUE "s11e18Day of the Beast".
               03 FILLER PIC X(49) VALUE "s11e19Little Shop of Horrors".
               03 FILLER PIC X(49) VALUE 
                           "s11e20Humanoids from the Deep".
               02 JbobNames REDEFINES EpisodeNames.
                03 JoeBob                  OCCURS 91 TIMES
                                           ASCENDING KEY IS JSeep
                                           INDEXED BY JIdx.
                   04 JSeep                PIC X(6).
                   04 JName                PIC X(43).
           01 PrnDice.
               02 PrnD6                PIC 9.
           01 Triggers                 PIC X(3).
           01 PrintRandom.
               02 PrnRand                   PIC X(13) VALUE 
               "Now Playing: ".
               02 FILLER                    PIC XX VALUE '`"'.
               02 PrnRandMovie              PIC X(45).
               02 FILLER                    PIC X VALUE "`".
           01 PrintComment.
               02 FILLER               PIC X VALUE "`".
               02 PrnComment                 PIC X(62).
               02 FILLER               PIC X VALUE "`".
           01 Multiplier               PIC 99 Value 0 Occurs 12 TIMES.
           01 PrnMovieName.
               02 Filler               PIC X(13) VALUE "Now Playing: ".
               02 FILLER               PIC X VALUE '`'.
               02 PrnTitle               PIC X(50).
               02 FILLER               PIC X VALUE '`'.    
           01 Counters.
               02 Idx                      PIC 999.
               02 Tidx                     PIC 999.
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
               02 Command             PIC X(4).
               02 ShowSeason           PIC X(3).
               02 FullSeason           PIC X(9).
               02 ShowExtension        PIC X(3).
           01 DiceUnStr.    
               02 DMultiplier          PIC 999.
               02 D                    PIC X.
               02 RollNum              PIC 999.
           01 Dice.
               02 DiceR                    PIC 9(3).
               02 TotalRoll                PIC 9(4)    VALUE ZERO.
           01 RandomMods.
               02 RollMod                  PIC 999 VALUE 0.
               02 MinNum                   PIC 9 VALUE 1.
               02 MovieMod                 PIC 9(3) VALUE 322.
               02 MovieRand                PIC 9(3).
           01 RNumber                      PIC 99.
           01 StringStuff.    
               02 CharCount                    PIC 99.
               02 StrgSize                     PIC 99.
               02 JStrgSize                    PIC 99. 
               02 UnstrPtr                     PIC 99.
               02 MoviePath                PIC X(40).
               02 MovieName                PIC X(35).
           01 CurrentDate.
               02 FILLER                      PIC X(12).
               02 Seed                        PIC 9999.
           01 PrnData.
               02 PrnRoll                  PIC ZZZ9.
           01 Holds.
               02 HoldDelim                    PIC X(2).  
               02 HoldShowTitle            PIC X(50).
               02 SeEp                     PIC X(6).
               02 SeasonNum                PIC 99. 
               02 PrnJName                 PIC X(43).
               02 HoldJname                PIC X(30).
               02 HoldOut                  PIC X(150).
           01 Whatcheck.
               02 FILLER               PIC X(13) VALUE "Now Playing: ".
               02 Playing              PIC X(52).    
           01 TallyMovie                   PIC X(80).  
           PROCEDURE DIVISION.
           OPEN INPUT ReadFile
           MOVE FUNCTION CURRENT-DATE TO CurrentDate
           COMPUTE DiceR = FUNCTION RANDOM(Seed)
           DISPLAY "Main Seed: " Seed
           READ ReadFile
           DISPLAY readrec(1 : 4)
           EVALUATE FUNCTION UPPER-CASE(ReadRec(1 : 4))
           WHEN "RAND"
                   PERFORM SelectRandomMovie
           WHEN "SUGG"
               PERFORM SuggestMovie        
           WHEN "ROLL"
                   PERFORM RollDice
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
           MOVE FullMovie TO TallyMovie
           CALL 'MovieTally' USING TallyMovie
           END-CALL
           CLOSE ReadFile
           STOP RUN.
           RollDice.
      *>   Pull apart the text after roll command  to create the amount
      *>     of times the dice will be rolled and the size of the rolled
      *>     dice.  
           UNSTRING FUNCTION UPPER-CASE(Instring) DELIMITED BY 'D' INTO
               DMultiplier, RollNum
      *>         DISPLAY DMultiplier ' ' RollNum
           MOVE RollNum TO RollMod
           PERFORM DMultiplier TIMES
           COMPUTE DiceR = FUNCTION RANDOM * (RollMod - MinNum + 1) +
               MinNum
           ADD 1 TO Seed    
           Add DiceR TO TotalRoll
               END-PERFORM
           MOVE TotalRoll TO PrnRoll
           WRITE OutString FROM PrnRoll.
           
           SelectMovie.
           PERFORM GetMovieName
           Call "SYSTEM" USING MoviePathRec
           END-Call
           DISPLAY FullMovie
           MOVE FullMovie TO PrnTitle
           DISPLAY Prntitle
           OPEN OUTPUT WriteFile
           WRITE Outstring FROM PrnMovieName
           CLOSE WriteFile.

           GetMovieName.
           DISPLAY "Instring: " Instring
           INSPECT FUNCTION REVERSE(InString) TALLYING CharCount
                               FOR LEADING SPACES
                               
           COMPUTE StrgSize = (70 - CharCount)
           
           UNSTRING Instring
               INTO MoviePath
           DISPLAY "Movie Path: " Moviepath '!'    
           STRING 
           MoviePath(1 :StrgSize)
           INTO FullMovie
           END-STRING
           DISPLAY "FullMovie: " FullMovie  
           DISPLAY MoviePathRec.
           
           SelectShow.
               DISPLAY "Instring: " Instring
      *        Seperating show name from episode request
           INSPECT FUNCTION REVERSE(InString) TALLYING CharCount
                               FOR LEADING SPACES                 
           COMPUTE StrgSize = (70 - CharCount)
           DISPLAY "ShowName: " InString (1 :Strgsize - 7) '!'
               MOVE InString (1 : Strgsize - 7) TO HoldShowTitle.
           MOVE Instring(Strgsize - 5: 6) TO SeEp 
               DISPLAY "Seep: " SeEp         
           UNSTRING SeEp DELIMITED BY 'e'
               Into ShowSeason
           MOVE ShowSeason(2 : ) TO SeasonNum
      *    MOVE Instring (StrgSize - 2 :3) TO ShowExtension
      *    DISPLAY "Show ext: " ShowExtension
           SET Sidx TO 1
           SEARCH Season
                   WHEN Sidx = Seasonnum
                       Move Season(Sidx) TO FullSeason
           END-SEARCH
           MOVE 0 TO CharCount  
           INSPECT FUNCTION REVERSE(HoldShowTitle) TALLYING CharCount
                                           FOR LEADING SPACES                              
           COMPUTE StrgSize = (50 - CharCount)                                             
           STRING HoldShowTitle(1 :StrgSize), "\", FullSeason, "\",
                                   HoldShowTitle(1 : StrgSize), " - "
                                   , SeEp,'.mkv"'
               INTO FULLSHOW
           DISPLAY "Full Show Path: " ShowPathRec
           CALL "SYSTEM" USING ShowPathRec
           END-CALL
           OPEN OUTPUT WriteFile
           MOVE FullShow TO PrnTitle
           WRITE OutString FROM PrnMovieName
           CLOSE WriteFile.
           
           GetJoeBob.
               DISPLAY "Instring: " Instring
      *        Seperating show name from episode request
           INSPECT FUNCTION REVERSE(InString) TALLYING CharCount
                               FOR LEADING SPACES                 
           COMPUTE StrgSize = (70 - CharCount)
           DISPLAY "ShowName: " InString (1:Strgsize) '!'
               MOVE InString (1:Strgsize) TO SeEp
           DISPLAY "Seep " Seep 
           UNSTRING SeEp DELIMITED BY 'e'
               INTO ShowSeason
           MOVE ShowSeason(2 : ) TO SeasonNum
           DISPLAY "Season Num: " SeasonNum
           SET Sidx TO 1
           SEARCH Season
                   WHEN Sidx = SeasonNum
                       Move Season(Sidx) TO FullSeason
           END-SEARCH
           DISPLAY Seep, JSeep(1)
           SEARCH ALL JoeBob
               WHEN JSeep(Jidx) = Seep
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
           DISPLAY "Full Show Path: " JoebobPathRec.
           CALL "SYSTEM" USING JoebobPathRec
           END-CALL.
           SelectRandomMovie.
           DISPLAY "In Random"
           COMPUTE MovieRand = FUNCTION RANDOM * (MovieMod - 
                               MinNum + 1) + MinNum
           ADD 1 TO Seed
           CALL "CobbotRandomMovie" USING  Seed, MovieRand, FullMovie,
                                           PrnComment                            
           MOVE FullMovie TO PrnRandMovie
           DISPLAY "path rec:" MoviePathRec
          
           CALL "SYSTEM" USING MoviePathRec
           END-CALL
           OPEN OUTPUT WriteFile
           WRITE OutString FROM PrintRandom
           WRITE OutString FROM PrintComment
           CLOSE WriteFile.

           WriteRequest.
           OPEN EXTEND RequestFile
           DISPLAY InString
           WRITE Request FROM Instring
           CLOSE RequestFile.

           SuggestMovie.
           DISPLAY "InSugg"
           COMPUTE MovieRand = FUNCTION RANDOM * (MovieMod - 
                               MinNum + 1) + MinNum
           ADD 1 TO Seed
           CALL "SuggestMovie" USING MovieRand, SuggestionTable
           END-CALL
           OPEN OUTPUT WriteFile
           PERFORM VARYING IDX FROM 1 BY 1 UNTIL Idx > 5
           DISPLAY SuggestionValues(Idx)
           MOVE SMovieName(idx) TO PrnSName
           MOVE SComment(idx) TO PrnScomment
      *    WRITE OutString FROM PrintRandom
      *    WRITE OutString FROM PrintComment
           WRITE OutString FROM PrnSuggestion
           END-PERFORM
           CLOSE WriteFile.

           WhatCommand.
           OPEN INPUT WriteFile
           READ WriteFile
           MOVE Outstring TO HoldOut
           DISPLAY "HOldout:  " Holdout
           MOVE  HoldOut(14 : ) TO Playing
           DISPLAY "What Check: " Whatcheck
           CLOSE WriteFile
           OPEN OUTPUT WriteFile
           WRITE OutSTring FROM WhatCheck
           CLOSE WriteFile.

           