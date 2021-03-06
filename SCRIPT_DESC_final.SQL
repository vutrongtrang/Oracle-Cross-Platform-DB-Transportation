-- The following commands will create a new control file and use it
-- to open the database.
-- Data used by Recovery Manager will be lost.
-- The contents of online logs will be lost and all backups will
-- be invalidated. Use this only if online logs are damaged.

-- After mounting the created controlfile, the following SQL
-- statement will place the database in the appropriate
-- protection mode:
--  ALTER DATABASE SET STANDBY DATABASE TO MAXIMIZE PERFORMANCE

STARTUP NOMOUNT PFILE='test.ORA'
CREATE CONTROLFILE REUSE SET DATABASE "XPRENT" RESETLOGS  ARCHIVELOG
    MAXLOGFILES 16
    MAXLOGMEMBERS 3
    MAXDATAFILES 100
    MAXINSTANCES 8
    MAXLOGHISTORY 292
LOGFILE
  GROUP 1 SIZE 50M,
  GROUP 2 SIZE 50M,
  GROUP 3 SIZE 50M
DATAFILE
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-SYSTEM_FNO-1_EKQLBHOQ',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-SYSAUX_FNO-2_ELQLBHPJ',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-UNDOTBS1_FNO-3_ENQLBHQF',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-USERS_FNO-4_GOQLBHTM',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-EXAMPLE_FNO-5_EMQLBHQC',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-UNI_SPACE_FNO-6_ESQLBHR4',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-STR_SPACE_FNO-7_EQQLBHQT',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_APP_DAT_FNO-8_ETQLBHR8',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_APP_NDX_FNO-9_EUQLBHR9',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_CODETABLE_DAT_FNO-10_EVQLBHRA',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_CODETABLE_NDX_FNO-11_F0QLBHRB',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_CONTACT_EVENT_DAT_FNO-12_F1QLBHRD',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_CONTACT_EVENT_NDX_FNO-13_F2QLBHRE',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_CONTACT_HIST_DAT_FNO-14_F3QLBHRF',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_CONTACT_HIST_NDX_FNO-15_F4QLBHRH',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_QRTZ_DAT_FNO-16_F5QLBHRI',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_QRTZ_NDX_FNO-17_F6QLBHRJ',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_SYSTEM_DAT_FNO-18_F7QLBHRL',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_SYSTEM_NDX_FNO-19_F8QLBHRO',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_USER_DAT_FNO-20_F9QLBHRP',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-CORXPR_USER_NDX_FNO-21_FAQLBHRR',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_ACH_STATIC_DAT_FNO-22_FBQLBHRS',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_ACH_STATIC_NDX_FNO-23_FCQLBHRT',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_ACH_TRAN_DAT_FNO-24_FDQLBHRU',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_ACH_TRAN_NDX_FNO-25_FEQLBHS0',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_ACTION_DAT_FNO-26_FFQLBHS1',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_ACTION_NDX_FNO-27_FGQLBHS2',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_APPLICATION_DAT_FNO-28_FHQLBHS4',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_APPLICATION_NDX_FNO-29_FIQLBHS5',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_AUDIT_DAT_FNO-30_FJQLBHS6',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_AUDIT_NDX_FNO-31_FKQLBHS8',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_CASH_BOX_DAT_FNO-32_FLQLBHS9',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_CASH_BOX_NDX_FNO-33_FMQLBHSA',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_CASH_DRAWER_DAT_FNO-34_FNQLBHSB',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_CASH_DRAWER_NDX_FNO-35_FOQLBHSD',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_CUSTOMER_DAT_FNO-36_FPQLBHSE',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_CUSTOMER_NDX_FNO-37_FQQLBHSF',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_EJ_CALC_DAT_FNO-38_FRQLBHSG',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_EJ_CALC_NDX_FNO-39_FSQLBHSI',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_EJ_ERROR_DAT_FNO-40_FTQLBHSJ',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_EJ_ERROR_NDX_FNO-41_FUQLBHSK',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_EJ_ITEM_DAT_FNO-42_FVQLBHSM',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_EJ_ITEM_NDX_FNO-43_G0QLBHSN',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_EJ_JOURNAL_DAT_FNO-44_G1QLBHSO',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_EJ_JOURNAL_NDX_FNO-45_G2QLBHSP',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_EVENT_LOG_DAT_FNO-46_G3QLBHSR',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_EVENT_LOG_NDX_FNO-47_G4QLBHSS',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_FOLDER_DAT_FNO-48_G5QLBHST',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_FOLDER_NDX_FNO-49_G6QLBHSV',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_HOUSEHOLD_DAT_FNO-50_G7QLBHT0',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_HOUSEHOLD_NDX_FNO-51_G8QLBHT1',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_IMPORT_DAT_FNO-52_G9QLBHT2',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_IMPORT_NDX_FNO-53_GAQLBHT4',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_PROSPECT_DAT_FNO-54_GBQLBHT5',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_PROSPECT_NDX_FNO-55_GCQLBHT6',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_REFERRAL_DAT_FNO-56_GDQLBHT8',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_REFERRAL_NDX_FNO-57_GEQLBHT9',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_STATIC_DAT_FNO-58_EPQLBHQQ',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_STATIC_NDX_FNO-59_EOQLBHQM',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_TELLER_DAT_FNO-60_GFQLBHTA',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_TELLER_NDX_FNO-61_ERQLBHR0',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_USER_DAT_FNO-62_GGQLBHTB',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-ESLTPT_USER_NDX_FNO-63_GHQLBHTD',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-SECFRP_AUDIT_DAT_FNO-64_GIQLBHTE',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-SECFRP_AUDIT_NDX_FNO-65_GJQLBHTF',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-SECFRP_PERMISSION_DAT_FNO-66_GKQLBHTH',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-SECFRP_PERMISSION_NDX_FNO-67_GLQLBHTI',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-SECFRP_USER_DAT_FNO-68_GMQLBHTJ',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-SECFRP_USER_NDX_FNO-69_GNQLBHTK',
  '/data/oracle/oradata/xprent/DATA_D-ORCL_I-1421930544_TS-TEST_FNO-70_GPQLBHTN'
CHARACTER SET AL32UTF8
;

-- Set Database Guard and/or Supplemental Logging
ALTER DATABASE ADD SUPPLEMENTAL LOG DATA;
-- Database can now be opened zeroing the online logs.
ALTER DATABASE OPEN RESETLOGS;

-- Commands to add tempfiles to temporary tablespaces.
-- Online tempfiles have complete space information.
-- Other tempfiles may require adjustment.
ALTER TABLESPACE TEMP ADD TEMPFILE '/data/oracle/oradata/xprent/DATA_D-XPRENT_I-1421930544_TS-TEMP_FNO-1_06QLBHOP'
     SIZE 30408704  AUTOEXTEND ON NEXT 655360  MAXSIZE 32767M;
-- End of tempfile additions.
--

set echo off
prompt ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
prompt * Your database has been created successfully!
prompt * There are many things to think about for the new database. Here
prompt * is a checklist to help you stay on track:
prompt * 1. You may want to redefine the location of the directory objects.
prompt * 2. You may want to change the internal database identifier (DBID) 
prompt *    or the global database name for this database. Use the 
prompt *    NEWDBID Utility (nid).
prompt ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SHUTDOWN IMMEDIATE 
STARTUP UPGRADE PFILE='test.ORA'
@../rdbms/admin/utlirp.sql 
SHUTDOWN IMMEDIATE 
STARTUP PFILE='test.ORA'
-- The following step will recompile all PL/SQL modules.
-- It may take serveral hours to complete.
@../rdbms/admin/utlrp.sql 
