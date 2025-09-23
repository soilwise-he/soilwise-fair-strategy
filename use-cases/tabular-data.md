---
title: Sharing Soil Observation Data on the Web Using CSV and Linked Data 

---

# Introduction 

Soil observation data is often shared in tabular formats, such as Excel, Access, CSV, Sqlite. 
Which phenomena are observed, using which procedure, in which unit is often explained in a related 
report or readme.txt document. This document provides a strategy on how to encode this information 
in using a standardised approach, so also machines can parse this information. The document also provides 
more generic information about capturing data in tabular formats.


# Excel as a dataformat

Excel is a popular format to share data in the academic soil domain. The Excel format is however not endorsed by the FAIR principles, because it is a proprietary format. Another challenge of Excel is that the excel format is semi-structured, due to its nature of being a data processing tool. 

In order to use the excel format as a data exchange format, consider the following aspects in order to facilitate data consumption in an automated way. 

- An Excel document can have multiple sheets, each sheet is considered as a single table
- The first line of the sheet is used to define the column headers of the table
- Column headers are machine readible (no spaces and special characters, not start with a number)
- Sheets do not use merged cells or computed fields
- All values in a column (except the header) have a single common type (date, numeric, string)
- Cells with textual content do not contain 'new line' characters

As alternatives, consider formats such as Sqlite, CSV, Parquet, JSON, XML. Various desktop and online tools exist to transform the data. Consider for example Python Pandas, R, GDAL, [table.sturio](https://table.studio/convert).  


# Column metadata using CSVW

The W3C standardised approach [CSV on the Web](https://csvw.org/) enables interoperability of data via annotations on a CSV. The annotations are stored in a dedicated JSON context file, which you can deposit in a repository alongside your dataset.
Dedicated parsers are able to parse an annotated CSV to RDF. The CSV itself will not be changed, so in theory anyone can annotate an existing CSV to make it interoperable. 

Interoperability is increased if established ontologies are used, such as schema.org, dublin core, foaf and skos and common vocabularies such as agrovoc, eurovoc and gemet.

## Workflow 

Step 1: Annotate the CSV using CSV on the Web (CSVW) 

- Create a CSVW metadata JSON file describing the CSV structure and semantics.   
- Use the [CSVW standard](https://www.w3.org/TR/tabular-data-primer/) to define:   
- Column datatypes   
- Column meanings using URIs from ontologies   
- Primary keys (e.g., Location\_ID)   
- Row-level subject generation pattern (e.g., http://example.org/soilobs/{Location\_ID}) 

## Step 2: Use Standard Vocabularies/Ontologies 

Align the properties and structure to well-known vocabularies: 

- Geo (wgs84\_pos, GeoSPARQL) for location   
- QUDT or OM (Ontology of Units of Measure) for measurement values   
- SOSA/SSN (Semantic Sensor Network Ontology) for observations   
- PROV for provenance (e.g., who collected the sample and when) 

 
## Step 3: Convert to RDF or JSON-LD 

Use tools like: 

- [csvwlib](https://pypi.org/project/csvwlib) python
- [RDFTabular](https://github.com/atomgraph/RDFTabular) - java 
- [csv2rdf](https://www.w3.org/2012/pyRdfa/) - r

Convert annotated CSV to RDF Turtle or JSON-LD for publishing. 


## Step 4: Publish the Data 

- Host the original CSV, the context file and the RDF/JSON-LD on a repository (zenodo/dataverse) 
- As part of the publication, provide sensible metadata (keywords, authors, license, dates, references)  


# Best Practices 

- Use open and structured formats
- Use standardized ontologies and units  
- Include provenance and temporal information   
- Provide versioning and licensing information   
- Validate data with CSVW validators and RDF validators 


 

 

 
