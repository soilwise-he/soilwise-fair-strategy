---
title: Sharing Soil Observation Data using tabular formats 
---

# Introduction 

Soil observation data is often shared in tabular formats, such as Excel, Access, CSV, Sqlite, ESRI Shapefile. 
This document provides a strategy on how to increase the interoperability of tabular datasets.

Which phenomena are observed, using which procedure, in which unit? These aspects are often explained in a related 
report or readme.txt document. Unfortunately this information can not easily be read by machines. To increase findability 
and interoperability of tabular datasets this document provides a strategy on how to encode this information 
using a standardised approach. The document also provides more generic information about capturing data in tabular formats.


# Excel as a dataformat

Excel is a popular format to share data in the soil domain. The Excel format is not optimal from the prespective of the FAIR principles:

- Excel is a proprietary format (requires proprietary software to modify it) 
- The format is semi-structured (it does not enforce table structure and data types) 

As alternative formats, consider [Sqlite](https://sqlite.org/), CSV, JSON, XML. Various desktop and online tools exist to transform data. Consider for example Python Pandas, R, GDAL, [table.studio](https://table.studio/convert).

In order to use the excel format as a data exchange format, consider the following aspects in order to facilitate data consumption. 

- An Excel document can have multiple sheets, each sheet is considered as a single table, a typical case is one sheet describing the sampling locations and next sheets providing observations made at those locations.
- The first line of the sheet is used to define the column headers of the table
- Column headers are machine readible (prevent special characters)
- Sheets do not use merged cells
- All values in a column (except the header) have a single common type (date, numeric, string)
- Cells with textual content do not contain 'new line' characters
- One of the sheets best contains metadata about the other sheets (description of column headers, unit of measure, etc)


# Column metadata as CSVW

The W3C standard [CSV on the Web](https://csvw.org/) enables interoperability of data via a sidecar file which is 
stored along side your tabular CSV. 
The csv-metadata file is a JSON encoded file which contains annotations for each of the columns in the dataset. 
For each column you can indicate the property which the column represents, the unit of measure used to express 
the value and relevant other metadata.
Dedicated parsers are able to parse an annotated CSV. The CSV itself will not change, so in theory anyone can 
annotate an existing CSV to make it interoperable. 

Interoperability is increased if established ontologies are used, such as [schema.org](https://schema.org), [dublin core](https://www.dublincore.org/specifications/dublin-core/dcmi-terms/), [skos](https://www.w3.org/2004/02/skos/). And common vocabularies such as [Agrovoc](https://agrovoc.fao.org/) and [Gemet](https://www.eionet.europa.eu/gemet/en/about/) as well as unit of measure vocabularies such as [UCUM](https://ucum.org/) and [OM](https://github.com/HajoRijgersberg/OM).

## Workflow 

Step 1: Annotate a CSV using CSV on the Web (CSVW) 

- Create a CSVW metadata JSON file, describing the CSV structure and semantics. Tools, such as [CoW](http://cattle.datalegend.net) exist to create a minimal context file. 
- Use the [CSVW standard](https://www.w3.org/TR/tabular-data-primer/) to define:   
  - Column datatypes   
  - Column meanings using URIs from ontologies   
  - Primary keys   
  - Row-level subject generation pattern (e.g., http://example.org/soilobs/{Sample.ID}) 

## Step 2: Use Standard Vocabularies/Ontologies 

Align the properties and structure to well-known vocabularies: 

- Geo (WKT, GeoSPARQL) for location   
- QUDT or OM (Ontology of Units of Measure) for measurement values   
- SOSA/SSN (Semantic Sensor Network Ontology) for observations   
- PROV for provenance (e.g., who collected the sample and when) 

## Step 3: Convert to RDF or JSON-LD 

In this step you will validate if the CSVW is properly structured, by serializing the 
data+metadata to a knowledge grap, and validate the graph using SHACL. You could upload the knowledge graph 
to the data repository, but it is not neccesary, because it contains the same content as the CSV+metadata.

Use one of these tools to generate the knowledge graph (RDF): 

- [csvwlib](https://pypi.org/project/csvwlib) - python
- [csv2rdf](https://github.com/Swirrl/csv2rdf/) - java
- [RDFTabular](https://ruby-rdf.github.io/rdf-tabular/) - ruby  
- [csvwr](https://cran.r-project.org/web/packages/csvwr) - r - [Tutorial](https://cran.r-project.org/web/packages/csvwr/vignettes/read-write-csvw.html)

## Step 4: Validate the Data

You can use SHACL or schema.org validator to validate the generated RDF. 

## Step 5: Publish the Data 

- Host the original CSV, the context file and the RDF/JSON-LD on a repository (zenodo/dataverse) 
- As part of the publication, provide sensible metadata (keywords, authors, license, dates, references)  


 

 

 
