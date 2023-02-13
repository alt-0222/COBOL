//***********************************************************   
//* For demo purposes
//*
//***********************************************************
//COBOLRUN  JOB REGION=0M,MSGCLASS=1,NOTIFY=&SYSUID
//***********************************************************
//CLEAN EXEC PGM=IEFBR14
//OLDDS DD DSN=IBMUSER.COBOL.EXEC,DISP=(SHR,DELETE), 
//          VOL=SER=A4DBAR,UNIT=3390
//***********************************************************      
//BIND      EXEC PGM=IEWBR14
//SYSLIB    DD DSN=CEE.SCEELKED, 
//SYSPRINT  DD SYSOUT=A
//SYSLIN    DD DSN=IBMUSER.COBOL.OBJ,DISP=SHR           
//SYSMOD    DD DSN=IBMUSER.COBOL.EXEC(SORTMERG), 
//              DISP=(NEW,KEEP),SPACE=(CYL,(10,10,1)),
//              VOL=SER=A4DBAR,UNIT=3390,DSNTYPE=LIBRARY