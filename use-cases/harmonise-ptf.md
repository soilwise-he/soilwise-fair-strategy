
# Guidance on Harmonizing Soil Observation Data Using Pedotransfer Functions (PTFs)

## Introduction

Soil observation datasets are often heterogeneous due to differences in sampling depth, measurement techniques, laboratory methods, temporal coverage, and reported soil properties. Harmonization is the process of transforming these disparate observations into a consistent and comparable form suitable for integrated analysis, modeling, and decision-making.

Pedotransfer Functions (PTFs) are empirical or semi-empirical relationships that estimate difficult-to-measure soil properties (e.g., hydraulic conductivity, water retention parameters) from more readily available attributes (e.g., texture, bulk density, organic carbon). When applied carefully, PTFs are a powerful tool for harmonizing soil datasets across spatial scales and data sources.

This document outlines:

* Preconditions for harmonization using PTFs
* Recommended workflows
* Use of existing PTF libraries
* Statistical validation of harmonized outputs


## Prerequisites for Harmonization

### Data Requirements

Before applying PTFs, ensure the following minimum conditions are met:

* **Metadata completeness**

  - Identification of the observed soil property
  - Sampling depth and method
  - Laboratory analysis protocols
  - Unit of measurement

* **Spatial and temporal context**

  * Geographic coordinates (with uncertainty if possible)
  * Sampling date or period

### Data Standardization

All input datasets should be standardized prior to PTF application:

* **Units harmonization** (e.g., % vs g kg⁻¹, cm vs mm)
* **Depth normalization** (e.g., fixed layers such as 0–5, 5–15, 15–30 cm)
* **Textural class consistency** (e.g., USDA vs FAO systems)
* **Outlier screening** using robust statistics or expert thresholds

## Conceptual Framework for Using Pedotransfer Functions

### Purpose of PTF-Based Harmonization

PTFs can be used to:

* Fill gaps in missing soil properties
* Translate measurements between methods
* Produce standardized soil hydraulic or physical parameters
* Enable cross-dataset comparability

### Types of Pedotransfer Functions

* **Class PTFs**
  Based on soil textural or taxonomic classes

* **Continuous PTFs**
  Regression-based functions using continuous predictors

* **Machine-learning PTFs**
  Neural networks, random forests, or ensemble approaches trained on large soil databases

Each type implies different uncertainty characteristics and validation requirements.



## Workflow for Harmonization Using PTFs

### Step 1: Define Target Soil Properties

Clearly specify which soil variables are required for harmonization (e.g., field capacity, wilting point, saturated hydraulic conductivity).

### Step 2: Select Appropriate PTFs

Selection criteria should include:

* Compatibility with available predictors
* Geographic or climatic relevance
* Transparency and documentation
* Peer-reviewed validation history

### Step 3: Apply PTFs Consistently

* Use identical input preprocessing across datasets
* Apply depth-specific PTFs where applicable
* Record model versions and parameter settings

### Step 4: Propagate Uncertainty

Where possible:

* Use PTFs that provide prediction intervals
* Apply Monte Carlo simulations with input uncertainty ranges
* Store uncertainty metrics alongside predictions



## Using Known Libraries of Pedotransfer Functions

Several well-established libraries and tools are commonly used for soil data harmonization:

* **ROSETTA**
  Estimates soil hydraulic parameters from texture, bulk density, and water retention data.

* **HYPRES PTFs**
  Developed for European soils, particularly suited for large-scale modeling.

* **SoilGrids-derived PTF frameworks**
  Combine global soil predictions with machine-learning-based PTFs.

* **R and Python ecosystems**

  * R packages: `soiltexture`, `hydroGOF`, `caret`
  * Python libraries: `scikit-learn`, `pandas`, `numpy`

When using external libraries:

* Verify the training dataset and domain of applicability
* Avoid extrapolation beyond original soil conditions
* Document assumptions explicitly



## Statistical Validation of Harmonized Results

Validation is essential to ensure harmonized data are fit for purpose.

### Validation Strategies

* **Internal validation**

  * Cross-validation within the source dataset
  * Bootstrapping to assess model stability

* **External validation**

  * Independent soil datasets
  * Benchmarking against measured values

### Performance Metrics

Commonly used statistical indicators include:

* Bias and Mean Error (ME)
* Root Mean Square Error (RMSE)
* Mean Absolute Error (MAE)
* Coefficient of Determination (R²)
* Nash–Sutcliffe Efficiency (NSE)

Metrics should be reported by soil depth and, where possible, by soil class.

### Diagnostic Analysis

* Residual plots vs predictors and depth
* Sensitivity analysis of input variables
* Spatial autocorrelation of errors


## Documentation and Reproducibility

For transparency and reuse:

* Record PTF names, equations, or model identifiers
* Archive preprocessing scripts and configuration files
* Store harmonized outputs with uncertainty metadata
* Use version control and persistent identifiers where possible


## Limitations and Best Practices

* PTFs are context-dependent and not universal
* Harmonization reduces heterogeneity but does not eliminate uncertainty
* Avoid mixing PTF outputs with direct measurements without clear labeling
* Always match PTF complexity to data quality and project scale


## Conclusion

Harmonizing soil observation data using pedotransfer functions is a powerful, but non-trivial, process. Success depends on careful preprocessing, informed PTF selection, rigorous validation, and transparent documentation. When applied responsibly, PTF-based harmonization enables integrated soil analyses across regions, scales, and data sources while preserving scientific credibility.

