      ******************************************************************
      * Adopted from IBM Developer for z/OS
      *
      * Reads input from three text files, merges their contents, 
      * and writes an output containing one sorted list
      *
      * For demostration only
      ******************************************************************
      *-----------------------
       IDENTIFICATION DIVISION.
      *-----------------------
       PROGRAM-ID.    CARSORT
       AUTHOR.        Eva W. Lee
      *--------------------
       ENVIRONMENT DIVISION.
      *--------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CARLIST-E ASSIGN TO AUTOELE.
           SELECT CARLIST-H ASSIGN TO AUTOHYB.
           SELECT CARLIST-S ASSIGN TO AUTOSUV.
           SELECT CARLIST-WORK ASSIGN TO WRK.
           SELECT CARLIST-MERGE ASSIGN TO LSTMRG.
           SELECT CARLIST-SORTED ASSIGN TO SORTED.
      *-------------
       DATA DIVISION.
      *-------------
       FILE SECTION.
       SD  CARLIST-WORK.
       01  CAR-REC.
           05 CAR-NAME-W      PIC X(50).
           05 CAR-PRICE-W     PIC $$,$$$,$$9.99.
           05 FILLER PIC X(17).
      *
       FD  CARLIST-MERGE RECORDING MODE F.
       01 CAR-MERG.
           05 CAR-NAME-M      PIC X(50).
           05 CAR-PRICE-M     PIC $$,$$$,$$9.99.
           05 FILLER PIC X(17).

       FD  CARLIST-SORTED RECORDING MODE F.
       01  PRINT-REC.
           05  CAR-NAME-S      PIC X(50).
           05  CAR-PRICE-S     PIC $$,$$$,$$9.99.
           05  FILLER PIC X(17).
      *
       FD  CARLIST-E RECORDING MODE F.
       01  ELEC-FIELDS.
           05  CAR-NAME-B      PIC X(50).
           05  CAR-PRICE-B     PIC $$,$$$,$$9.99.
           05  FILLER PIC X(17).
      *
       FD  CARLIST-H RECORDING MODE F.
       01  HYB-FIELDS.
           05  CAR-NAME-M       PIC X(50).
           05  CAR-PRICE-M     PIC $$,$$$,$$9.99.
           05  FILLER PIC X(17).
      *
       FD  CARLIST-S RECORDING MODE F.
       01  SUV-FIELDS.
           05  CAR-NAME-I       PIC X(50).
           05  CAR-PRICE-I     PIC $$,$$$,$$9.99.
           05  FILLER PIC X(17).
      *
       
      *------------------
       PROCEDURE DIVISION.
      *------------------
       PROCESS-RECORDS.
           DISPLAY "MERGING FILES"
           MERGE CARLIST-WORK ON ASCENDING KEY CAR-NAME-W IN CAR-REC
           USING CARLIST-E, CARLIST-H, CARLIST-S GIVING CARLIST-MERGE

           DISPLAY "SORTING RECORDS".
           SORT CARLIST-WORK ON ASCENDING KEY CAR-PRICE-W IN CAR-REC
           USING CARLIST-MERGE GIVING CARLIST-SORTED.

       CLOSE-STOP.
           DISPLAY "STOPPING PROGRAM".
           STOP RUN.