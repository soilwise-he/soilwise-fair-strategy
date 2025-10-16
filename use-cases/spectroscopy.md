# Guidance for Persisting Soil Sample Observation Data from Spectrometry and Wet Chemistry

## 1. Purpose

This document outlines best practices for storing, documenting, and referencing soil sample observation data acquired via spectrometry techniques. It addresses two common workflows:

1. Calibration campaigns, where a subset of samples is analyzed using both wet chemistry and spectrometry to build or expand a spectral library.
2. Prediction campaigns, where only spectrometry is performed and an existing spectral library is used for inference.

In both cases, spectral libraries must be traceable, documented, and referenced correctly by each spectral observation.



## 2. Core Data Entities

### 2.1 Soil Sample

Each physical soil sample should be represented as a unique entity with:

* Sample ID (persistent, unique identifier)
* Collection metadata:

  * Geographic location (coordinates, site name)
  * Depth, horizon, or core information
  * Date and method of collection
  * Collector or organization
* Storage and handling information (if relevant)

### 2.2 Spectral Observation

Each spectrometry measurement should be stored as its own record:

* Link to Sample ID
* Spectrometer/device ID and model
* Wavelength range and resolution
* Acquisition settings (e.g. gain, integration time, replicates)
* Date of measurement and operator
* Preprocessing steps (e.g. smoothing, normalization)
* Reference to the spectral library used for calibration or prediction

### 2.3 Wet Chemistry Observation

When performed:

* Link to Sample ID
* Analytes measured (e.g. SOC, pH, nutrients, texture)
* Laboratory method and protocols (e.g. ISO, USDA, local standards)
* Laboratory or institution
* Units and uncertainty
* Date of analysis, analyst or laboratory code



## 3. Spectral Libraries

### 3.1 Definition

A spectral library is a curated dataset that includes:

* Spectral observations linked to samples with known reference values (typically from wet chemistry)
* Calibration models derived from those paired data
* Potential metadata on environmental or soil type ranges

### 3.2 Library Metadata Requirements

Each spectral library should have its own identifier and descriptive record with:

* Library ID (unique identifier)
* Purpose (e.g. SOC prediction, multi-property calibration)
* Scope (geographical region, soil types, date range)
* Device(s) used
* Preprocessing and modeling approach (e.g. PLSR, machine learning)
* Versioning details and modification history
* Data quality criteria and validation metrics
* Contributors/maintainers and contact details
* Link to the paired wet chemistry dataset used to build or update it



## 4. Referencing Spectral Libraries

### 4.1 For Calibration Samples

When a sample subset undergoes both wet chemistry and spectrometry:

* Each spectral observation must be tagged with:

  * The Library ID it contributes to or helps calibrate
  * Whether it is part of calibration, validation, or test sets

* Wet chemistry records should be clearly tied to corresponding spectral records, using the Sample ID.

### 4.2 For Prediction Samples

When only spectrometry is performed:

* Each spectral sample must reference the Library ID (and version) used to generate predictions.
* Store predicted values separately but linked to:

  * The Sample ID
  * The spectral observation record
  * The specific model version within the library



## 5. Data Persistence and Storage Structure

### 5.1 Database or File-Based Approach

Use a structured and queryable system (e.g. relational database, standardized file formats with metadata). At minimum, maintain:

* Samples Table
  Sample ID, collection metadata.

* Spectral Observations Table
  Spectral file reference, Sample ID, device metadata, spectral library reference.

* Wet Chemistry Table
  Sample ID, analytes, lab methods, values, units.

* Spectral Library Table
  Library ID, metadata, versioning, reference to calibration data.

* Model or Prediction Table (if applicable)
  Prediction target, model version, linked spectral observation.

### 5.2 File Format Recommendations

* Spectral data: e.g. CSV, JSON, ENVI files, or binary vendor formats with metadata sidecar files.
* Metadata: embed or link in machine-readable form (e.g. YAML, JSON).
* Spectral library bundles: zip/TAR structures including documentation and metadata file.

Ensure every file contains or links to identifiers for:

* Sample ID
* Spectral observation ID
* Library ID



## 6. Versioning and Traceability

* Assign version numbers to spectral libraries and calibration models.
* Never overwrite older versions—archive instead.
* Record provenance:

  * Who created or updated a library
  * Date and reason for changes
  * Data or models added, removed, or recalibrated



## 7. Quality Control and Validation

### 7.1 During Calibration

* Document selection criteria for calibration and validation samples.
* Store cross-validation metrics (e.g. RMSE, R², residuals).
* Flag outliers or questionable measurements.

### 7.2 During Prediction

* Clearly separate predicted values from measured ones.
* Track confidence intervals or uncertainty estimates.
* Ensure the model’s applicability domain is documented.



## 8. Documentation and Accessibility

Create or store documentation for:

* Data schemas
* Metadata standards used (e.g. INSPIRE, ISO 19115, OGC)
* Naming conventions and identifiers
* Data access protocols (e.g. APIs, shared drives, repositories)

Where appropriate:

* Use DOIs or persistent links for spectral libraries.
* Provide clear citation formats.



## 9. Linking Campaigns Through Libraries

Since new campaigns may rely entirely on existing libraries:

* Require each new spectral observation to:

  * Reference the library used for prediction
  * Include version information
  * Record whether any local calibration updates were applied

* If new wet chemistry is added later, update the library accordingly with a new version and document the change.



## 10. Summary of Key Requirements

| Element               | Must Include                                                | Purpose                    |
| -- | -- | -- |
| Sample Record         | Sample ID, collection data                                  | Traceability               |
| Spectral Observation  | Sample ID, device metadata, spectral file, Library ID       | Reusability & reference    |
| Wet Chemistry Record  | Sample ID, lab methods, analyte values                      | Calibration & validation   |
| Spectral Library      | Library ID, metadata, version, scope, provenance            | Prediction & documentation |
| Model/Prediction Link | Observation ID, Library ID, model version, predicted values | Transparency               |



## 11. Compliance and Future-Proofing

* Align with FAIR principles (Findable, Accessible, Interoperable, Reusable).
* Use persistent identifiers and open metadata standards.
* Plan for interoperability across institutions, countries, and legacy datasets.
