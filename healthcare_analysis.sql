-- ============================================================
-- Hospital Utilization & Cost Analysis
-- Tools: SQLite
-- Project: Healthcare Utilization Dashboard
-- ============================================================


-- 1. Preview admission data
SELECT *
FROM admission
LIMIT 10;


-- 2. Total admissions by admission type
SELECT
    admission_type,
    COUNT(*) AS total_admissions
FROM admission
GROUP BY admission_type
ORDER BY total_admissions DESC;


-- 3. Total admissions by department
SELECT
    d.department_name,
    COUNT(*) AS total_admissions
FROM admission AS a
JOIN department AS d
    ON a.department_id = d.department_id
GROUP BY d.department_name
ORDER BY total_admissions DESC;


-- 4. Overall average length of stay
SELECT
    ROUND(
        AVG(
            julianday(discharge_date) - julianday(admission_date)
        ),
        2
    ) AS average_length_of_stay
FROM admission;


-- 5. Average length of stay by department
SELECT
    d.department_name,
    ROUND(
        AVG(
            julianday(a.discharge_date) - julianday(a.admission_date)
        ),
        2
    ) AS average_length_of_stay
FROM admission AS a
JOIN department AS d
    ON a.department_id = d.department_id
GROUP BY d.department_name
ORDER BY average_length_of_stay DESC;


-- 6. Top 10 diseases by hospital admissions
SELECT
    d.disease_name,
    COUNT(*) AS total_admissions
FROM admission AS a
JOIN disease AS d
    ON a.disease_id = d.disease_id
GROUP BY d.disease_name
ORDER BY total_admissions DESC
LIMIT 10;


-- 7. Overall billing KPIs
SELECT
    ROUND(AVG(total_amount), 2) AS average_bill,
    ROUND(SUM(total_amount), 2) AS total_billed
FROM billing;


-- 8. Average and total billing by department
SELECT
    d.department_name,
    ROUND(AVG(b.total_amount), 2) AS average_bill,
    ROUND(SUM(b.total_amount), 2) AS total_billed
FROM billing AS b
JOIN admission AS a
    ON b.admission_id = a.admission_id
JOIN department AS d
    ON a.department_id = d.department_id
GROUP BY d.department_name
ORDER BY total_billed DESC;


-- 9. Admissions and billing by admission type
SELECT
    a.admission_type,
    COUNT(*) AS total_admissions,
    ROUND(AVG(b.total_amount), 2) AS average_bill,
    ROUND(SUM(b.total_amount), 2) AS total_billed
FROM admission AS a
JOIN billing AS b
    ON a.admission_id = b.admission_id
GROUP BY a.admission_type
ORDER BY average_bill DESC;
