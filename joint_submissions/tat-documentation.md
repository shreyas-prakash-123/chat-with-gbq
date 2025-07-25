# Turnaround Time Documentation for Joint Submissions Across All PRS Systems

This documentation covers the turnaround time metrics for submissions across all three PRS systems: eJP (Electronic Journal Publishing), eM (Editorial Manager), and SNAPP (Springer Nature Article Processing Platform).

## Turnaround Time 2.0 dashboard Documentation for joint submissions datasets  

1. Introduction 

Purpose: 
This dashboard offers detailed insights into the TAT 2.0 Looker dashboard, specifically tracking turnaround times across various manuscript stages, from submission to acceptance and publication. It provides an overview of average and median TAT by journal per stage, covering the SNAPP, EM, and EJP systems. This document serves as a user guide to help interpret the dashboard's key functionalities and make effective use of the data. 

Users: 
This dashboard is intended for stakeholders as publishers, editors, analysts, and management teams involved in overseeing the submission, peer review, and publication processes. 

Scope and Use Cases: 
The dashboard covers data related to submission, acceptance, and publication of articles across various peer review systems, including EJP, SNAPP, and EM. Users can track and analyze the TAT taken between key stages of the article pipeline, monitor performance metrics, and identify bottlenecks or areas for improvement. 

(APM) Track and monitor performance trends across TAT stages. 

(APM) Identify bottlenecks in specific stages or workflows. 

(APM/Business Users) Optimize workflow efficiency through targeted improvements.  

(APM/Publishers) Provide actionable insights for resource allocation and process adjustments.  

(Editors, Publishers) Monitor performance metrics for stage-specific TATs.  

(Editors, Publishers) Highlight and address inefficiencies in the editorial process.  

(Editors, Publishers) Use TAT trends for workload planning and resource management.  

(APM) Deliver strategic oversight of pipeline efficiency by stage.  

(All) Track key metrics like Submit to Publish and First Decision Time for reporting.  

(APM) Provide actionable insights for stakeholder presentations. 

Shape 

 

 

 

2. Getting Started 

Data Source: There are multiple data sources for this dashboard - data lineage can be found here: Link 
 
Access and Logging In: The dashboard URL is https://springer.cloud.looker.com/dashboards/2023.  

Please request access permission from the Article Pipeline Management Team (lucka.bibic@springernature.com or mattia.palesa@springernature.com). 

Shape 

3. Dashboard Overview 

Dashboard view components: 

- Monthly TAT Breakdown (Average): This table displays the average number of days articles remain in stages 1 through 8, based on stage end dates, along with key metrics such as S2P, S2A, first decision time, and accept-to-publication. 

 

- Monthly Breakdown of TATs (Median): This table displays the median number of days articles remain in stages 1 through 8, based on stage end dates, along with key metrics such as S2P, S2A, first decision time, and accept-to-publication. 

 

- Average Submit to Accept vs 12 Month Rolling Average 

 

- Journal Level Average TATs: This table displays the average number of days articles remain in stages 1 through 8, based on stage end dates per journal, along with key metrics such as S2P, S2A, first decision time, and accept-to-publication. 

 

- Journal Level Median TATs: This table displays the median number of days articles remain in stages 1 through 8, based on stage end dates per journal, along with key metrics such as S2P, S2A, first decision time, and accept-to-publication. 

Shape 

4. JSD Data Changes 

JSD Data from Nov'23 Onwards for EJP 
JSD now contains the unique EJP identifier, which improves the match rate between publications and submissions. This allows us to pull the submission date from the submissions dataset in JSD (previously, we were pulling it from publications for EJP).  

Source System Distinction for SNAPP and EM Manuscripts 
The distinction for SNAPP and EM manuscripts is made using the source system in the publications data. This allows us to pull the submission date from the peer review system for these articles. We decided not to implement this change mid-year to keep the numbers stable, but it will be applied at the end of the year for better accuracy. 

Previous Query: 
 
SELECT p.journal_id AS journalId, 'submission to publication' AS S, NULL AS stage_start, publication_date,  

(CASE WHEN 'submission to publication' = 'submission to publication' THEN 10 END) AS stage_id, doi AS submission_id,  

s.submission_id AS unique_submission_id, NULL AS revision_number, s.source_system,  

(date_diff(CAST(publication_date AS DATE), CAST(s.submission_date AS DATE), DAY)) AS duration  

FROM `datasn-submissions-55677263.prod_joint_submissions_core.publications` AS p  

INNER JOIN `datasn-submissions-55677263.prod_joint_submissions_core.submissions` AS s  

ON s.submission_id = p.submission_id 

WHERE publication_date IS NOT NULL AND date(publication_date) <= DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY)  

AND (p.source_system = 'SNAPP' OR p.source_system = 'EM'); 

 

Updated Query: 
 
SELECT p.journal_id AS journalId, 'submission to publication' AS S, NULL AS stage_start, publication_date,  

(CASE WHEN 'submission to publication' = 'submission to publication' THEN 10 END) AS stage_id, doi AS submission_id,  

s.submission_id AS unique_submission_id, NULL AS revision_number, s.source_system,  

(date_diff(CAST(publication_date AS DATE), CAST(s.submission_date AS DATE), DAY)) AS duration  

FROM `datasn-submissions-55677263.prod_joint_submissions_core.publications` AS p  

INNER JOIN `datasn-submissions-55677263.prod_joint_submissions_core.submissions` AS s  

ON s.submission_id = p.submission_id 

WHERE publication_date IS NOT NULL AND date(publication_date) <= DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY)  

-- Updated to pull from submissions as of Dec 13th 2023 

 

Acceptance Date Now Pulled from JSD Submissions Data 
Previously, acceptance dates were pulled from publications data, but now the system pulls them from the JSD submissions data. This simplifies the process for all systems, including EJP, SNAPP, and EM, and will be consistent across all peer review systems. 
 

Previous Query: 
 
SELECT p.journal_id AS journalId, 'accept to publication' AS T, NULL AS stage_start, publication_date,  

(CASE WHEN 'accept to publication' = 'accept to publication' THEN 11 END) AS stage_id, doi AS submission_id,  

j.submission_id AS unique_submission_id, NULL AS revision_number, j.source_system,  

(date_diff(CAST(publication_date AS DATE), CAST(p.accept_date AS DATE), DAY)) AS duration  

FROM `datasn-submissions-55677263.prod_joint_submissions_core.publications` AS p  

INNER JOIN `datasn-submissions-55677263.prod_joint_submissions_core.submissions` AS j  

ON j.submission_id = p.submission_id 

WHERE publication_date IS NOT NULL AND date(publication_date) <= DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) 

 
Updated Query: 
 
SELECT p.journal_id AS journalId, 'accept to publication' AS T, NULL AS stage_start, publication_date,  

(CASE WHEN 'accept to publication' = 'accept to publication' THEN 11 END) AS stage_id, doi AS submission_id,  

j.submission_id AS unique_submission_id, NULL AS revision_number, j.source_system,  

(date_diff(CAST(publication_date AS DATE), CAST(j.decision_date AS DATE), DAY)) AS duration  

FROM `datasn-submissions-55677263.prod_joint_submissions_core.publications` AS p  

INNER JOIN `datasn-submissions-55677263.prod_joint_submissions_core.submissions` AS j  

ON j.submission_id = p.submission_id 

WHERE final_decision = 'accepted' AND publication_date IS NOT NULL AND date(publication_date) <= DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) 

 

Submission Date for All Systems Pulled from JSD Submissions Data 
The submission date is now consistently pulled from the peer review system itself (JSD submissions data) for all systems. This reduces the need for additional sources and improves the consistency of data. 
 

 

Updated Query: 
 
SELECT j.journal_id AS journalId, 'submission to accept' AS T, NULL AS stage_start, decision_date,  

(CASE WHEN 'submission to accept' = 'submission to accept' THEN 9 END) AS stage_id, NULL AS submission_id,  

j.submission_id AS unique_submission_id, NULL AS revision_number, j.source_system,  

(date_diff(CAST(decision_date AS DATE), CAST(j.submission_date AS DATE), DAY)) AS duration  

FROM `datasn-submissions-55677263.prod_joint_submissions_core.submissions` AS j 

WHERE final_decision = 'accepted' AND decision_date IS NOT NULL AND date(decision_date) <= DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) 

Shape 

5. Filters 

Publishing Model: The user can select one or more publishing models. By default, all models are selected. 

Publishing Unit: The user can select one or more units. By default, all units are selected. 

Publishing Discipline: The user can select one or more disciplines among Springer, BHP and Nature Portfolio disciplines. By default, all disciplines are selected. 

Publishing Segment: The user can select one or more segments from Springer, BHP and Nature Portfolio Publishing Segments. By default, no segment is selected. 

Journal Title: The user can select one or more journal titles from all Springer, BHP and Nature Portfolio journals. By default, no journal title is selected. 

Fully Owned: The user can filter by whether the journal is fully owned. By default, no filter is applied. 

Publishing Editor Name: The user can select one or more publishing editor names. By default, all editors are selected. 

Stage Name: The user can select one or more stages between “1 - Awaiting Quality Checks” and “8 - Out for Revision”. By default, all stages are selected. 

Revision: The user can select one or more revision round numbers between 1 and 10. By default, no revision round number is selected. 

Final decision: Focus your view on accepted manuscripts 

Stage End Year: The user can filter by the year the stage ended. By default, 2024 is selected. 

CMA Collection: Track TAT for specific CMA Collections 

Reporting Classification: The user can filter by reporting classification. By default, primary research and reviews are selected. 

Shape 

6. Tips & Tricks 

Setting up scheduled delivery of the data from the report: 
Users can set up regular reports using data from the dashboard sent to one or more recipients. To do this, click the three vertical dots on the top right corner and select "Schedule Delivery" (or use the shortcut ALT + SHIFT + S). Set up the frequency, email addresses, and report format. Ensure the filter selection is correct and send a test email before automating reports. 

Loading the dashboard with preselected filters: 
To save time and view the dashboard with a specific set of filters applied, select and apply the desired filters and ensure the data is correct. Then click the three vertical dots on the top right of the dashboard, select "Get link," and click "Copy to Clipboard." Save this link to access the dashboard with the same filters. 

Adjusting browser zoom for optimal viewing: 
If the dashboard is difficult to navigate on a smaller screen, adjust the zoom in your browser. For Chrome, go to the three vertical dots menu and adjust the "Zoom" option. Alternatively, use the shortcut CTRL + "+" to zoom in. 

Filtering multiple conditions with copy & paste: 
To filter a dashboard tab for multiple journals, you can copy and paste a list from a spreadsheet into the filter. For journal titles with commas, use a backslash before the comma (",”) to ensure the titles are recognized as a whole. 

Shape 

7. Feedback and Suggestions 

The dashboard was initially developed by the RI and later transferred to the APM team, with support from the JSD and other internal teams. We welcome your feedback to improve the dashboard’s functionality. If you have any suggestions or need assistance, please reach out to us. 