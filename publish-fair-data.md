---
title: How to publish a FAIR dataset 
authors:
- Celine Blitz-Frayret
- Paul van Genuchten
date: 2025-07-20
---

# Contents

- [Introduction : general FAIR strategy](#general-fair-strategy)
- [Organize your data](#organize-your-data) 
- [Collect informations about your dataset](#collect-informations-about-your-dataset) 
- [Host informations on a repository](#host-informations-on-a-repository)
– [Conclusion](#conclusion) 


# General FAIR strategy 

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

# Organize your data 

 
## Data inventaristation

| Principles  | How to  |
| ----- | ----- |
| Identify which data will be (or has been) used and created. Classify the data by type, format, origin, and reuse potential.  Remember that the goal is to sustain and make available the results during and after the project. |    |

### Data formats/Encodings 

| Principles  | How to |
| ----- | ----- |
| Basic level :  Use non-proprietary, open formats whenever possible (e.g., CSV instead of Excel, GeoJSON instead of shapefile, PDF instead of DOCX, SQLITE over MS Access).  Ensure that data formats are machine-readable and suitable for long-term access. *Be aware that text files are not machine readable* | Basic level :  Create a tabular file encoded in CSV  If the original Excel file contains multiples pages, create 1 CSV file per tab.   In case an Excel tab contains metadata, the tab can be transformed in a metadata JSON file which can be harvest by SWR. Here is the process.    |


## Types of data

Data in the soil domain can be categorised at various levels. In this document we will use this categorisation:

- Observational Data; Collected directly by observing natural phenomena, behavior, or processes.
   - Field data: ecological surveys, anthropological field notes, wildlife counts.
   - Laboratory data: results from sample analysis
- Derived Data; Processed, transformed, or compiled from existing sources rather than collected first hand.
- Administrative and statistical data

## Observational data

The soil community has selected the Observation, Measurements & Samples data model of the Open Geospatial Consortium to standardise the data for observations on soil, samples and landscape. This model has been adopted by both INSPIRE soil, and ISO28258. A semantic web implementation of OMS is available as SOSA. 

Implementations of OMS benefit from referencing existing vocabularies of soil properties, observing procedures and units of measure.

### Encodings of OMS

Various implementations of OMS are available, which generally are compatible. For each of the cases we have prepared a use case, which provides additional details about the encoding.

- [Tabular data (CSVW)](./use-cases/tabular-data.md)
- [GML / WFS implementation (INSPIRE)](./use-cases/inspire-xml.md) 
- [Relational database (GeoPackage)](./use-cases/inspire-geopackage.md) 
- [RDF based on SOSA ontology (Glosis)](./use-cases/glosis.md)

## Derived data

Many data products are derived from other data sources, either by aggregation, prediction or simulation. 
A typical example is the predicted distribution of a soil property or soil health indicator in a spatial map layer as polygon or grid.

### Encodings of derived data

Extensive metadata on the resulting product explain to potential users 


## Collect informations about your dataset 

### General information

| Principles  | How to |
| ----- | ----- |
|   Assign persistent identifiers (PIDs) to data objects, documents, and authors whenever possible — e.g. [DOIs](https://www.doi.org/) for datasets, [ORCIDs](https://orcid.org/) for researchers.   Use metadata to interlink related resources — e.g., link datasets to the methods used to generate them, to derived visualizations, or to policy reports where they are cited.  *Describe all the information needed to understand and use your data* |   Collect metadata elements :  Title, description, authors, data, license  Column-level details (name, description, unit)  Reference to related datasets or publications (via DOIs or URLs) Example of informations requested on a data repository :  [https://help.zenodo.org/docs/deposit/describe-records/](https://help.zenodo.org/docs/deposit/describe-records/) |

 

### Licensing 

| Principles  | How to |
| ----- | ----- |
|   Clearly specify the terms under which data and knowledge can be reused. Always use already existing, standardised licences. FAIR doesn’t necessarily mean open. In most repositories, you can also safely store resources with restricted access.  |   Discuss with your collaborators involved in the data production (funders, organizations, etc.)  which terms of use must apply to the dataset. If possible, choose the most open license, while respecting privacy, ethical and legal constraints, according to you and your partners agreements ([example of licenses](https://spdx.org/licenses/) such as [Creative Commons](https://creativecommons.org/licenses/)). A published dataset can include a restricted data file (in this case only metadata are visible). Fill the name of the license in the appropriate field, or type the text of your customized license ([example here](https://help.zenodo.org/docs/deposit/describe-records/licenses/)). You can restrict data file(s) on a published dataset [like on this example](https://help.zenodo.org/docs/deposit/create-new-upload/#visibility) and/or [apply an embargo](https://help.zenodo.org/docs/deposit/create-new-upload/#embargo).  |

 
### Soil specific information

On top of the common metadata elements, used in repositories (eg. title, abstract, authors, dates, license). A number of 
elements are endorsed to increase the findability within the soil domain specifically:

- Select relevant keywords from specific vocabularies on Soil properties, Soil functions, Soil threats and Soil Health Indicators.
- For soil property data, the units of measure and procedure used
- Data quality indicators, such as Error descriptor, Completeness, Conformance

A dataset contains information about which soil properties or soil health indicators. With which methods have these data been collected/assessed and which unit is used.

 
| Principles  | How to |
| ----- | ----- |
|   SoilWise catalogue’s data aim at feeding the EUSO dashboard. A specific template is then proposed to contribute to the monitoring of soil health in Europe. |   Collect metadata  |


### Controlled vocabularies

| Principles  | How to |
| ----- | ----- |
| Apply standardized vocabularies or code lists  (e.g., [AGROVOC](https://agrovoc.fao.org/browse/agrovoc/en/), [GEMET](https://www.eionet.europa.eu/gemet/en/about/), [INSPIRE themes](https://knowledge-base.inspire.ec.europa.eu/tools/inspire-themes_en)) to describe data content and context.  For soil data, use established domain terms  (e.g., [WRB soil classification](https://www.fao.org/soils-portal/data-hub/soil-classification/world-reference-base/en/), [LUCAS codes](https://ec.europa.eu/eurostat/statistics-explained/index.php/LUCAS_-_Land_use_and_land_cover_survey), [EUNIS habitat codes](https://www.eea.europa.eu/en/datahub/datahubitem-view/123d0c9a-a6fa-4f2d-b887-5d8e5468faed)).  If possible, avoid creating new vocabularies and ontologies. When local or project-specific terms are used, provide crosswalks or mappings to widely used  |   Identify the definition and URI of the terms used in the dataset, while browsing in the following vocabularies: [*Agrovoc*](https://agrovoc.fao.org/browse/agrovoc/en/) *for terms*  *Gemet for terms*  *GLOSIS for procedures* These information (term, URI of term and chosen vocabulary) should be indicated either in the “keywords and subject” field. |


# Host informations on a repository

## Choose a repository 

| Principles  | How to |
| ----- | ----- |
| Use trusted platforms for archiving and sharing. Prefer repositories that support persistent identifiers (e.g., DOI), machine-readable metadata, and open licenses.  |   If you are in academia,  [Zenodo](https://zenodo.org/) is the recommended solution, for other contexts, please refer to these recommendations. In all cases you can browse trough the list of repositories on [https://www.re3data.org/](https://www.re3data.org/)   |

For outputs of Horizon Europe research, verify that the selected repository is harvested by [OpenAire](https://openaire.org) and that the grantnumber of the project can be added as part of the funding information. Soilwise and Cordis use this information to select relevant publications.

For non academic repositories, verify that the repository is harvested by [data.europa.eu](https://data.europa.eu) and add a keyword `soil` to the metadata record (in the relevant language of the record). Notice that data.europa.eu includes the contents of [ESDAC](https://esdac.jrc.ec.europa.eu) as well as [INSPIRE Geoportal](https://inspire-geoportal.ec.europa.eu). 

## Distribute the informations on the repository

| Principles  | How to |
| ----- | ----- |
| In most of the data repositories,  the metadata field proposed are not sufficient to introduce all the information needed to understand the data*. You can then add a README, metadata.json, or documentation.pdf to the zip file with the data, providing clear documentation, definitions and relevant software compatibility notes, such as columns meaning, units or collection methods. |   On Zenodo : [open an account and click on ‘New upload’](https://help.zenodo.org/docs/deposit/create-new-upload/). Distribute your dataset  informations already collected  between : the [general fields proposed](https://help.zenodo.org/docs/deposit/describe-records/) on Zenodo,  an additional metadata tab in the original data Excel file to introduce a variables dictionnary. This should include terms and URI of terms used in the data (see ex. from Agrovoc slides 7-8) and description of the procedures or associated URI (see ex. from Glosis  ??? ). This metadata tab of the Excel file should be transformed with that tool in a JSON file, to be uploaded on Zenodo.  If necessary, an additional README file to embed the missing informations. To help your information being harvested by SWR, the README file should be in Markdown format instead of text format. Use this example of organization to create yours.  Create a zip file including the data file(s) in CSV, the eventual JSON file for additionnal metadata the README file in Markdown. [Upload the zip file](https://help.zenodo.org/docs/deposit/create-new-upload/#files) on the data repository.  |

 
# Conclusion


