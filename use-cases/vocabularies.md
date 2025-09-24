---
title: Strategy Document for the Creation and Adoption of Vocabularies in Soil Mission Research Projects 
Authors: 
   - Paul van Genuchten
   - Kathi Schleidt
   - Tomas Pavelka   
Date: 11-08-2025   
Version: 0.2   
Project: An open access knowledge and data repository to safeguard soils (Soilwise/101112838) 
---

# Introduction 

   
The effective use of vocabularies and glossaries is critical in Horizon Europe research projects to ensure interoperability, clarity, and reuse of knowledge. This strategy outlines best practices for the creation, adoption, and maintenance of vocabularies throughout the project lifecycle. 

 

# Why Agree on a Vocabulary at the Start of the Project 

- Common Understanding: Establishing a shared vocabulary at the project outset fosters a mutual understanding among diverse stakeholders.   
- Improved Collaboration: A clear glossary reduces ambiguity and enhances communication across disciplines, countries, and institutions.   
- Data Interoperability: Agreeing on standard terms supports seamless data integration, especially in multi-source datasets.   
- Knowledge Retention: It aids in documentation, ensuring that terms and their meanings are preserved for future reference and impact assessment. 

# Characteristics of Effective Vocabularies 

- Uniquely Identifiable Terms: Each concept or term should be assigned a persistent, globally unique identifier (e.g., URI) to avoid confusion and enable precise referencing.   
- Rich Semantic Relationships: Terms should be connected through relations with eligible vocabularies, such as AgroVoc, Gemet, EuroVoc, ISO11074 via relations such as:   
- skos:exactMatch: Indicates that two terms can be used interchangeably.   
- skos:closeMatch: Suggests the terms are similar but not interchangeable in all contexts.   
- skos:broader: Shows a hierarchical relationship where one term is more general.   
- skos:narrower: Shows a more specific concept within a broader term.   
- Alignment with Existing Standards: Reuse and align with established vocabularies (e.g., SKOS, Dublin Core, schema.org) whenever possible. 

# Steps for Vocabulary Management 

1. Initial Scoping: Identify key domains and stakeholders.   
2. Term Collection: Gather terms from partners, existing ontologies, and relevant documentation.   
3. Consensus Building: Facilitate workshops to agree on preferred terms and definitions.   
4. Modeling and Encoding: Represent the vocabulary using semantic web standards (e.g., RDF, SKOS).   
5. Publishing: Publish the vocabulary on a persistent, accessible platform with both human-readable and machine-readable views. Register the published vocabulary in vocabulary catalogues, such as    
6. Maintenance: Regularly review and update the vocabulary to reflect project developments. 

# Terms collection in a spreadsheet 

Spreadsheets are an effective tool to collect and discuss terms with contributors. The spreadsheet is either hosted on a shared environment (sharepoint, google docs) with multiple editors, or hosted as a CSV in Github (contributions added via pull requests). 

A typical structure for the spreadsheet is: 

| ID  | preflabel  | altlabel  | definition  | Exact- match  | Close-match  | broader  | narrower  |
| :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| tree  | tree  | tree crop  | woody perennials  | http://aims.fao.org/aos/agrovoc/c\_34134  | \#wood, \#timber  | \#forest  | \#oak, \#spruce, \#pine  |

 

Labels are classified as the preferred label and alternative labels (synonyms). The 4 last columns indicate relationships between concepts, either relations within the document (indicated with \#), but it can also have links to remote vocabularies. 

Labels and Definition can be captured in various languages, either as extra columns or in a separate spreadsheet 

| ID  | preflabel  | altlabel  | definition  | language  |
| :---- | :---- | :---- | :---- | :---- |
| tree  | tree  |   |   | en  |
| tree  | arbre  |   |   | fr  |

 

# Provide a machine readable interface 

Simple Knowledge Organization System ([SKOS](https://www.w3.org/2004/02/skos/)) is a commonly used ontology to organise concepts their definitions and relations. Various guidances and tools exist which are able to produce a SKOS concept scheme from a spreadsheet. The result is a json-ld, xml/rdf or turtle file, which can be deposited at a vocabulary repository, such as  

Concepts are identified by an identifier which preferably resolve to the definition of the concept, when used as web address in a browser or data tool. The prefix of the identifier ([https://example.com/vocab](https://example.com/vocab)\#) references the actual document or a proxy is placed in between, which forwards users to where the document is hosted. 

Commonly available proxy solutions are [w3id.org](https://w3id.org/) and [doi.org](https://doi.org/).  

Vocabulary repositories such as [AgroPortal](https://agroportal.lirmm.fr/) typically facilitate the full process of deposit and handling of concept identifiers. 

 
# Providing an HTML Interface for Human Browsing   

To ensure accessibility and usability of the vocabulary by non-technical users, an HTML interface should be developed. This interface should: 

- Present vocabulary entries in an intuitive, searchable, and hierarchical format.   
- Allow users to browse terms, view definitions, and explore semantic relationships (broader, narrower, exact match, etc.).   
- Include filtering, keyword search, and alphabetic navigation.   
- Support multilingual labels and definitions if applicable.   
- Be responsive and accessible across devices. 

Recommended approaches include: 

- Using tools such as [Skosmos](https://skosmos.org/), [Widoco](https://github.com/dgarijo/Widoco) or [VocView](https://github.com/ternaustralia/vocview) to render SKOS vocabularies as user-friendly HTML pages.   
- Embedding RDFa or JSON-LD in the HTML to maintain machine-readability alongside human-readability. 

If proxy software is used, the proxy can be configured to identify if the visiting client is a web browser or a machine, and forward the client to the relevant representation of the concept. 

This mechanism is used by Glosis Web Ontology. Depending on the type of client a request to [http://w3id.org/glosis/model/layerhorizon/ManganeseExtractableElements](http://w3id.org/glosis/model/layerhorizon/ManganeseExtractableElements) is forwarded to the relevant location. 

# Conclusion   

Agreeing on and managing vocabularies is foundational to the success of Horizon Europe research projects. By ensuring consistency, discoverability, and interoperability of terms, research outputs become more usable and impactful within and beyond the project consortium. 

 

 

