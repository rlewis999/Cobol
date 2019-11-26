       IDENTIFICATION DIVISION.
       
       PROGRAM-ID.	DIVEX.
      *----------------------------------------- 
       ENVIRONMENT DIVISION.
       
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.	IBM-370.
       OBJECT-COMPUTER.	IBM-370.
       
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
	       SELECT INFILE	ASSIGN  DATIN. 
           SELECT OUTFILE	ASSIGN  DATOUT. 
      *-----------------------------------------
       DATA DIVISION.
       
       FILE SECTION.
       FD INFILE.
       01	INFILE-REC	PIC X(80).
       FD OUTFILE.
       01	OUTFILE-REC	PIC X(132).
       
       WORKING-STORAGE SECTION.
       01	WORK-FIELD	PIC X(20)	Value Spaces.
       LINKAGE SECTION.
       01	LS-FIELD	PIC X(30).
      *-----------------------------------------
       PROCEDURE DIVISION USING LS-FIELD.
       
       SEC-ONE SECTION.
       PARA-ONE.  
	      DISPLAY	'Hello World'.
          DISPLAY   'Press <CR> to terminate'
          STOP ' '
	      STOP RUN.
      *-----------------------------------------
