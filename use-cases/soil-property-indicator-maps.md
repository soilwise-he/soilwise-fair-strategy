# Guidance for FAIR Publication of Soil Property and Soil Health Indicator Maps

## 1. Purpose

This document provides best practices for ensuring that gridded soil products—such as predicted distributions of soil properties or health indicators across space and/or time—are published according to the FAIR principles: Findable, Accessible, Interoperable, and Reusable. These products are often generated using machine learning (commonly Random Forest), based on point observations and environmental co-variates. Proper documentation of methods, inputs, uncertainties, and usage limitations is essential.

## 2. Core Components of Soil Map Products

### 2.1 Point Observation Data

Each dataset used to train or validate the model must be referenced and, where possible, shared or openly cited.

Minimum requirements:

* Persistent identifier (e.g. DOI, accession number)
* Sampling design overview (source campaigns or databases)
* Attributes measured (e.g. SOC, pH, bulk density, biological indicators)
* Spatial coordinate reference system
* Temporal coverage (when collected)
* Licensing and access conditions
* Link to associated metadata

If privacy or license restrictions prevent data sharing, reference the repository or publication where the data can be requested.

### 2.2 Co-variate Datasets

All co-variates used to fit the model must be properly documented to ensure reproducibility.

Key metadata:

* Dataset name and version
* Description (e.g. climate, terrain, remote sensing, parent material)
* Spatial resolution and coordinate reference system
* Temporal coverage (for time-specific variables)
* Source and access link (URL, DOI, repository)
* License and usage constraints



## 3. Modeling Framework Documentation

### 3.1 Algorithm Description

Clearly state:

* Algorithm used (e.g. Random Forest)
* Software or library (e.g. scikit-learn, ranger, caret, R randomForest)
* Version number
* Computing environment details (OS, language version, dependencies)

### 3.2 Model Hyperparameters and Fit

Document:

* Number of trees
* Node size, mtry/feature selection approach
* Cross-validation or validation method
* Train/test split or resampling strategy
* Feature importance metrics, if calculated

Include or link to:

* Scripts or notebooks used for training and prediction
* Logs of training runs or configuration files

### 3.3 Model Performance Metrics

Provide relevant fit metrics, such as:

* RMSE, MAE, R² (for continuous properties)
* Confusion matrix, kappa, AUROC (if classification)
* Spatial or temporal cross-validation
* Any external validation datasets



## 4. Product Metadata and Publication Format

### 4.1 Core Metadata for the Published Map

For each soil map (raster or vector), make sure metadata includes:

* Product title and abstract
* Target property or indicator (select from common vocabularies)
* Spatial resolution
* Temporal reference (year, season, baseline or scenario)
* Spatial extent and coordinate reference system
* Version or edition number
* Contact information or responsible organization

### 4.2 Attribution to Inputs and Model

Include references to:

* Point datasets (with identifiers)
* Co-variates (with versions and licenses)
* Model description, parameters, and performance

These should be captured in metadata fields (e.g. ISO 19115, Dublin Core, DCAT, or INSPIRE-compliant formats).

### 4.3 File Formats

Preferred FAIR-friendly formats:

* Raster: GeoTIFF, NetCDF, Cloud-Optimized GeoTIFF
* Vector: GeoPackage, shapefile (as fallback), GeoJSON
* Metadata: XML, JSON, or YAML aligned with standards
* Model Docs: PDF, Markdown, or linked code repository



## 5. Uncertainty and Usage Limitations

### 5.1 Uncertainty Representation

Publish one or more of the following:

* Pixel-level uncertainty or prediction interval maps
* Standard error or variance layers
* Validation residual surfaces
* Confidence class maps

### 5.2 Usage Constraints and Limitations

Document:

* Spatial or temporal domains for which predictions are valid
* Known gaps or biases (e.g. underrepresented soil types or regions)
* Limitations due to input data density or co-variate quality
* Scale constraints (e.g. not suitable for farm-level decisions)

Include a clear statement on:

* Appropriate applications (e.g. regional modeling, national planning)
* Inappropriate uses (e.g. site-specific legal or regulatory decisions)

### 5.3 Licensing

Specify:

* License type (e.g. CC-BY, CC0, ODbL)
* Any attribution requirements
* Citation instructions



## 6. Accessibility and Reuse

### 6.1 Repository and Access

Deposit map layers and accompanying metadata in a FAIR-compliant repository:

* Examples: Zenodo, Figshare, institutional data portals, INSPIRE-compliant nodes
* Provide persistent identifiers (e.g. DOI)

### 6.2 Interoperability

Publish with:

* Standardized coordinate reference systems
* Open geospatial formats
* Metadata standards (ISO 19115, DCAT, INSPIRE)
* Optional API or OGC services (WMS/WCS/WFS/GeoTIFF over HTTP)

### 6.3 Reproducibility

Where feasible, include or link to:

* Model code and environment specifications
* Data preparation workflows
* Documentation for rerunning or updating predictions



## 7. Versioning and Updates

Track and record:

* Version numbers and release dates
* Changes in point data, co-variates, or model parameters
* Deprecated or superseded versions
* Archive of previous editions for reference



## 8. Citation and Acknowledgment

Provide a formatted citation that includes:

* Title of the dataset
* Version
* Authors or organizations
* Year
* DOI or persistent link

If the map is derived from external datasets, include recommended citations for each.



## 9. Summary Checklist

| Component     | FAIR Requirement                              |
| - |  |
| Point data    | Cited, licensed, persistent ID                |
| Co-variates   | Versioned, referenced, licensed               |
| Model details | Algorithm, parameters, validation, code ref   |
| Map product   | Geospatial metadata, DOI, standardized format |
| Uncertainty   | Published or referenced, explained            |
| Usage limits  | Clearly documented                            |
| Licensing     | Explicit and machine-readable                 |
| Versioning    | Traceable and archived                        |



## 10. Conclusion

By adhering to these guidelines, soil map products become not only publishable but also traceable, interoperable, and reusable across projects, regions, and time. This ensures scientific transparency, policy relevance, and long-term value of soil information systems.

