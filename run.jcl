//******************************************************************
//* For demo purposes
//* 
//******************************************************************
//COBOLGO  JOB REGION=0M,MSGCLASS=1,NOTIFY=&SYSUID           
//***********************************************************
//JPARSE    EXEC PGM=SORTMERG                                    
//STEPLIB   DD DSNAME=IBMUSER.COBOL.EXEC(SORTMERG),DISP=SHR  
//FEELEC    DD DSN=IBMUSER.SORTMERG.INPUT(INPUT1),DISP=SHR    
//FEHYB     DD DSN=IBMUSER.SORTMERG.INPUT(INPUT2),DISP=SHR    
//FESUV     DD DSN=IBMUSER.SORTMERG.INPUT(INPUT3),DISP=SHR    
//FELSTMRG  DD DSN=&&TMP,DISP=(,PASS),UNIT=SYSALLDA,         
//              SPACE=(CYL,10)                                   
//FESORTED  DD DSN=IBMUSER.SORTMERG(OUTPUT),DISP=SHR   