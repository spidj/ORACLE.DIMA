create or replace package ATTCH_tapi
is

type ATTCH_tapi_rec is record (
KDATEMU_F  ATTCH.KDATEMU_F%type
,DATE_B_T  ATTCH.DATE_B_T%type
,ID_TF  ATTCH.ID_TF%type
,KDMU_F  ATTCH.KDMU_F%type
,KDMU_T  ATTCH.KDMU_T%type
,DATE_B_F  ATTCH.DATE_B_F%type
,DATE_E_T  ATTCH.DATE_E_T%type
,KDATEMU_T  ATTCH.KDATEMU_T%type
,DATE_E_F  ATTCH.DATE_E_F%type
);
type ATTCH_tapi_tab is table of ATTCH_tapi_rec;

-- insert
procedure ins (
p_KDATEMU_F in ATTCH.KDATEMU_F%type default null 
,p_DATE_B_T in ATTCH.DATE_B_T%type default null 
,p_ID_TF in ATTCH.ID_TF%type
,p_KDMU_F in ATTCH.KDMU_F%type default null 
,p_KDMU_T in ATTCH.KDMU_T%type default null 
,p_DATE_B_F in ATTCH.DATE_B_F%type default null 
,p_DATE_E_T in ATTCH.DATE_E_T%type default null 
,p_KDATEMU_T in ATTCH.KDATEMU_T%type default null 
,p_DATE_E_F in ATTCH.DATE_E_F%type default null 
);
-- update
procedure upd (
p_KDATEMU_F in ATTCH.KDATEMU_F%type default null 
,p_DATE_B_T in ATTCH.DATE_B_T%type default null 
,p_ID_TF in ATTCH.ID_TF%type
,p_KDMU_F in ATTCH.KDMU_F%type default null 
,p_KDMU_T in ATTCH.KDMU_T%type default null 
,p_DATE_B_F in ATTCH.DATE_B_F%type default null 
,p_DATE_E_T in ATTCH.DATE_E_T%type default null 
,p_KDATEMU_T in ATTCH.KDATEMU_T%type default null 
,p_DATE_E_F in ATTCH.DATE_E_F%type default null 
);
-- delete
procedure del (
p_ID_TF in ATTCH.ID_TF%type
);
end ATTCH_tapi;

/
create or replace package body ATTCH_tapi
is
-- insert
procedure ins (
p_KDATEMU_F in ATTCH.KDATEMU_F%type default null 
,p_DATE_B_T in ATTCH.DATE_B_T%type default null 
,p_ID_TF in ATTCH.ID_TF%type
,p_KDMU_F in ATTCH.KDMU_F%type default null 
,p_KDMU_T in ATTCH.KDMU_T%type default null 
,p_DATE_B_F in ATTCH.DATE_B_F%type default null 
,p_DATE_E_T in ATTCH.DATE_E_T%type default null 
,p_KDATEMU_T in ATTCH.KDATEMU_T%type default null 
,p_DATE_E_F in ATTCH.DATE_E_F%type default null 
) is
begin
insert into ATTCH(
KDATEMU_F
,DATE_B_T
,ID_TF
,KDMU_F
,KDMU_T
,DATE_B_F
,DATE_E_T
,KDATEMU_T
,DATE_E_F
) values (
p_KDATEMU_F
,p_DATE_B_T
,p_ID_TF
,p_KDMU_F
,p_KDMU_T
,p_DATE_B_F
,p_DATE_E_T
,p_KDATEMU_T
,p_DATE_E_F
);end;
-- update
procedure upd (
p_KDATEMU_F in ATTCH.KDATEMU_F%type default null 
,p_DATE_B_T in ATTCH.DATE_B_T%type default null 
,p_ID_TF in ATTCH.ID_TF%type
,p_KDMU_F in ATTCH.KDMU_F%type default null 
,p_KDMU_T in ATTCH.KDMU_T%type default null 
,p_DATE_B_F in ATTCH.DATE_B_F%type default null 
,p_DATE_E_T in ATTCH.DATE_E_T%type default null 
,p_KDATEMU_T in ATTCH.KDATEMU_T%type default null 
,p_DATE_E_F in ATTCH.DATE_E_F%type default null 
) is
begin
update ATTCH set
KDATEMU_F = p_KDATEMU_F
,DATE_B_T = p_DATE_B_T
,KDMU_F = p_KDMU_F
,KDMU_T = p_KDMU_T
,DATE_B_F = p_DATE_B_F
,DATE_E_T = p_DATE_E_T
,KDATEMU_T = p_KDATEMU_T
,DATE_E_F = p_DATE_E_F
where ID_TF = p_ID_TF;
end;
-- del
procedure del (
p_ID_TF in ATTCH.ID_TF%type
) is
begin
delete from ATTCH
where ID_TF = p_ID_TF;
end;
end ATTCH_tapi;
