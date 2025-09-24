---
title: Strategy Document for Adopting the INSPIRE Good Practice on GeoPackage for the Soil Data Theme 
Version: 1.0   
Date: 2025-09-24
author: Paul van Genuchten
---

# Executive Summary

This strategy outlines an approach for adopting the INSPIRE Good Practice (GP) on GeoPackage (GPKG) as a compliant encoding for soil data. The objective is to enhance interoperability, simplify data exchange, and support the delivery of INSPIRE-compliant datasets in a modern, efficient format. The transition from existing GML-based implementations to GeoPackage aligns with INSPIRE’s recommendations for improving usability and performance in geospatial data delivery. 

# Background

## INSPIRE Directive Overview 

The [INSPIRE Directive (2007/2/EC)](https://knowledge-base.inspire.ec.europa.eu/legislation/inspire-directive_en) was established to build a European Union spatial data infrastructure that supports environmental policies and activities affecting the environment. Among the 34 data themes listed in Annex III of the Directive, soil is included as one of them. For each theme a common conceptual data model has been suggested, with the aim to be adopted by member states to store and share environmental data. Today the INSPIRE directive is gradually superseded by the [regulation on high value datasets](https://eur-lex.europa.eu/eli/reg_impl/2023/138/oj). Soil data has been identified as one of the high value datasets. 

## Good Practice on GeoPackage Encodings

The INSPIRE [Good Practice on GeoPackage Encodings](https://github.com/INSPIRE-MIF/gp-geopackage-encodings) describes an encoding for delivering of spatial data which is lighter and more user-friendly than conventional GML encodings. The practice is facilitated by the SQLite-based GeoPackage encoding (OGC standard), which is widely supported by modern GIS software.

## The INSPIRE Soil conceptual data model

The INSPIRE conceptual data model is based on the Open Geospatial Consortium model for Observations, Measurements and Samples. For each observation made on a feature of interest (a plot, profile or horizon) either in the field or in a laboratory, the model prescribes to capture along with the observed result, also the observed soil property, the observation procedure and the unit of measure.


# Objectives

- Achieve INSPIRE compliance using GeoPackage for the Soil theme.   
- Improve data accessibility and usability for end users.   
- Reduce data volume and increase processing efficiency.   
- Ensure alignment with future INSPIRE maintenance and evolution activities. 

# Scope

This strategy applies to all spatial datasets under the Soil theme that are to be shared within the INSPIRE framework. The key soil data components include:

- Soil profiles and observations   
- Soil types and mapping units   
- Soil properties and classifications

# Strategy and Implementation Plan 

## Assessment Phase

- Review current data holdings and GML-based INSPIRE compliance.   
- Identify gaps in encoding capabilities or data model compliance.   
- Assess tools and workflows currently used for data transformation and publication. 

## Data Model Alignment 

- Map the INSPIRE Soil data model to a schema compatible with GeoPackage.   
- Ensure the representation of complex features (e.g., nested observations, relationships).   
- Maintain semantic alignment with INSPIRE data specifications using code lists and controlled vocabularies. 

## Toolchain Development  

- Select or develop tools for transforming existing datasets into GeoPackage format.   
- Automate validation workflows using tools such as ETF Validator or HALE Studio.   
- Ensure export scripts support relevant feature types and attribute mappings. 

## Pilot and Testing 

- Produce a pilot GeoPackage dataset for selected regions or features.   
- Validate data encoding using INSPIRE ETF testing services.   
- Gather feedback from internal and external stakeholders. 

## Full Roll-Out 

- Implement full-scale transformation of Soil data to GeoPackage.   
- Update metadata to reflect the new encoding format.   
- Publish datasets via download services in accordance with INSPIRE TG requirements. 

# Governance and Responsibilities 

| Role  | Responsibility  |
| :---- | :---- |
| Data Owner  | Ensure accuracy and completeness of soil datasets  |
| GIS/Data Engineer  | Transform and encode data into GeoPackage  |
| INSPIRE Coordinator  | Ensure compliance with INSPIRE and Good Practice  |
| QA Team  | Validate data against INSPIRE TG and schema rules  |

# Risks and Mitigations 

| Risk  | Mitigation  |
| :---- | :---- |
| Tool incompatibility  | Use open-source, widely adopted tools and libraries  |
| Schema misalignment  | Validate mapping using pilot datasets and expert review  |
| Data loss in conversion  | Implement robust QA checks at each step  |

# Monitoring and Evaluation

- Define success metrics (e.g., dataset availability, compliance test results).   
- Establish regular audits and review cycles.   
- Solicit feedback from data users and stakeholders. 

# Conclusion

Adopting the INSPIRE Good Practice on GeoPackage for the Soil data theme represents a strategic step toward improved data interoperability and user experience. This strategy provides a practical framework for transitioning away from legacy GML encoding while maintaining full compliance with INSPIRE requirements. 

# References

- INSPIRE Good Practice: [https://inspire.ec.europa.eu/good-practice/](https://inspire.ec.europa.eu/good-practice/)   
- INSPIRE Soil Data Specification: [https://inspire.ec.europa.eu/id/document/tg/so](https://inspire.ec.europa.eu/id/document/tg/so)   
- OGC GeoPackage Standard: [https://www.ogc.org/standards/geopackage](https://www.ogc.org/standards/geopackage)   
- INSPIRE Knowledge Base: [https://inspire.ec.europa.eu/](https://inspire.ec.europa.eu/) 
