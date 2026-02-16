---
title: Use cases soil data 
---

A selection of use cases, combined with dedicated guidance on how to increase FAIR aspect of a data or knowledge publication.

The cases are clustered in three topics:

- [Soil observation data](#soil-observation-data) 
- [Soil Maps](#soil-maps), predicted distribution of soil properties or soil classifications.
- [Soil data related resources](#soil-data-related-resources)

---

# Soil Observation data

## Common aspects in describing observation data

While SoilWise supports an array of different encodings for observation data, each tailored for different usage areas, these models are united through the underlying conceptual OGC/ISO Observations, Measurements and Samples Standard, semantically formalized under W3C SSN/SOSA. This model entails the use of generic Observation concepts.

[Read more](https://github.com/soilwise-he/soil-observation-data-encodings/blob/main/COMMON/Readme.md)


## Tabular Soil Observation Data

Tabular formats such as Excel, CSV, Shapefile are a common approach to share Soil data. Locations as rows, observed properties as columns. Improving the metadata at column level offers an opportunity to describe these datasets more interoperable.

Soilwise prepared a tutorial which considers various aspects on existing practices and suggest minor optimisations and potential to this approach.

[Continue reading](./tabular-data.md)

## INSPIRE Soil data in a GeoPackage format

The GeoPackage format for sharing INSPIRE SOIL data is an approach to store data in a relational database while conforming to the INSPIRE Soil conceptual model. Traditionally INSPIRE Soil Observation data and maps require to be shared using a dedicated GML encoding, which was quite a challenge for both data procucers and consumers. The INSPIRE Good Practice using GeoPackage specifically for Soil data has been prepared by the EJP Soil H2020 programme and is further developed in the SoilWise project. 

- [Introduction to the INSPIRE SOIL GeoPackage](https://github.com/soilwise-he/Geopackage-so/blob/main/documentation/index.md)
- [GeoPackage Data Loading & Modelling Guide](https://github.com/soilwise-he/Geopackage-so/blob/main/documentation/data_loading.md)
- [Tutorial on how to use QGIS to populate the GeoPackage](https://github.com/soilwise-he/Geopackage-so/blob/main/documentation/index.md)

## Sharing predicted soil properties, based on spectroscopy 

Spectroscopy is a relatively novel approach to observe soil properties on soil samples efficiently. The property values are predicted based on a library of reference samples which are assessed both with wet chemistry as well as spectroscopy. A common practice is to deposit the spectra of the observations as part of the data as well as a reference to the spectral library used for the prediction. 

[Continue reading](./spectroscopy.md)

## Earth imagery

Earth imagery such as satelite and drone data are increasingly used to better understand soils and their interaction with climate, landscape and crops. Imagery data is often used as a predictor of soil property distribution. Due to their size and origin imagery data is usually not deposited in formal repositories, but available from mass storage such as Google Earth Engine, Copernicus or Amazon Cloud, which can be a challenge for citation of the material.

[Continue reading](./earth-imagery.md)

---

# Soil maps

## Traditional Soil maps

Soil maps visualize the distribution of soil properties in space. Properties visualised in maps are: Soil Classification, Soil thickness and Groundwater level. The maps are generated in field studies where experts analyse soil profiles at optimal locations based on landscape characteristics and then deliniate areas with similar charateristics.

For a given deliniated area a reference is made to (one or more) selected reference profiles, which best represent the soil in that area.

The relation between delineated areas and reference profiles is, amongst others, modelled in the INSPIRE Soil Data Model.


## Digital Soil Maps

Digital Soil Maps, such as soil property distribution predictions, agricultural decision support and soil health indicator changes are increasingly produced using digital techniques. 

An important factor to facilitate reuse is extensive description of lineage. Which source data and procedures have been used to derive the resulting product.  

[Continue reading](./soil-property-indicator-maps.md)

---

# Soil data related resources

## A Soil Health Knowledge Graph

What is soil health? how does it relate to soil threads and  ecosystem functions? Common questions when entering our domain. Answers to these questions are captured in the [Soil Health Knowlegde graph](https://soilwise-he.github.io/soil-health/) and the related [Soil-vocabulary](https://soilwise-he.github.io/soil-vocabs).

## Archiving Project Websites and Knowledge Hubs

Project Websites and Knowledge Hubs benefit from archival of their content at various stages during and after the realisation of the website. A deposit of the website content is persistently citable using DOI and the risk of information loss at website discontinuation is limited.

[Continue reading](./knowledge-hubs-and-websites.md)

## Reuse of common Soil vocabularies

Soil vocabularies (glossaries) are commonly produced at the start of projects, to align definitions between project partners. Vocabularies are also an important driver of findability and interoperabilty.

[Continue reading](./vocabularies.md)

## Harmonizing Soil Observation data using Pedo Transfer Funtions

Soil observation datasets are often heterogeneous due to differences in sampling depth, measurement techniques, laboratory methods, temporal coverage, and reported soil properties. Harmonization is the process of transforming these disparate observations into a consistent and comparable form suitable for integrated analysis, modeling, and decision-making.

[Continue reading](./harmonise-ptf.md)