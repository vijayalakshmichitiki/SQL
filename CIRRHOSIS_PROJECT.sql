Create Database IMDB;
select *from cirrhosis;


-- 1.Retrieve all the columns for patients who were censored (Status = 'C').
SELECT * FROM CIRRHOSIS WHERE STATUS="C";

-- 2. Calculate the average age of male patients.
SELECT SEX,AVG(AGE) FROM CIRRHOSIS WHERE SEX="M";

-- 3. Count the number of patients with ascites and hepatomegaly.
SELECT COUNT(ID) FROM CIRRHOSIS  WHERE ASCITES ="Y"  AND HEPATOMEGALY="Y";

-- 4. Find the maximum bilirubin level recorded in the dataset.
SELECT MAX(BILIRUBIN) FROM CIRRHOSIS;

-- 5. Calculate the average cholesterol level for patients who received D-penicillamine.
SELECT DRUG,AVG(CHOLESTEROL) FROM CIRRHOSIS WHERE DRUG="D-PENICILLAMINE";

-- 6. Retrieve the ID and N_Days for patients with edema despite diuretic therapy (Edema = 'Y';).
SELECT ID,N_DAYS FROM CIRRHOSIS WHERE EDEMA='Y';

-- 7. Find the number of male and female patients in each stage of the disease.
SELECT  SEX,COUNT(SEX) FROM CIRRHOSIS  GROUP BY SEX,STAGE;

-- 8. Calculate the average prothrombin time for patients who died (Status = 'D')
SELECT AVG(PROTHROMBIN) FROM CIRRHOSIS WHERE STATUS="D";

-- 9. Retrieve the ID and Status for patients who had spiders (Spiders = 'Y';) and hepatomegaly (Hepatomegaly ='Y').
SELECT ID,STATUS FROM CIRRHOSIS WHERE SPIDERS='Y' AND HEPATOMEGALY="Y";

-- 10. Find the minimum and maximum platelet counts recorded in the dataset.
SELECT MIN(PLATELETS),MAX(PLATELETS) FROM CIRRHOSIS;

-- 11. Retrieve the ID and N_Days for patients who died (Status ='D')
SELECT ID,N_DAYS FROM CIRRHOSIS WHERE STATUS="D";

-- 12. Calculate the maximum and minimum Triglycerides levels in the dataset.
SELECT MAX(TRYGLICERIDES),MIN(TRYGLICERIDES) FROM CIRRHOSIS;

-- 13. Find the average Albumin level for each histologic stage of the disease.
SELECT AVG(ALBUMIN),stage FROM CIRRHOSIS group by stagE;

-- 14. Calculate the total number of male and female patients in the dataset.
SELECT SEX,COUNT(SEX) FROM CIRRHOSIS GROUP BY SEX;

-- 15. Find the average Platelets count for patients with and without ascites.
SELECT AVG(PLATELETS) FROM CIRRHOSIS WHERE ASCITES="Y" OR ASCITES="N";

-- 16. Retrieve the ID, Age, and Status of patients whose age is greater than 50 and have hepatomegaly.
SELECT ID,AGE,STATUS FROM CIRRHOSIS WHERE AGE>50 AND HEPATOMEGALY="Y";

-- 17. Retrieve the ID and Drug of patients who were prescribed a drug containing the term penicillamine; in its name.
SELECT ID,DRUG FROM CIRRHOSIS WHERE DRUG LIKE "%PENICILLAMINE%";

-- 18. Retrieve the ID, Age, and Bilirubin levels of patients, ordered by increasing age.
SELECT ID,AGE,BILIRUBIN FROM CIRRHOSIS ORDER BY AGE ASC;

-- 19. Retrieve the ID, N_Days, and Status of patients, ordered by descending N_Days.
SELECT ID,N_DAYS,STATUS FROM CIRRHOSIS ORDER BY N_DAYS DESC;

-- 20. Retrieve the ID, Age, and Cholesterol levels of patients younger than 50 years old, ordered by increasing Cholesterol levels.
SELECT ID,AGE,CHOLESTEROL FROM CIRRHOSIS WHERE AGE<50 ORDER BY CHOLESTEROL ASC;