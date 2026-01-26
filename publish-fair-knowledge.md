
---
title: Guidelines on (Mission Soil) Data and Knowledge FAIRness and Findability
authors:
- Celine Blitz-Frayret
- Paul van Genuchten
date: 2025-07-20
draft: true
---

## Introduction 

Soil is one of our most vital natural resources, yet it faces mounting pressures from climate change, land degradation, and unsustainable management. To protect and restore soils effectively, we need high-quality, accessible data and reliable knowledge. That’s where SoilWise Repository (SWR) comes in—the data and knowledge hub designed to gather all relevant resources across the soil domain, accessible through one access point. 

This document lays out clear guidelines for all soil data publishers, mainly Mission Soil projects, to structure their data, knowledge and metadata in a way that makes them seamlessly discoverable through the SoilWise metadata catalogue. But this isn’t just about compliance—it’s about building a soil data and knowledge ecosystem where information flows freely, connects across disciplines, and drives meaningful action. 

In the following sections, you’ll find practical recommendations on how to: 

* … 

 

Too often, valuable soil data and knowledge remains fragmented, inaccessible, or incompatible with other resources—limiting its potential impact. A common approach to data and knowledge management is essential. **Effective data and knowledge are only as powerful as the metadata that describes it.** Without clear, standardised metadata, even the most valuable resources remain hidden, disconnected, or misinterpreted. Metadata acts as the bridge between data providers and users, ensuring that soil data can be easily found, understood, and integrated across different platforms and disciplines.  

 

TODO:   
\- Purpose of SWR as a crossroad and single access point SWR harvests only Metadata 

* What is in scope of this document and what is not 

 

This document was created for Mission Soil projects as a guideline to summarise the approaches towards soil data and knowledge FAIRness and support the findability through SWR.  

 

**Target groups (?)** 

 

## General Information 

Notes: 

* This section will be at the beginning of every “result-document”    
* SWR introduction   
* Emphasis on metadata role   
* Ensuring FAIRness requires the use of open formats, proper metadata, and appropriate repositories.   

Definitions, intro, how to make decisions on where to store, what is harvested to SWR 

Divide data somehow? E.g. to soil measurements, spatial data analysis, other kinds of analysis… ?  

### Knowledge management  

(describe by metadata, standardisation, links to other sources and deliverables, recommended formats, versioning (?)…) 

 

### Recommended Metadata standards

Use internationally recognized metadata standards that ensure discoverability, interoperability, and clarity. Metadata should describe the also raster dataset’s origin, scope, resolution, spatial and temporal extent, and processing history. Choose standards that are compatible with spatial data infrastructures and catalogue systems. 

* ISO 19115 / 19139 – robust and widely adopted geospatial metadata standards   
* INSPIRE Metadata – for alignment with European environmental directives   
* Dublin Core – useful for basic descriptive metadata   
* GeoTIFF internal tags – allow embedding georeferencing directly in the data file   
* DataCite 

 

Notes: 

* DC as a minimal requirement 

### Metadata Management

Metadata are essential to making data FAIR. Projects should treat metadata creation and maintenance as an integral part of data workflows. Metadata should be created at the time of data generation, maintained throughout the project, and updated when changes occur.  

 

Notes: 

* Link to metadata filling manual   
* List of recommended elements (link to more detailed descriptions and examples)   
* Emphasis on interlinking with other assets, vocabularies, project, persistent identification  

### Recommended Licences

Licensing should be clear, standardized, and as open as possible. Use well-known licenses that facilitate reuse, attribution, and integration with other datasets. When data cannot be openly shared, clearly state the reasons and explore options for controlled access. 

 

Notes: 

* Standardised licences, such as CCs 

 

 

 

Notes from UC2: 

*Various approaches exist to annotate CSV data to match the above user story * 

* *In the research community a convention is used to add a readme.txt to the zip file with the data, the readme.txt contains definitions for the columns in a semi-structured format. It's a start, but preferably a fully structured format is used. *   
* [*https://csvw.org*](https://csvw.org/) *and [https://www.w3.org/TR/tabular-data-primer](https://www.w3.org/TR/tabular-data-primer) are similar initiatives with a json-ld approach to tabular data (CSV) *   
* *Various metadata communities offer an approach to embed metadata about the data model into the metadata document that describes the dataset, such as: [https://schema.org/variableMeasured](https://schema.org/variableMeasured), [https://datapackage.org/standard/table-schema,](https://datapackage.org/standard/table-schema,)  [https://www.iso.org/standard/57303.html](https://www.iso.org/standard/57303.html)  * 

 

 

4. Knowledge 

Definitions (What is knowledge?), intro, how to make decisions on where to store, what is harvested to SWR 

1. Knowledge management  

\+ Recommended persistent repositories for each subchapter 

1. Publication or Journal Papers    
2. Guideline or Manual   
3. Methodology   
4. Ontology 

Note: Do not establish new ontologies 

5. Repository 

Note: Do not establish new repositories 

6. Model   
7. Deliverable   
8. Text   
9. Website   
10. Video 

Note:  

* Not to endorse YouTube as an only repository   
11. Audio   
12. Image   
13. Presentation   
14. Best Practices and Tools   
15. Interview   
16. Policy Documents   
17. Software 

*\+ include MIT licences* 

18. Validation results (?)   
    Data and metadata validations, indicated in metadata 

 

 

5. Metadata 

Definitions, intro, how to make decisions on where to store, what is harvested (list of repositories?) 

1. Metadata management  

(minimum metadata profile, formats, elements…) 

recommendation could be to submit deliverable to official repositories e.g. Zenodo and reference it in CORDIS (where are wider options for metadata) 

Which MD standards should be used? 

 

 

6. Mission Soil Indication 

How should projects indicate in metadata the link to their project 

(possibly part of subchapters above) 

 

7. Support materials   
1. How to fill metadata    
2. General persistency guidelines 

What should be stored in a persistent repository? (web, manuals, videos, guidelines… store not only metadata, but think about the persistency of the products) 

DOIs and how to use them 

Linking to other knowledge (deliverables, …).  

.. see JRC meeting from 12\. 2\. 2025 for more details (cca between 20-50 min.) 

 

To ensure FAIRness, raster data should be stored in open, standardized formats (preferably OGC-compliant), documented with complete metadata based on established standards, and shared through trustworthy repositories. Projects should assign clear and appropriate licenses that support data reuse, and whenever possible, enable open access. 

3. Sensitive metadata handling   
4. Versioning   
5. Vocabularies   
6. List of SWR harvested repositories 

 

 

8. FAQ   
* What should I do to be findable in SWR?   
* What should I do if I have a specific Metadata profile (e.g. with Ph measurements)   
* How should I reposit the sensitive assets?    
* What is a definition of persistent repository?  

 

 

9. Other useful information  

(openAIRE guidelines, standards, metadata manuals, [EC H2020 FAIR DM](https://ec.europa.eu/research/participants/data/ref/h2020/grants_manual/hi/oa_pilot/h2020-hi-oa-data-mgt_en.pdf)[, Guidelines to the Rules on OA to Scientific Publications and OA to Research Data in Horizon 2020](https://ec.europa.eu/research/participants/data/ref/h2020/grants_manual/hi/oa_pilot/h2020-hi-oa-pilot-guide_en.pdf), [FAIR Maturity Indicators](https://fairtoolkit.pistoiaalliance.org/methods/findability-maturity-indicators/), [go-fair.org](https://www.go-fair.org/fair-principles/) principles, [EUDAT B2share](https://eudat.eu/service-catalogue/b2share-0), [fairsharing.org](https://fairsharing.org/), [FAIR Data Self-Assessment Tool](https://ardc.edu.au/resource/fair-data-self-assessment-tool/) (\!), [FAIRsFAIR](https://www.fairsfair.eu/tools-software) tools ...) 

 

 

 

 

 

Open Questions: 

 

* Should we focus only on Mission Soil projects, or any potential Soil data/knowledge providers?   
* General guidelines, or SWR-oriented?   
* What content should be included?    
* To what detail should we get (i.e. [manuals for uploading](https://ejpsoil.github.io/soildata-assimilation-guidance/cookbook/zenodo.html) / general description)?    
* How to handle big data?    
* Software is Data (code) or Knowledge? (not relevant for end users)   
* How to store whole system (e.g. running platform with various content, such as Curiosoil Learning Hub)   
* How to handle big data?  

 

TODO: 

* Create guidelines on how to use existing vocabs and how to create their own when the existing is not sufficient   
* We will not create new  

 


