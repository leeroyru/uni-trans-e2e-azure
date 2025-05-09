 Azure End-to-End Data Engineering Real-Time Project

Project Overview
This project addresses a critical business need by building a comprehensive and scalable data pipeline on Azure. The objective is to extract customer, sales, and product data from an on-premises SQL Server (AdventureWorks), transform it in the cloud, and deliver actionable insights via a Power BI dashboard. The dashboard highlights key performance indicators (KPIs) including gender distribution and product category sales, with filtering capabilities by date, category, and gender to support informed decision-making.

Solution Overview
To meet the business and technical requirements, the solution is structured as follows:
1. Data Ingestion
Extract customer, product, and sales data from an on-premises SQL Server.


Use Azure Data Factory (ADF) to ingest data into Azure Data Lake Storage (ADLS) — Bronze layer (raw data).


2. Data Transformation
Use Azure Databricks to:


Clean the data (remove duplicates, handle nulls).


Validate and enrich (e.g., derive calculated fields).


Aggregate key measures (e.g., sales by gender and category).


Store cleaned data in Silver, and aggregated data in Gold layers on ADLS.


3. Data Loading and Reporting
Load Gold-layer data into Azure SQL Database for querying and BI consumption.


Create an interactive Power BI Dashboard using Azure SQL as the source.


4. Automation and Monitoring
Schedule daily pipeline runs using ADF triggers.


Monitor pipeline health and performance using ADF and Databricks monitoring tools.


5. Security and Governance
Use Azure Key Vault to securely store connection strings and credentials.


Implement Role-Based Access Control (RBAC) using Azure Entra ID to manage access to services and data.



Business Problems Addressed by Power BI Dashboard
The Power BI dashboard directly addresses several critical business needs:
Customer Demographic Insights
 Provides clear breakdowns of gender distribution, enabling marketing teams to tailor campaigns and offerings.


Product Category Performance
 Displays which product categories are most popular and profitable by gender, supporting merchandising and promotion strategies.


Sales Trends Over Time
 Visual filters and time-based slicers allow stakeholders to analyze trends by date, category, and gender.


Operational Efficiency
 Automated data refresh ensures real-time visibility without manual intervention, improving reporting consistency and reliability.



Assumptions and Rationale
Assumption
Rationale
AdventureWorks is hosted on-premises
Simulates a legacy system, aligning with the case study’s requirement to extract from on-prem SQL Server.
Azure SQL Database is sufficient for reporting
Chosen over Synapse due to manageable data volumes and lower cost, without compromising performance.
Daily data updates are adequate
No streaming or real-time requirements were stated; daily batch processing meets business needs.
RBAC and Azure Key Vault are in place
Ensures enterprise-grade security, secure credential management, and access control to sensitive resources.


Data Architecture Diagram Overview
Here’s the logical flow of data and technologies used:
[On-Prem SQL Server (AdventureWorks)]
              │
       [Azure Data Factory]
              │
       ↓ Bronze Layer (.paquet files)
   [Azure Data Lake Storage Gen2]
              │
       [Azure Databricks]
     ├── Clean & Validate (Silver)
     └── Aggregate (Gold)
              │
      [Azure SQL Database]
              │
         [Power BI Dashboard]

Security Layer: Azure Key Vault (for secrets) + Azure Entra ID (RBAC)

Conclusion
This end-to-end Azure data engineering solution successfully extracts, transforms, and visualizes business-critical data. It empowers Company ABC to gain meaningful insights into customer demographics and product performance, while automation ensures that the information is always current. The solution is scalable, secure, and easy to extend for future needs like additional data sources or advanced analytics.



