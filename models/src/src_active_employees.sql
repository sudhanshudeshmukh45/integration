with raw_active as (
    select * 
    from {{source('SUDHANSHU','ACTIVE_EMPLOYEES')}} 
)
--,ROW_NUMBER() OVER (PARTITION BY ftv_id ORDER BY Assignment_Current_Effective_Date DESC) AS RowNum
--where PERSON_TYPE = 'Employee'
select 
    FTV_ID,
    PERSON_DISPLAY_NAME,
    EMAIL_ADDRESS,
    PERSON_TYPE,
    WORKER_TYPE,	
    DATE_OF_BIRTH,	
    AGE,	
    ASSIGNMENT_STATUS,	
    ASSIGNMENT_CURRENT_EFFECTIVE_DATE,	
    ASSIGNMENT_CURRENT_CHG_ACTION,	
    ASSIGNMENT_CURRENT_CHG_REASON,	
    ASSIGNMENT_EMPLOYMENT_CATEGORY,	
    SEGMENT,	
    OPCO,	
    SUB_OPCO,	
    LEGAL_ENTITY_NAME,	
    BUSINESS_UNIT_NAME,	
    DEPARTMENT_NAME,	
    ASSIGNMENT_NAME,	
    JOB_TITLE,	
    JOB_FUNCTION,	
    JOB_FAMILY,	
    NVL(EEO_CATEGORY,'NA') AS EEO_CATEGORY,	
    CAREER_BAND,	
    CAREER_LEVEL,	
    GRADE_NAME,	
    HOURLY_SALARIED,	
    FTE,	
    ORIGINAL_HIRE_DATE,	
    LATEST_HIRE_DATE,	
    ADJUSTED_SERVICE_DATE,	
    LENGTH_OF_SERVICE,	
    L1_LEADER,	
    MANAGER_FTV_ID,	
    --NVL(WORK_REGION,'NA') AS WORK_REGION,	
    WORK_REGION,
    WORK_COUNTRY,	
    NVL(WORK_STATE,'NA') AS WORK_STATE,
    NVL(WORK_CITY,'NA') AS WORK_CITY,	
    WORK_LOCATION,	
    HEADCOUNT,	
    SALARY,	
    CURRENCY_CODE,	
    NVL(PERFORMANCE_RATING,'NA') AS PERFORMANCE_RATING,	
    NVL(POTENTIAL_RATING,'NA') AS POTENTIAL_RATING
from 
raw_active


