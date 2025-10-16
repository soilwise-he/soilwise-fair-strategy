# Guidance for FAIR Publication and Citation of Earth Imagery in Soil Research

## 1. Purpose

Earth observation data—such as satellite, airborne, and drone imagery—are increasingly used to model, understand, and predict soil properties, soil health indicators, and landscape interactions. While these datasets are often too large or externally hosted to deposit in traditional research repositories, they must still be FAIR: Findable, Accessible, Interoperable, and Reusable—especially when used as covariates in soil mapping or related earth system products.

This guidance explains how to properly reference, document, and ensure traceability of earth imagery in FAIR-compliant publications.



## 2. Key Challenges

Unlike traditional datasets:

* Earth imagery is high-volume and externally hosted.
* Data is typically accessed from platforms or cloud services (e.g. Google Earth Engine, Copernicus, Amazon Web Services, NASA DAACs) rather than institutional repositories.
* Frequently updated versions (e.g. Sentinel, Landsat, PlanetScope) complicate referencing.
* Derived products (e.g. NDVI, texture layers, composites) often lack explicit citation metadata.

Despite these challenges, FAIR publication requires persistent references, transparency of processing, and reproducibility.



## 3. FAIR Principles Applied to Earth Imagery

###   Findable

Even if large imagery files aren’t deposited in repositories:

* Identify data source/platform (e.g. Google Earth Engine, Sentinel Hub, Copernicus DIAS).
* Include dataset identifiers:

  * Mission/sensor (e.g. Sentinel-2 MSI, Landsat 8 OLI, PlanetScope)
  * Product name and processing level (e.g. L2A surface reflectance)
  * Tile or scene ID(s), date ranges, and spatial extent
  * Cloud collection ID or asset ID (if available)
* If a derived layer (e.g. NDVI or PCA stack) was used, document the algorithm and input scenes.

###  Accessible

Instead of a repository deposit:

* Document how and where imagery can be accessed.

  * Platform or API (e.g. `COPERNICUS/S2_SR`, `LANDSAT/LC08/C02/T1_L2`)
  * Access conditions (open data, license requirements, API keys)
  * Links to provider documentation (e.g. Copernicus Hub, USGS Earth Explorer)

If imagery access requires credentials, include:

* Instructions for obtaining access.
* Reference to the licensing terms.

###  Interoperable

To promote reuse and linkage:

* Record CRS (e.g. EPSG:4326 or UTM Zone 33N)
* Specify file formats (e.g. GeoTIFF, COG, NetCDF, JPEG2000)
* Use machine-readable metadata formats where possible (e.g. STAC, ISO 19115)

###  Reusable

Ensure traceability and transparency by documenting:

* Acquisition dates or time windows
* Preprocessing steps (e.g. atmospheric correction, mosaicking, scaling)
* Derived layers created (e.g. vegetation index, bare soil index, elevation derivatives)
* Version or revision number of the source dataset
* Citation or attribution guidelines of the data provider



## 4. Citation Practices for Earth Imagery

Even when imagery is not physically deposited, it must still be citable using a combination of:

* Source dataset name and identifier
* Access platform/service
* Acquisition time window
* Processing steps or composite method
* Persistent identifiers where available (e.g. DOI, STAC item ID, AWS S3 path, USGS/ESA scene ID)


## 5. Recommended Metadata Fields

At minimum, store or publish the following for each imagery product used as a covariate:

| Metadata Element               | Requirement                                       |
| --- | --- |
| Data source/platform           | e.g. Copernicus, USGS, Planet, GEE, NASA DAAC     |
| Sensor/mission                 | e.g. Sentinel-2 MSI, Landsat 9 OLI                |
| Product level                  | e.g. L1C, L2A, BRDF corrected                     |
| Temporal coverage              | Exact date(s) or period                           |
| Spatial footprint              | Bounding box, region name, or tile ID             |
| Resolution                     | Spatial, temporal, spectral                       |
| Access URL or collection ID    | Include STAC or cloud collection URI if available |
| Version or processing baseline | Required for reproducibility                      |
| Derived indices/processes      | e.g. NDVI, mosaics, gap-filling, resampling       |
| License and attribution        | e.g. ESA Open Access License                      |
| Persistent link (if any)       | DOI, handle, cloud object path                    |



## 6. Reproducibility for Derived Covariates

When imagery is used to generate predictors for soil modeling:

* Document computation steps (e.g. bands, indices, thresholds).
* Record software, libraries, and versions (e.g. GEE script ID, Python/R code).
* Provide links or copies of scripts where possible.
* Store exact datasets and date filters.

If storing the derived product is infeasible:

* Share the workflow and references to input layers instead.



## 7. Integration in FAIR Soil Products

When satellite or drone imagery is used as covariates in soil prediction or mapping:

* Include full citation(s) in the metadata of the soil product.
* For each covariate, mention:

  * Imagery source & version
  * Date or period used
  * Transformation or resampling method
  * Resolution and CRS
* Provide a data dictionary or table mapping covariate names to imagery sources.



## 8. Repository Strategy

Even though imagery files aren’t uploaded:

* Publish metadata and citation details in the FAIR repository alongside the soil product.
* Link imagery inputs via:

  * DOI placeholders (if available)
  * Cloud-native identifiers (STAC, S3 path, Earth Engine assets)
  * Dataset citation strings

Where derived imagery is small enough (e.g. aggregated rasters), include those layers directly.



## 9. Summary of Best Practices

| Goal                     | What to Do                                                |
| ---  | --- |
| Ensure Findability       | Cite source, collection ID, tile/date info                |
| Make Accessible          | Provide access path or platform instructions              |
| Support Interoperability | Use standard CRS, formats, machine-readable metadata      |
| Enable Reuse             | Document preprocessing, versions, licenses, and citations |



## 10. Conclusion

FAIR publication of earth imagery are challenging for full file deposition, but it does require traceability, transparency, and citable identifiers. By documenting access pathways, identifiers, transformations, and licensing, earth imagery remains a reusable component of derived data products.

