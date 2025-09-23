---
title: A gpkg template for the INSPIRE Soil theme
---

This strategy aims to enable transcoding and streamlining of national observation data on soils, by general terms enabling INSPIRE compliant soil data sharing. The strategy builds on the solid foundations of the INSPIRE Directive, taking advantage of the latest developments in the process of modernisation and simplification of its technical requirements in the wider context of the European Strategy for data and the Green Deal Data Space. Key components are:

- a streamlined soil database in GeoPackage encoding format, optimized in view of data compliance to INSPIRE; 
- a data transformation and harmonisation processes; 
- a semantic harmonisation and code list management procedures and tools. 

The GeoPackage is an SQLite database container that can store both vector and raster data as well as non-spatial data. SQLite is a portable, lightweight encoding, widely compatible across environments, especially efficient where connectivity and bandwidth are limited, and has the advantage to be portable, and can be used directly into GIS applications, such as QGIS.

Since November 2022, with the official endorsement of a related INSPIRE Good Practice, the GeoPackage can be used as an alternative (to GML) encoding for the delivery of INSPIRE datasets. In accordance with the INSPIRE Good Practice for the “GeoPackage encoding of INSPIRE datasets”, a logical model for the GeoPackage encoding of Soil data has been developed, starting from the INSPIRE conceptual model. The model will be made available to the wider INSPIRE community via the INSPIRE Helpdesk and will effectively become a template for those INSPIRE implementers who choose to deliver INSPIRE soil data using the geopackage format.

The strategy has been developed under the H2020 European Joint Research Programme [EJPSOIL](https://ejpsoil.eu/), the working package 6 aimed at supporting harmonised soil information and reporting. A so called “Software framework for a shared agricultural soil information system”, deliverable EJP SOIL_D6.4.

Read more at [github](https://github.com/ejpsoil/inspire_soil_gpkg_template)