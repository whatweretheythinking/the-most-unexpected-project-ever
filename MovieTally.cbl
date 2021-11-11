           IDENTIFICATION DIVISION.
           PROGRAM-ID. MovieTally.
           ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               Select TallyFile ASSIGN TO "MovieTally.txt"
                   ORGANIZATION IS LINE SEQUENTIAL. 
      *            Maybe change to index file
               
           DATA DIVISION.

           FILE SECTION.
           FD TallyFile.
               01 TallyTable.
                   88 TEof         VALUE HIGH-VALUES.                         
                   02 TallyCount PIC 9(3).             
                   02 MovieName PIC X(50).

           WORKING-STORAGE SECTION.
           01 TempTable.
               02 TempValues       OCCURS 322 TIMES
                                   ASCENDING KEY TempName
                                   INDEXED BY Tidx.                 
                   03 TempTally        PIC 9(3).
                   03 TempName         PIC X(50).
           01 Idx                  PIC 999.   
           01 CharCount            PIC 99. 
           01 StrgSize                PIC 99.
           01 CapName              PIC X(50).
           LINKAGE SECTION.
           01 TallyMovie              PIC X(50).

           PROCEDURE DIVISION USING TallyMovie.
           INSPECT FUNCTION REVERSE(TallyMovie) TALLYING CharCount
                               FOR LEADING SPACES
                               
           COMPUTE StrgSize = (50 - CharCount)
           OPEN INPUT TallyFile
           READ TallyFile
               AT END SET TEoF TO TRUE
           END-READ
           PERFORM VARYING IDX FROM 1 BY 1 UNTIL IDX > 322
           MOVE FUNCTION UPPER-CASE (MovieName) TO TempName(idx)
           MOVE TallyCount TO TempTally(idx)
           READ TallyFile
               AT END SET TEoF TO TRUE
           END-READ
           END-PERFORM.
           CLOSE TallyFile
           MOVE FUNCTION UPPER-CASE (TallyMovie(1 : StrgSize))
                                   TO CapName
           SEARCH ALL TEMPVALUES
               WHEN CapName(1 : StrgSize) = TempName(tidx)
               DISPLAY "Hit"
               ADD 1 TO TempTally(Tidx)
           END-SEARCH
           OPEN OUTPUT TallyFile
           PERFORM VARYING IDX FROM 1 BY 1 UNTIL Idx > 322
           WRITE TallyTable FROM TempValues(idx)
           END-PERFORM
           CLOSE TallyFile.
           END PROGRAM 'MovieTally'.
