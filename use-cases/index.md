---
title: Use cases soil data 
---

A selection of use cases, combined with dedicated guidance on how to increase FAIR aspect of a data or knowledge publication.

The cases are clustered in three topics
- [Soil observation data](#soil-observation-data) 
- [Soil Maps](#soil-maps), predicted distribution of soil properties or soil classifications.
- [Soil data related resources](#soil-data-related-resources)

# Soil Observation data

## Common aspects in describing observation data

While SoilWise supports an array of different encodings for observation data, each tailored for different usage areas, these models are united through the underlying conceptual OGC/ISO Observations, Measurements and Samples Standard, semantically formalized under W3C SSN/SOSA. This model entails the use of generic Observation concepts.

[Read more](https://github.com/soilwise-he/soil-observation-data-encodings/blob/main/COMMON/Readme.md)


## Tabular Soil Observation Data

[Tabular Soil Observation Data](./tabular-data.md) is a common format to share Soil data.

This tutorial considers various aspects on existing practices and suggest minor optimisations and potential to these workflows.

## INSPIRE Soil data in a GeoPackage format

[GeoPackage format for sharing INSPIRE SOIL data](./inspire-geopackage.md) is an approach to store data in a relational database while conforming to the INSPIRE Soil conceptual model. Traditionally INSPIRE Soil Observation data and maps require to be shared using a dedicated GML encoding, which was quite a challenge for both data procucers and consumers. The INSPIRE Good Practice using GeoPackage specifically for Soil data has been prepared by the EJP Soil H2020 programme and is further developed in the SoilWise project. 
- [Introduction to the INSPIRE SOIL GeoPackage](https://github.com/soilwise-he/Geopackage-so/blob/main/documentation/index.md)
- [GeoPackage Data Loading & Modelling Guide](https://github.com/soilwise-he/Geopackage-so/blob/main/documentation/data_loading.md)
- [Tutorial on how to use QGIS to populate the GeoPackage](https://github.com/soilwise-he/Geopackage-so/blob/main/documentation/index.md)

## Sharing predicted soil properties, based on spectroscopy data

[Spectroscopy](./spectroscopy.md) is a relatively novel approach to observe soil properties on soil samples efficiently. The properties are predicted based on a library of reference samples which are assessed both with wet chemistry as well as spectroscopy. A common practice is to deposit the spectra of the observations as part of the data as well as a reference to the spectral library used for the prediction. 

## Earth imagery

[Earth imagery](./earth-imagery.md) such as satelite and drone data are increasingly used to better understand soils and their interaction with climate, landscape and crops. Imagery data is often used as a predictor of soil property distribution. Due to their size and origin imagery data is usually not deposited in formal repositories, but available from mass storage such as Google Earth Engine, Copernicus or Amazon Cloud, which can be a challenge for citation of the material.

# Soil maps

Soil maps visualize the distribution of soil properties in space and time.

## Soil property and indicator maps

[Soil property and indicator maps](./soil-property-indicator-maps.md), such as soil property distribution predictions, agricultural decision support and soil health indicator changes are produced with conventional and pedometric approaches. An important factor to facilitate reuse is extensive description of lineage. Which source data and procedures have been used to derive the resulting product.  

# Soil data related resources

## A Soil Health Knowledge Graph

What is soil health? how does it relate to soil threads and  ecosystem functions? Common questions when entering our domain. Answers to these questions are captured in the [Soil Health Knowlegde graph](https://soilwise-he.github.io/soil-health/) and the related [Soil-vocabulary](https://soilwise-he.github.io/soil-vocabs).

## Archiving Project Websites and Knowledge Hubs

[Project Websites and Knowledge Hubs](./knowledge-hubs-and-websites.md) benefit from archival of their content at various stages during and after the realisation and maintenance of the website. A deposit of the website content is persistently citable using DOI and the risk of information loss at website discontinuation is limited.

## Reuse of common Soil vocabularies

[Soil vocabularies](./vocabularies.md) (glossaries) are commonly produced at the start of projects, to align definitions between project partners. Vocabularies are also an important driver of findability and interoperabilty.

## Harmonizing Soil Observation data using Pedo Transfer Funtions

Soil observation datasets are often heterogeneous due to differences in sampling depth, measurement techniques, laboratory methods, temporal coverage, and reported soil properties. Harmonization is the process of transforming these disparate observations into a consistent and comparable form suitable for integrated analysis, modeling, and decision-making. [This document](./harmonise-ptf.md) describes the current state on this topic.