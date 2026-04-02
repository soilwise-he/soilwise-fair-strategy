---
title: 6 Steps Towards FAIR Data and Knowledge in Mission Soil 
Authors: 
- Tomas Pavelka
- Celine Blitz-Frayret
- Paul van Genuchten
Audience: Researchers in Mission Soil Projects   
Date: November 2025   
Version: 0.2   
Project: An open access knowledge and data repository to safeguard soils (SoilWise) 
---

:::{.callout-warning}
## Draft Version
This document is a work in progress and not the final version.
:::

Soil-related data and knowledge are essential for understanding and improving soil health, guiding sustainable land management, informing policy, and enabling scientific progress. Yet, these resources are often scattered, poorly documented, hard to access, or locked in incompatible formats. This fragmentation hampers their reuse, reduces their impact, and creates inefficiencies across projects and disciplines.

This strategy, developed within the **SoilWise** project, provides guidance to ensure that all data and knowledge generated, collected, or reused within Mission Soil projects are managed according to the **FAIR principles** – Findable, Accessible, Interoperable, and Reusable.

By applying the FAIR principles, we can increase the visibility and value of soil-related data and knowledge. FAIRness enables:

- **Transparency** – allowing others to understand how data were produced and under what conditions.  
- **Collaboration** – making it easier to combine datasets across projects, regions, and domains.  
- **Efficiency** – reducing duplication of efforts and enabling the reuse of existing data.  
- **Impact** – enhancing the potential for innovation, decision support, and long-term use of project outputs.

It is intended not only as a conceptual framework, but also as a practical tool to support project teams in developing their own Data Management Plans (DMPs). Each project or work package should describe how its data and knowledge will be handled, shared, and sustained in a FAIR-compliant way.

Soil health knowledge is inherently diverse – ranging from field measurements and lab results to local experiences and spatial models. This strategy promotes coherence and openness while respecting contextual and disciplinary differences.

**Metadata** play a central role in this process: without clear and rich metadata, data cannot be truly findable or reusable. Metadata describe the context, origin, structure, and conditions of use of the data or knowledge asset, acting as the bridge between producers and users — whether human or machine.

---

## Approach: How to FAIRify Data and Knowledge

We recommend the following stepwise process for implementing FAIR principles during metadata population.

---

## Step 1: Inventory & Typology

| **Principles** | **How to** |
|-----------------|------------|
| • Identify what data and knowledge will be created or reused. <br> • Classify them by type, format, origin, and reuse potential. | • During project planning or Data Management Plan (DMP) preparation, make a list of all expected outputs: datasets, reports, maps, models, code, workflows, protocols, websites, and other knowledge products.<br> • For each resource, note whether it is newly created, collected from partners, or reused from external sources.<br> • Record the data type and format (e.g., raster, tabular, text, time series). |

---

## Step 2: Choose Trustworthy Repositories

| **Principles** | **How to** |
|-----------------|------------|
| • Use trustworthy platforms for archiving and sharing <br> • Prefer repositories that support persistent identifiers (e.g., DOI), machine-readable metadata, and open licenses. <br><br>Remember that FAIR doesn’t necessarily mean open. In most repositories, you can also safely store resources with restricted access. | • Choose a repository before your project outputs are finalized, so you can prepare metadata accordingly. <br> • For academic outputs, use [Zenodo](https://zenodo.org/)  (linked to OpenAIRE). For other contexts, explore [re3data.org](https://www.re3data.org/) to identify certified or domain-specific repositories. <br> • Verify that the repository supports persistent identifiers (PID, DOI) and offers clear license options (e.g., Creative Commons). <br> • Check repository policy: does it allow embargo periods or restricted access for sensitive data? |

**How to be discoverable by Soil Wise harvesting strategies?**
For outputs of Horizon Europe research, verify that the selected repository is harvested by [OpenAire](https://openaire.org/) and that the Grant number of the project can be added as part of the funding information. SoilWise and Cordis use this information to select relevant publications.
For non-academic repositories, verify that the repository is harvested by [data.europa.eu](https://data.europa.eu/) and add a keyword soil to the metadata record (in the relevant language of the record). Notice that data.europa.eu includes the contents of [ESDAC](https://esdac.jrc.ec.europa.eu/) as well as [INSPIRE Geoportal](https://inspire-geoportal.ec.europa.eu/).

---

## Step 3: Choose Open and Standardized Formats

| **Principles** | **How to** |
|-----------------|------------|
| • Use non-proprietary, open formats whenever possible. <br> • Ensure that data formats are machine-readable and suitable for long-term access. | • If possible, when preparing data for sharing, export or convert them into open formats: <br>   - CSV, TSV → for tabular data<br>   - GeoJSON, GML → for vector spatial data<br>   - GeoTIFF → for raster data<br>   - PDF/A or TXT → for documents<br>   - SQLite, PostgreSQL dumps → for databases<br> • Avoid file formats that depend on proprietary software (e.g., XLSX, MDB, DOCX).<br> • If necessary for reusability or additional description of your data, include a README.txt file in the dataset or archive describing:<br>   -  data structure, variable descriptions, units<br>   -  coordinate system (for spatial data)<br>   -  software used to create or open files<br>   -  known limitations or assumptions. <br> • Compress related files into a ZIP archive before uploading, ensuring all dependencies are included. |

---

## Step 4: Metadata Design and Management

| **Principles** | **How to** |
|-----------------|------------|
| • Populate as much metadata as you can and describe all the information needed to understand and use your data. You will support the Reusability of the resource. <br> • Assign persistent identifiers (PIDs) to data objects, documents, and authors whenever possible. <br> • Use metadata to interlink related resources. | • Create metadata at the time of upload or using metadata templates provided by your repository. <br> • Fill in all key fields: title, creators (with ORCID if possible), description, keywords, publication date, funding, related resources, license, and version. <br> • Use clear, descriptive titles and structured abstracts that explain what the dataset contains, how it was produced, and its spatial/temporal coverage. <br> • Assign persistent identifiers (PIDs):<br>   - Dataset → DOI<br>   - People → ORCID<br>   - Projects → Grant number / ROR (Research Organization Registry <br> • Interlink related resources, such as datasets, publications, methodologies, software or reports. Most repositories allow “Related identifiers”. <br> • Keep a local copy of metadata (e.g., in JSON, XML, or CSV format) as a backup for institutional archiving. |

---

## Step 5: Use Controlled Vocabularies and Ontologies

| **Principles** | **How to** |
|-----------------|------------|
| • Apply standardized vocabularies, code lists or established domain terms to describe data content and context. <br> • If possible, avoid creating new vocabularies and ontologies in your project. When local or project-specific terms are used, provide crosswalks or mappings to widely used vocabularies.  | • Identify the relevant vocabulary or established domain terms source early in the project: <br>  - [AGROVOC](https://agrovoc.fao.org/) – for agricultural concepts  <br>  - [GEMET](https://www.eionet.europa.eu/gemet/en/about/) – for environmental terms <br>  - [INSPIRE themes](https://knowledge-base.inspire.ec.europa.eu/tools/inspire-themes_en) – for spatial data  <br>  - [WRB soil classification](https://www.fao.org/soils-portal/data-hub/soil-classification/world-reference-base/en/)  <br>  - [LUCAS codes](https://ec.europa.eu/eurostat/statistics-explained/index.php/LUCAS_-_Land_use_and_land_cover_survey)  <br>  - [EUNIS habitat codes](https://www.eea.europa.eu/en/datahub/datahubitem-view/123d0c9a-a6fa-4f2d-b887-5d8e5468faed)<br>• Use the suggested keywords from your repository’s predefined list — this ensures linking to standard vocabularies automatically.<br> • For attributes or variables in datasets, provide code lists or lookup tables that explain categorical values (e.g., soil texture codes).<br> • When using project-specific terminology, create a mapping table linking local terms to standard equivalents (crosswalk). Store it with your dataset.<br>• For ontologies or semantic models, reference them by URI where possible (e.g., from [AgroPortal](https://catalogue.fair-impact.eu/resources/agroportal) or [BioPortal](https://bioportal.bioontology.org/)). |

---

## Step 6: Define Licensing and Access Conditions

| **Principles** | **How to** |
|-----------------|------------|
| • Clearly specify the terms under which data and knowledge can be reused. Always use already existing, standardised licences. <br> • Provide machine-readable licensing information in metadata. <br> • FAIR doesn’t necessarily mean open. In most repositories, you can also safely store resources with restricted access. | • Before publication, review whether your data contains personal, confidential, or sensitive information (e.g., farmer names, coordinates of private land). <br> • If necessary, anonymize or aggregate data before release.<br> • Choose a [standard license](https://spdx.org/licenses) compatible with your data type (If possible, choose one of the [Creative Commons](https://creativecommons.org/licenses/) licenses. They are widely used, and easy to understand), such as: <br>-	[CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/) – requires attribution (recommended default)<br>-	[CC0](https://creativecommons.org/public-domain/cc0/) – public domain<br>-	[CC-BY-NC](https://creativecommons.org/licenses/by-nc/4.0) – non-commercial use<br>-	[ODC-BY](https://opendatacommons.org/licenses/by/1-0) – for databases<br> •	Include the license text or identifier (e.g., [https://creativecommons.org/licenses/by/4.0/](https://creativecommons.org/licenses/by/4.0/)) in your metadata record.<br> •	Choose the most open license possible, while respecting privacy, ethical and legal constraints.<br> •	Ensure the repository captures the license as machine-readable metadata.<br> •	If access restrictions apply, specify the access level (open, embargoed, restricted) and provide contact information for requests.<br> •	Mention licensing and access terms clearly in your DMP and README file.<br> •	When in doubt, consult your institutional data steward or legal office before choosing the license.|

---

**If you are part of a Mission Soil project and want your resources to be findable through the SoilWise Catalogue, the easiest way is to upload them to [Zenodo](https://zenodo.org/) and link the assets to your project (in the “Funding” section).** It will be automatically harvested and indexed in the SoilWise Catalogue within a few days.

---

For more information on FAIR principles, you can visit guides at e.g. [OpenAIRE](https://www.openaire.eu/guides) or  [GO FAIR](https://www.go-fair.org/fair-principles/), or you can test your resource FAIRness at [FAIR Data Self-Assessment](https://ardc.edu.au/resource/fair-data-self-assessment-tool/) or [FAIRsFAIR](https://www.fairsfair.eu/tools-software) tools. See also the related official Horizon 2020 documents, [Guidelines on FAIR Data Management in Horizon 2020](https://ec.europa.eu/research/participants/data/ref/h2020/grants_manual/hi/oa_pilot/h2020-hi-oa-data-mgt_en.pdf), and [Guidelines to the Rules on Open Access to Scientific Publications and Open Access to Research Data in Horizon 2020](https://ec.europa.eu/research/participants/data/ref/h2020/grants_manual/hi/oa_pilot/h2020-hi-oa-pilot-guide_en.pdf).
