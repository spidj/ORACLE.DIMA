create or replace PACKAGE      PACK_STEK AS
/******************************************************************************
   NAME:       PACK_STEK
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        30.08.2012      spidj       1. Created this package.
******************************************************************************/

  TYPE T_CURSOR IS REF CURSOR; 
  
  --  PROCEDURE EXEC_CURSOR (IO_CURSOR OUT T_CURSOR);
    PROCEDURE EXEC_CURSOR_AUTOVIP (IO_CURSOR OUT T_CURSOR);
    PROCEDURE INS_AUTOVIP (FILENAME VARCHAR2,RULE VARCHAR2,TYPES NUMBER,RECEIVED DATE,FILES BLOB,FSIZE NUMBER);
    PROCEDURE STEK_OUT_SEND(ROWIDS ROWID);
    PROCEDURE EXEC_CURSOR_AUTOVIP_OUT (IO_CURSOR OUT T_CURSOR);            
   
    
    
        
--   PROCEDURE SET_RULE(P_ID VARCHAR2,P_TYPES VARCHAR2,P_NAME VARCHAR2,P_MASK VARCHAR2,P_DIRIN VARCHAR2,P_DIROUT VARCHAR2,P_SUBDIR VARCHAR2,P_SAVESTRUCTURE VARCHAR2,P_FILERENAME VARCHAR2);
--   PROCEDURE CH_RULE(P_ID VARCHAR2);      
      
END PACK_STEK;