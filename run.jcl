//******************************************************************
//* For demo purposes
//* 
//******************************************************************
//COBOLGO  JOB REGION=0M,MSGCLASS=1,NOTIFY=&SYSUID           
//***********************************************************
//JPARSE    EXEC PGM=SORTMERG                                    
//STEPLIB   DD DSNAME=IBMUSER.COBOL.EXEC(SORTMERG),DISP=SHR  
//AUTOELE   DD DSN=IBMUSER.SORTMERG.INPUT(INPUT1),DISP=SHR    
//AUTOHYB   DD DSN=IBMUSER.SORTMERG.INPUT(INPUT2),DISP=SHR    
//AUTOSUV   DD DSN=IBMUSER.SORTMERG.INPUT(INPUT3),DISP=SHR    
//LSTMRG    DD DSN=&&TMP,DISP=(,PASS),UNIT=SYSALLDA,         
//             SPACE=(CYL,10)                                   
//SORTED  DD DSN=IBMUSER.SORTMERG(OUTPUT),DISP=SHR   