-- New Companies
-- Author: Shefali Kolge

SELECT e.company_code, founder, COUNT(DISTINCT e.lead_manager_code), COUNT(DISTINCT e.senior_manager_code), COUNT(DISTINCT e.manager_code), COUNT(DISTINCT e.employee_code)
FROM employee e
JOIN manager m ON e.manager_code = m.manager_code
JOIN senior_manager sm ON e.senior_manager_code = sm.senior_manager_code
JOIN lead_manager lm ON e.lead_manager_code = lm.lead_manager_code
JOIN company c ON e.company_code = c.company_code
GROUP BY e.company_code, founder
ORDER BY e.company_code;