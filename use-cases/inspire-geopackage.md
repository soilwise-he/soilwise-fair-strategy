---
title: Strategy Document for Adopting the INSPIRE Good Practice on GeoPackage for the Soil Data Theme* 
Version: 1.0   
Date: 2025-09-24
author: Paul van Genuchten
---


# Executive Summary

This strategy outlines the approach for adopting the INSPIRE Good Practice (GP) on GeoPackage (GPKG) as a compliant encoding for soil data. The objective is to enhance interoperability, simplify data exchange, and support the delivery of INSPIRE-compliant datasets in a modern, efficient format. The transition from existing GML-based implementations to GeoPackage aligns with INSPIRE’s recommendations for improving usability and performance in geospatial data delivery.* 

 

# Background

## INSPIRE Directive Overview* 

The INSPIRE Directive (2007/2/EC) aims to create a European Union spatial data infrastructure for the purposes of environmental policies or activities that may impact the environment. Soil is one of the 34 data themes defined in Annex III of the Directive. 

## Good Practice on GeoPackage

The INSPIRE Good Practice on GeoPackage is an alternative encoding for delivering spatial data that is lighter and more user-friendly than traditional GML formats. It supports the SQLite-based GeoPackage standard (OGC standard), which is widely supported by modern GIS software.

# Objectives

- Achieve INSPIRE compliance using GeoPackage for the Soil theme.*   
- Improve data accessibility and usability for end users.*   
- Reduce data volume and increase processing efficiency.*   
- Ensure alignment with future INSPIRE maintenance and evolution activities.* 


# Scope

This strategy applies to all spatial datasets under the Soil theme that are to be shared within the INSPIRE framework. The key soil data components include:

- Soil profiles and observations   
- Soil types and mapping units   
- Soil properties and classifications


# Strategy and Implementation Plan 

## Assessment Phase



* *Review current data holdings and GML-based INSPIRE compliance.*   
* *Identify gaps in encoding capabilities or data model compliance.*   
* *Assess tools and workflows currently used for data transformation and publication.* 

## Data Model Alignment* 



* *Map the INSPIRE Soil data model to a schema compatible with GeoPackage.*   
* *Ensure the representation of complex features (e.g., nested observations, relationships).*   
* *Maintain semantic alignment with INSPIRE data specifications using code lists and controlled vocabularies.* 

*5.3 Toolchain Development* 

*Timeline: \[e.g., Q2–Q3 2025\]* 

* *Select or develop tools for transforming existing datasets into GeoPackage format.*   
* *Automate validation workflows using tools such as ETF Validator or HALE Studio.*   
* *Ensure export scripts support relevant feature types and attribute mappings.* 

*5.4 Pilot and Testing* 

*Timeline: \[e.g., Q3 2025\]* 

* *Produce a pilot GeoPackage dataset for selected regions or features.*   
* *Validate data encoding using INSPIRE ETF testing services.*   
* *Gather feedback from internal and external stakeholders.* 

*5.5 Full Roll-Out* 

*Timeline: \[e.g., Q4 2025\]* 

* *Implement full-scale transformation of Soil data to GeoPackage.*   
* *Update metadata to reflect the new encoding format.*   
* *Publish datasets via download services in accordance with INSPIRE TG requirements.* 

*![Vorm][image6]* 

*6\. Governance and Responsibilities* 

| *Role*  | *Responsibility*  |
| :---- | :---- |
| *Data Owner*  | *Ensure accuracy and completeness of soil datasets*  |
| *GIS/Data Engineer*  | *Transform and encode data into GeoPackage*  |
| *INSPIRE Coordinator*  | *Ensure compliance with INSPIRE and Good Practice*  |
| *QA Team*  | *Validate data against INSPIRE TG and schema rules*  |

*![Vorm][image7]* 

*7\. Risks and Mitigations* 

| *Risk*  | *Mitigation*  |
| :---- | :---- |
| *Tool incompatibility*  | *Use open-source, widely adopted tools and libraries*  |
| *Schema misalignment*  | *Validate mapping using pilot datasets and expert review*  |
| *Data loss in conversion*  | *Implement robust QA checks at each step*  |

*![Vorm][image8]* 

*8\. Monitoring and Evaluation* 

* *Define success metrics (e.g., dataset availability, compliance test results).*   
* *Establish regular audits and review cycles.*   
* *Solicit feedback from data users and stakeholders.* 

*![Vorm][image9]* 

*9\. Conclusion* 

*Adopting the INSPIRE Good Practice on GeoPackage for the Soil data theme represents a strategic step toward improved data interoperability and user experience. This strategy provides a practical framework for transitioning away from legacy GML encoding while maintaining full compliance with INSPIRE requirements.* 

*![Vorm][image10]* 

*10\. References* 

* *INSPIRE Good Practice: [https://inspire.ec.europa.eu/good-practice/](https://inspire.ec.europa.eu/good-practice/)*   
* *INSPIRE Soil Data Specification: [https://inspire.ec.europa.eu/id/document/tg/so](https://inspire.ec.europa.eu/id/document/tg/so)*   
* *OGC GeoPackage Standard: [https://www.ogc.org/standards/geopackage](https://www.ogc.org/standards/geopackage)*   
* *INSPIRE Knowledge Base: [https://inspire.ec.europa.eu/](https://inspire.ec.europa.eu/)* 
