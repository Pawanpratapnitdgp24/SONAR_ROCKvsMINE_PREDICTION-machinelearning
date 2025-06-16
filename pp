select 				
distinct claim_no  from		
stage_misreg.STAGE_SRM_PREMIUM_LOSS
where claim_no  in (			
'4248740','4248741','4248743','4248744',	
'4248745','4248746','4248747','4248748','4248749',
'4248750','4248753', --15 PC Claims	
'4248755','4248756','4248757','4248758','4248759','4248760'); --YHT Claims);
				
				
				


				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
select  SRM_OUTGOING_TRANSACTION_ID,POLICY_NO,GDW_RDM_ANNUAL_STATEMENT_LINE_CD,
GDW_LINE_OF_BUSINESS_CD,DIVISION_NO,SECTION_CD, PROFIT_UNIT_CD 
 from stage_misreg.STAGE_SRM_PREMIUM_LOSS
where policy_no in (			
select policy_no from misreg.tpolicy where source_system_sk in (20,21) and POLICY_TYPE_CD='PC'
)				
and policy_no in 			
('0041000566','0041000562','0041000548','0041000622','0041000648','0041000646','0041000642',
'0041000643','0041000147','0041000148','0041000149','0041000151','0041000153','0041000154','0041000156',
'0041000158','0041000159','0041000160','0041000161','0041000162','0041000163','0041000164','0041000165','0041000166','0041000187'
);				
				


				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
select distinct SYSTEM_ID,COVERAGE_CODE,SRM_OUTGOING_TRANSACTION_ID from stage_misreg.STAGE_SRM_PREMIUM_LOSS
				
where policy_no in (			
select policy_no from misreg.tpolicy where source_system_sk in (20,21) and POLICY_TYPE_CD='PC'
)				
and policy_no in 			
('0041000566','0041000562','0041000548','0041000622','0041000648','0041000646','0041000642',
'0041000643','0041000147','0041000148','0041000149','0041000151','0041000153','0041000154','0041000156',
'0041000158','0041000159','0041000160','0041000161','0041000162','0041000163','0041000164','0041000165','0041000166','0041000187'
);				
				
				
				


				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
Select a.premium_am , a.effective_dt_sk,b.actual_dt
from misreg.ttransaction a ,misreg.tdate b	
where policy_sk in (select policy_sk from misreg.tpolicy where policy_no in 
('0041000566','0041000562','0041000548','0041000622','0041000648','0041000646','0041000642',
'0041000643','0041000147','0041000148','0041000149','0041000151','0041000153','0041000154','0041000156',
'0041000158','0041000159','0041000160','0041000161','0041000162','0041000163','0041000164','0041000165','0041000166','0041000187'))
and premium_am <>0		
and a.effective_dt_sk=b.date_sk;	
				
				
				


				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
SELECT FISERV_PREMIUM_RECORD Field001
FROM stage_misreg.stage_cip_premium_feed_details
WHERE param_num = '202505'		
    AND (SUBSTR(FISERV_PREMIUM_RECORD, 31, 10),to_date(SUBSTR(FISERV_PREMIUM_RECORD, 63, 10),'yyyy-mm-dd')) IN (
        SELECT POLICY_NO,Inception_dt	
        FROM  misreg.TPOLICY		
        WHERE source_system_nm IN ('DC-NA','DC','Instanda Admitted','Instanda Non-Admitted') 
           );				
				
				
				


				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
SELECT FISERV_PREMIUM_RECORD Field001
FROM stage_misreg.stage_cip_premium_feed_details
WHERE param_num = '202505'		
    AND (SUBSTR(FISERV_PREMIUM_RECORD, 31, 10),to_date(SUBSTR(FISERV_PREMIUM_RECORD, 63, 10),'yyyy-mm-dd')) IN (
        SELECT POLICY_NO,Inception_dt	
        FROM  misreg.TPOLICY		
        WHERE source_system_nm IN ('DC-NA','DC','Instanda Admitted','Instanda Non-Admitted') 
        and policy_no in 			
('0041000566','0041000562','0041000548','0041000622','0041000648','0041000646','0041000642',
'0041000643','0041000147','0041000148','0041000149','0041000151','0041000153','0041000154','0041000156',
'0041000158','0041000159','0041000160','0041000161','0041000162','0041000163','0041000164','0041000165','0041000166','0041000187'));
				
				
				
				
				


				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
select  SRM_OUTGOING_TRANSACTION_ID,POLICY_NO,claim_no,GDW_RDM_ANNUAL_STATEMENT_LINE_CD,
GDW_LINE_OF_BUSINESS_CD,DIVISION_NO,SECTION_CD, PROFIT_UNIT_CD
from stage_misreg.STAGE_SRM_PREMIUM_LOSS
where claim_no in (			
'4248740','4248741','4248743','4248744',	
'4248745','4248746','4248747','4248748','4248749',
'4248750','4248753', --15 PC Claims	
'4248755','4248756','4248757','4248758','4248759','4248760')
;				
				
				
				
				


				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
select *				
from stage_misreg.STAGE_SRM_PREMIUM_LOSS
where claim_no in (			
'4248740','4248741','4248743','4248744',	
'4248745','4248746','4248747','4248748','4248749',
'4248750','4248753', --15 PC Claims	
'4248755','4248756','4248757','4248758','4248759','4248760')
				
and (POLICY_EXP_DT<POLICY_EFF_DT or TRAN_EXP_DT<TRAN_EFF_DT or COVERAGE_EXP_DT<COVERAGE_EFF_DT)	;			
				
				
				


				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
select *				
from stage_misreg.STAGE_SRM_PREMIUM_LOSS
				
where policy_no in 			
('0041000147','0041000148','0041000166','0041000147','0041000148','0041000147','0041000148','0041000147',
'0041000148','0041000147','0041000187','0041000548','0041000562',
'0041000566','0041000706','0099831495','0099831513','0099831521','0099831525','0099831592','0099831495'
)				
and (POLICY_EXP_DT<POLICY_EFF_DT or TRAN_EXP_DT<TRAN_EFF_DT or COVERAGE_EXP_DT<COVERAGE_EFF_DT)	;		
				
				
				
				
				
				


				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
select ACCOUNTING_DT, TRAN_EFF_DT, POLICY_NO, ACCOUNTING_MONTH, PREMIUM_LOSS_IND, sum(TRAN_AM)
from stage_misreg.STAGE_SRM_PREMIUM_LOSS
				
where policy_no in 			
('0041000147','0041000148','0041000166','0041000147','0041000148','0041000147','0041000148','0041000147',
'0041000148','0041000147','0041000187','0041000548','0041000562',
'0041000566','0041000706','0099831495','0099831513','0099831521','0099831525','0099831592','0099831495'
)				
group by ACCOUNTING_DT, TRAN_EFF_DT, POLICY_NO, ACCOUNTING_MONTH, PREMIUM_LOSS_IND;
				
 	 	 	 	 
				
Validating for trans_am & premium_am for policy_no
