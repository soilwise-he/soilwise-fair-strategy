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

## Introduction 

   
The effective use of vocabularies and glossaries is critical in Horizon Europe research projects to ensure interoperability, clarity, and reuse of knowledge. This strategy outlines best practices for the creation, adoption, and maintenance of vocabularies throughout the project lifecycle. 

 

## Why Agree on a Vocabulary at the Start of the Project 

- Common Understanding: Establishing a shared vocabulary at the project outset fosters a mutual understanding among diverse stakeholders.   
- Improved Collaboration: A clear glossary reduces ambiguity and enhances communication across disciplines, countries, and institutions.   
- Data Interoperability: Agreeing on standard terms supports seamless data integration, especially in multi-source datasets.   
- Knowledge Retention: It aids in documentation, ensuring that terms and their meanings are preserved for future reference and impact assessment. 

## Characteristics of Effective Vocabularies 

- Uniquely Identifiable Terms: Each concept or term should be assigned a persistent, globally unique identifier (e.g., URI) to avoid confusion and enable precise referencing.   
- Rich Semantic Relationships: Terms should be connected through relations with eligible vocabularies, such as AgroVoc, Gemet, EuroVoc, ISO11074 via relations such as:   
   - exactMatch: Indicates that two terms can be used interchangeably.   
   - closeMatch: Suggests the terms are similar but not interchangeable in all contexts.   
   - broader: Shows a hierarchical relationship where one term is more general.   
   - narrower: Shows a more specific concept within a broader term.   

A typical example of the introduction of a close match relationship is the common scenario that a project decides to adopt a definition for a term which is slightly different then
the definition used in common vocabularies. Alternative consideration could be to contact the administrators of the common vocabulary, to see if there is an interest to adopt the refinement in the definition upstream.

## Steps for Vocabulary Management 

1. Initial Scoping: Identify key domains and stakeholders.   
2. Term Collection: Gather terms from partners, existing ontologies, and relevant documentation.   
3. Consensus Building: Facilitate workshops to agree on preferred terms and definitions.   
4. Modeling and Encoding: Represent the vocabulary using semantic web standards (e.g., RDF, SKOS).   
5. Publishing: Publish the vocabulary on a persistent, accessible platform with both human-readable and machine-readable views. Register the published vocabulary in vocabulary catalogues, such as    
6. Maintenance: Regularly review and update the vocabulary to reflect project developments. 

## Terms collection in a spreadsheet 

Spreadsheets are an effective tool to collect and discuss terms with contributors. The spreadsheet is either hosted on a shared environment (sharepoint, google docs) with multiple editors, or hosted as a CSV in Github. 

A typical structure for the spreadsheet is: 

| ID  | preflabel  | altlabel  | definition  | exact-match  | close-match  | broader  | narrower  |
| :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| tree  | tree  | tree crop  | woody perennials  | http://aims.fao.org/aos/agrovoc/c\_34134  | \#wood, \#timber  | \#forest  | \#oak, \#spruce, \#pine  |

Labels are classified as preferred label and alternative labels (synonyms). The 4 last columns indicate relationships between concepts, either relations within the document (indicated with \#), but it preferably also have links to remote vocabularies (Gemet, Agrovoc). 

Labels and Definition can be captured in various languages, either as extra columns or in a separate spreadsheet 

| ID  | preflabel  | altlabel  | definition  | language  |
| :---- | :---- | :---- | :---- | :---- |
| tree  | tree  |   |   | en  |
| tree  | arbre  |   |   | fr  |


## Provide the vocabulary in a machine readable format 

Simple Knowledge Organization System ([SKOS](https://www.w3.org/2004/02/skos/)) is a commonly used ontology to organise concepts their definitions and relations. Various guidances and tools exist which are able to produce a vocabulary following the SKOS ontology from a spreadsheet. The result is a json-ld, xml/rdf or turtle file, which can be deposited in a vocabulary repository or date repository, such as:

- [Agroportal.eu](https://agroportal.eu/)
- [Zenodo.org](zenodo.org)

## Persistent & intelligent identification of terms

Users aim to reference terms by a unique persistent identification. This persistence of vocabularies is facilitated by repositories. The voacabulary as a whole can be accessed via a DOI. However to reference a term within that vocabulary often is a challenge, because a DOI usually references a landing page for the document, not the document itself. 

The mechanism of referencing a sub section with a document with a hash '#' character, e.g. `https://example.com/vocab#section2` provides a mechanism to reference a term within a bigger document. This mechanism is available for most web pages, rdf formats (such as json-ld, ttl, rdf-xml), and can even be implemented in pdf documents. However the mechanism is not very flexible and intelligent.

Proxy services such as [w3id.org](w3id.org) facilitate intelligent handling of identifiers. This proxy software can typically be configured to identify if the visiting client is a web browser or a machine, and forward the client to the relevant representation of the term (rdf or html). Also, if for some reason a vocabulary needs to be moved to another domain, the proxy configuration enables the migration without altering the w3id.org identifiers.

The w3id proxy mechanism is used by Glosis Web Ontology. Depending on the type of client a request to [http://w3id.org/glosis/model/layerhorizon/ManganeseExtractableElements](http://w3id.org/glosis/model/layerhorizon/ManganeseExtractableElements) is forwarded to the relevant location. 

Vocabulary repositories such as [AgroPortal](https://agroportal.lirmm.fr/) typically facilitate the full process of deposit and intelligent handling of concept identifiers. 

A combination of a repository (for persistence) and proxy (for rich identification options) is optimal for vocabulary deposits. 

## Providing a HTML Interface for Human Browsing   

To ensure accessibility and usability of the vocabulary by non-technical users, a HTML interface should be available. This interface should: 

- Present vocabulary entries in an intuitive, searchable, and hierarchical format.   
- Allow users to browse terms, view definitions, and explore semantic relationships (broader, narrower, exact match, etc.).   
- Include filtering, keyword search, and alphabetic navigation.   
- Support multilingual labels and definitions if applicable.   
- Be responsive and accessible across devices. 

Recommended approaches include: 

- Using tools such as [Skosmos](https://skosmos.org/), [Widoco](https://github.com/dgarijo/Widoco) or [VocView](https://github.com/ternaustralia/vocview) to render SKOS vocabularies as user-friendly HTML pages.
- Use a vocabulary repository such as [AgroPortal](https://agroportal.lirmm.fr/)
- Embedding RDFa or JSON-LD in the vocabulary web page to maintain machine-readability alongside human-readability. 


## Conclusion   

Agreeing on and managing vocabularies is foundational to the success of Horizon Europe research projects. By ensuring consistency, discoverability, and interoperability of terms, research outputs become more usable and impactful within and beyond the project consortium. 


