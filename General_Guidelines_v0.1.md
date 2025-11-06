---
title: 6 Steps Towards FAIR Data and Knowledge in Mission Soil 
Authors: Tomas Pavelka   
Audience: Researchers in Mission Soil Projects   
Date: June 2025   
Version: 0.1   
Project: An open access knowledge and data repository to safeguard soils (SoilWise) 
---
 
Soil-related data and knowledge are essential for understanding and improving soil health, guiding sustainable land management, informing policy, and enabling scientific progress. Yet, these resources are often scattered, poorly documented, hard to access, or locked in incompatible formats. This fragmentation hampers their reuse, reduces their impact, and creates inefficiencies across projects and disciplines. 

This strategy, developed within the SoilWise project, provides guidance to ensure that all data and knowledge generated, collected, or reused within Mission Soil projects are managed according to the FAIR principles – Findable, Accessible, Interoperable, and Reusable. 

By applying the FAIR principles, we can increase the visibility and value of soil-related data and knowledge. FAIRness enables: 

* Transparency – allowing others to understand how data were produced and under what conditions.   
* Collaboration – making it easier to combine datasets across projects, regions, and domains.   
* Efficiency – reducing duplication of efforts and enabling the reuse of existing data.   
* Impact – enhancing the potential for innovation, decision support, and long-term use of project outputs. 

It is intended not only as a conceptual framework, but also as a practical tool to support project teams in developing their own Data Management Plans (DMPs). Each project or work package should describe how its data and knowledge will be handled, shared, and sustained in a FAIR-compliant way. 

Soil health knowledge is inherently diverse – ranging from field measurements and lab results to local experiences and spatial models. This strategy promotes coherence and openness while respecting contextual and disciplinary differences.  

Metadata play a central role in this process: without clear and rich metadata, data cannot be truly findable or reusable. Metadata describe the context, origin, structure, and conditions of use of the data or knowledge asset, acting as the bridge between producers and users — whether human or machine. 

#  Approach: How to FAIRify Data and Knowledge 

We recommend the following stepwise process for implementing FAIR principles: 

## Step 1: Inventory & Typology 

* Identify what data and knowledge will be created or reused.   
* Classify them by type, format, origin, and reuse potential.   
* Remember that the goal is to sustain the results after the end of the project. It doesn’t need to cover only the obvious data, but also other knowledge, website, etc.    
   

## Step 2: Metadata Design and Management 

* Define what metadata are needed to describe the content, origin, context, quality, and terms of use of your data or knowledge assets.    
* Use community standards to ensure consistency and interoperability — e.g., [Dublin Core](https://dublincore.org/), [ISO 19115](https://www.iso.org/standard/53798.html), [DataCite](https://datacite.org/), or discipline-specific schemas.    
* Ensure metadata are machine-readable and structured to support automated indexing and discovery.   
* Assign persistent identifiers (PIDs) to data objects, documents, and authors whenever possible — e.g. [DOIs](https://www.doi.org/) for datasets, [ORCIDs](https://orcid.org/) for researchers.    
* Use metadata to interlink related resources — e.g., link datasets to the methods used to generate them, to derived visualizations, or to policy reports where they are cited.   
* Document metadata using common formats such as XML, JSON-LD, or RDF to support integration with data catalogues and search engines.   
* Note that, in most cases, you can create metadata directly in the trustworthy repository during the resource upload.    
   

## Step 3: Choose Trustworthy Repositories 

* Use trusted platforms for archiving and sharing ([Zenodo](https://zenodo.org/) is the recommended solution for most cases).   
* Prefer repositories that support persistent identifiers (e.g., DOI), machine-readable metadata, and open licenses.   
* Remember that FAIR doesn’t necessarily mean open. In most repositories, you can also safely store resources with restricted access.   
   

## Step 4: Choose Open and Standardized Formats 

* Use non-proprietary, open formats whenever possible (e.g., CSV instead of Excel, GeoJSON instead of shapefile, PDF instead of DOCX, SQLITE over MS Access).   
* Ensure that data formats are machine-readable and suitable for long-term access.   
* If needed, add a readme.txt to the zip file with the data, providing clear documentation, definitions and relevant software compatibility notes.   
   

## Step 5: Use Controlled Vocabularies and Ontologies 

* Apply standardized vocabularies or code lists (e.g., [AGROVOC](https://agrovoc.fao.org/browse/agrovoc/en/), [GEMET](https://www.eionet.europa.eu/gemet/en/about/), [INSPIRE themes](https://knowledge-base.inspire.ec.europa.eu/tools/inspire-themes_en)) to describe data content and context.   
* For soil data, use established domain terms (e.g., [WRB soil classification](https://www.fao.org/soils-portal/data-hub/soil-classification/world-reference-base/en/), [LUCAS codes](https://ec.europa.eu/eurostat/statistics-explained/index.php/LUCAS_-_Land_use_and_land_cover_survey), [EUNIS habitat codes](https://www.eea.europa.eu/en/datahub/datahubitem-view/123d0c9a-a6fa-4f2d-b887-5d8e5468faed)).   
* If possible, avoid creating new vocabularies and ontologies. When local or project-specific terms are used, provide crosswalks or mappings to widely used vocabularies.    
   

## Step 6: Define Licensing and Access Conditions 

* Clearly specify the terms under which data and knowledge can be reused (e.g., [Creative Commons licenses](https://creativecommons.org/licenses/)). Always use already existing, standardised licences.   
* Choose the most open license possible, while respecting privacy, ethical and legal constraints.   
* Provide machine-readable licensing information in metadata (e.g., [cc-by-4.0](https://creativecommons.org/licenses/), [cc0](https://creativecommons.org/public-domain/cc0/)).   
   

If you are part of a Mission Soil project and you want your resources to be findable through SoilWise Repository, the easiest way is to upload them to [Zenodo](https://zenodo.org/) and link the assets to your project (in the *Funding* section). It will be automatically harvested and logged in SoilWise Repository in a few days.  

For more information on FAIR principles, you can visit guides at e.g. [OpenAIRE](https://www.openaire.eu/how-to-make-your-data-fair) or  [go-fair.org](https://www.go-fair.org/fair-principles/), or you can test your resource FAIRness at [FAIR Data Self-Assessment](https://ardc.edu.au/resource/fair-data-self-assessment-tool/) or [FAIRsFAIR](https://www.fairsfair.eu/tools-software) tools. See also the related official Horizon 2020 documents, [Guidelines on FAIR Data Management in Horizon 2020](https://ec.europa.eu/research/participants/data/ref/h2020/grants_manual/hi/oa_pilot/h2020-hi-oa-data-mgt_en.pdf), and [Guidelines to the Rules on Open Access to Scientific Publications and Open Access to Research Data in Horizon 2020](https://ec.europa.eu/research/participants/data/ref/h2020/grants_manual/hi/oa_pilot/h2020-hi-oa-pilot-guide_en.pdf). 

 

 

