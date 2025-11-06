6 Steps Towards FAIR Data and Knowledge in Mission Soil

Authors: Tomas Pavelka
Audience: Researchers in Mission Soil Projects
Date: June 2025
Version: 0.2
Project: An open access knowledge and data repository to safeguard soils (SoilWise)

Soil-related data and knowledge are essential for understanding and improving soil health, guiding sustainable land management, informing policy, and enabling scientific progress. Yet, these resources are often scattered, poorly documented, hard to access, or locked in incompatible formats. This fragmentation hampers their reuse, reduces their impact, and creates inefficiencies across projects and disciplines.
This strategy, developed within the SoilWise project, provides guidance to ensure that all data and knowledge generated, collected, or reused within Mission Soil projects are managed according to the FAIR principles – Findable, Accessible, Interoperable, and Reusable.
By applying the FAIR principles, we can increase the visibility and value of soil-related data and knowledge. FAIRness enables:
Transparency – allowing others to understand how data were produced and under what conditions.
Collaboration – making it easier to combine datasets across projects, regions, and domains.
Efficiency – reducing duplication of efforts and enabling the reuse of existing data.
Impact – enhancing the potential for innovation, decision support, and long-term use of project outputs.
It is intended not only as a conceptual framework, but also as a practical tool to support project teams in developing their own Data Management Plans (DMPs). Each project or work package should describe how its data and knowledge will be handled, shared, and sustained in a FAIR-compliant way.
Soil health knowledge is inherently diverse – ranging from field measurements and lab results to local experiences and spatial models. This strategy promotes coherence and openness while respecting contextual and disciplinary differences.
Metadata play a central role in this process: without clear and rich metadata, data cannot be truly findable or reusable. Metadata describe the context, origin, structure, and conditions of use of the data or knowledge asset, acting as the bridge between producers and users — whether human or machine.

Approach: How to FAIRify Data and Knowledge
We recommend the following stepwise process for implementing FAIR principles during the metadata population:
Step 1: Inventory & Typology

Step 2: Choose Trustworthy Repositories

How to be discoverable by Soil Wise harvesting strategies?
For outputs of Horizon Europe research, verify that the selected repository is harvested by  and that the Grant number of the project can be added as part of the funding information. SoilWise and Cordis use this information to select relevant publications.
For non-academic repositories, verify that the repository is harvested by  and add a keyword soil to the metadata record (in the relevant language of the record). Notice that data.europa.eu includes the contents of  as well as .

Step 3: Choose Open and Standardized Formats

Step 4: Metadata Design and Management
Note that, in most cases, you can create metadata directly in the trustworthy repository during the resource upload.

Step 5: Use Controlled Vocabularies and Ontologies

Step 6: Define Licensing and Access Conditions

If you are part of a Mission Soil project and you want your resources to be findable through SoilWise Repository, the easiest way is to upload them to  and link the assets to your project (in the Funding section). It will be automatically harvested and logged in SoilWise Repository in a few days.
For more information on FAIR principles, you can visit guides at e.g.  or  , or you can test your resource FAIRness at  or  tools. See also the related official Horizon 2020 documents, , and .


| Principles | How to |
| --- | --- |
| Identify what data and knowledge will be created or reused. Classify them by type, format, origin, and reuse potential. | During project planning or Data Management Plan (DMP) preparation, make a list of all expected outputs: datasets, reports, maps, models, code, workflows, protocols, websites, and other knowledge products. For each resource, note whether it is newly created, collected from partners, or reused from external sources. Record the data type and format (e.g., raster, tabular, text, time series). |


| Principles | How to |
| --- | --- |
| Use trustworthy platforms for archiving and sharing  Prefer repositories that support persistent identifiers (e.g., DOI), machine-readable metadata, and open licenses.  Remember that FAIR doesn’t necessarily mean open. In most repositories, you can also safely store resources with restricted access. | Choose a repository before your project outputs are finalized, so you can prepare metadata accordingly. For academic outputs, use   (linked to OpenAIRE). For other contexts, explore  to identify certified or domain-specific repositories. Verify that the repository supports persistent identifiers (PID, DOI) and offers clear license options (e.g., Creative Commons). Check repository policy: does it allow embargo periods or restricted access for sensitive data? |


| Principles | How to |
| --- | --- |
| Use non-proprietary, open formats whenever possible Ensure that data formats are machine-readable and suitable for long-term access. | If possible, when preparing data for sharing, export or convert them into open formats: • CSV, TSV → for tabular data • GeoJSON, GML → for vector spatial data • GeoTIFF → for raster data • PDF/A or TXT → for documents • SQLite, PostgreSQL dumps → for databases Avoid file formats that depend on proprietary software (e.g., XLSX, MDB, DOCX). If necessary for reusability or additional description of your data, include a README.txt file in the dataset or archive describing: • data structure, variable descriptions, units • coordinate system (for spatial data) • software used to create or open files • known limitations or assumptions. Compress related files into a ZIP archive before uploading, ensuring all dependencies are included. |


| Principles | How to |
| --- | --- |
| Populate as much metadata as you can and describe all the information needed to understand and use your data. You will support the Reusability of the resource.  Assign persistent identifiers (PIDs) to data objects, documents, and authors whenever possible. Use metadata to interlink related resources. | Create metadata at the time of upload or using metadata templates provided by your repository. Fill in all key fields: title, creators (with ORCID if possible), description, keywords, publication date, funding, related resources, license, and version. Use clear, descriptive titles and structured abstracts that explain what the dataset contains, how it was produced, and its spatial/temporal coverage. Add persistent identifiers (PIDs): • Dataset → DOI • People → ORCID • Projects → Grant number or ROR (Research Organization Registry) Interlink related resources, such as datasets, publications, methodologies, software or reports. Most repositories allow “Related identifiers”. Keep a local copy of metadata (e.g., in JSON, XML, or CSV format) as a backup for institutional archiving. |


| Principles | How to |
| --- | --- |
| Apply standardized vocabularies, code lists or established domain terms to describe data content and context. If possible, avoid creating new vocabularies and ontologies in your project. When local or project-specific terms are used, provide crosswalks or mappings to widely used vocabularies. | Identify the relevant vocabulary or established domain terms source early in the project: •  for agricultural concepts •  for environmental terms •  for spatial data •  •  •  Use the suggested keywords from your repository’s predefined list — this ensures linking to standard vocabularies automatically. For attributes or variables in datasets, provide code lists or lookup tables that explain categorical values (e.g., soil texture codes). When using project-specific terminology, create a mapping table linking local terms to standard equivalents (crosswalk). Store it with your dataset. For ontologies or semantic models, reference them by URI where possible (e.g., from  or ). |


| Principles | How to |
| --- | --- |
| Clearly specify the terms under which data and knowledge can be reused. Always use already existing, standardised licences. Provide machine-readable licensing information in metadata. FAIR doesn’t necessarily mean open. In most repositories, you can also safely store resources with restricted access. | Before publication, review whether your data contains personal, confidential, or sensitive information (e.g., farmer names, coordinates of private land). If necessary, anonymize or aggregate data before release. Choose a  compatible with your data type (If possible, choose one of the . They are widely used, and easy to understand):  – requires attribution (recommended default)  – public domain  – non-commercial use  – for databases Include the license text or identifier (e.g., ) in your metadata record. Choose the most open license possible, while respecting privacy, ethical and legal constraints. Ensure the repository captures the license as machine-readable metadata. If access restrictions apply, specify the access level (open, embargoed, restricted) and provide contact information for requests. Mention licensing and access terms clearly in your DMP and README file. - When in doubt, consult your institutional data steward or legal office before choosing the license. |
