---
title: Glosis Web Ontology
Audience: Data stewards, repository engineers, soil scientists, and research software engineers.
Goal: make field and lab soil observational data FAIRer (interoperable & reusable) by publishing them as GloSIS-compliant Linked Data (RDF + SPARQL + rich metadata), surfaced from an academic or institutional repository with persistent identifiers and a landing page.
---



# Executive summary

* Use the GloSIS ontology network (master module + domain modules) to represent soil profiles, plots, samples, observations, and laboratory procedures in RDF. ([GitHub][1])
* Reuse the formal patterns GloSIS relies on: SOSA/SSN for observations, GeoSPARQL for geospatial, QUDT for units/quantities and SKOS for code lists. This increases compatibility with other environmental/observational data. ([arXiv][2])
* Produce: (a) an RDF dataset (Turtle or TriG) derived from your source spreadsheets/CSV/DB, (b) SHACL validation shapes, (c) a machine-readable dataset landing page (DCAT/Dublin Core + citation + DOI), and (d) a SPARQL endpoint / triple store for programmatic reuse and discovery.



# Key objectives & success metrics

Objectives

1. Encode field plots, profile horizons, samples and lab measurements as GloSIS RDF.
2. Publish dataset with rich provenance and a DOI; expose SPARQL and download (Turtle/NT/RDF/XML).
3. Provide validation (SHACL), unit normalization (QUDT), and codelists (SKOS).
4. Make example notebooks and mapping documentation so other users can reuse.

Success metrics (examples)

* RDF export covering ≥95% of numeric measurements with units mapped to QUDT.
* SHACL validation pass rate ≥98% on ingested records.
* Dataset has DOI + landing page + SPARQL endpoint.
* External consumers can resolve site/plot/sample URIs and load relevant triples within 10 seconds.



# Background & why GloSIS

GloSIS is a modular soil information ontology network designed to model soil profiles, plots, lab procedures and observations; it is explicitly constructed to reuse SOSA/SSN, QUDT, GeoSPARQL and SKOS and is published as a set of modules (main/master + domain modules). Using GloSIS aligns your data with an established community model, enabling interoperability and reuse across soil and environmental information systems. ([GitHub][1])



# Practical architecture (high level)

1. Source data: field notebooks / CSVs / LIMS / databases containing sites, plots, profile horizons, samples, lab results, methods.
2. Mapping & transformation layer: mapping specs (RML / CSV2RDF / OpenRefine RDF, or custom ETL) that convert source records to RDF using GloSIS classes/properties.
3. Validation: SHACL shapes to check required properties, cardinalities, units and allowed code values (SKOS).
4. Repository publication: deposit the final dataset in your academic repository (DOI + landing page) and simultaneously deploy an RDF dump and a SPARQL endpoint (federated or hosted).
5. Access & documentation: examples, SPARQL query templates, and code lists (.ttl SKOS).
6. Governance & upkeep: versioning, codelist governance, DOI minting on major releases.



# Detailed technical approach

## Identify and model core entities (map your schema → GloSIS)

Minimum entities you should model:

* Site (area investigated) → GloSIS `GL_Site` / site-plot module. ([w3id.org][3])
* Plot (sampling plot) → `GL_Plot`. ([w3id.org][3])
* Profile / Horizon → `GL_Profile`, `Layer`/`Horizon` classes (layer-horizon module). ([w3id.org][4])
* Sample (physical sample from horizon/plot) → link to sample identifier, date, collector, GPS geometry.
* Observation / Measurement → use SOSA `Observation` as GloSIS aligns observations with SOSA/OM ontology patterns (e.g., measurement event, result, observedProperty). Use QUDT units for numeric results. ([arXiv][2])
* Procedure / Lab method → GloSIS procedure module for standardized lab codes and method reference lists. ([GitHub][5])

Tip: Prefer modeling the *observation event* (SOSA Observation) that points to a `FeatureOfInterest` (the sample or horizon) and a `Result` that carries numeric value + unit.

## Use persistent, resolvable IRIs

* Mint IRIs under your domain, e.g., `https://data.example.org/soil/site/XXXX`, `.../sample/YYY`, and ensure content negotiation serves HTML landing pages and RDF (Turtle).
* Where possible, adopt w3id.org or the GloSIS w3id IRIs for ontology terms; GloSIS modules are available under stable w3id IRIs. ([w3id.org][3])

## Units and code lists

* Map measurement units to QUDT or a controlled URI list (e.g., grams per kg → QUDT URI). This avoids ambiguous strings such as “g/kg” vs “g per kg”. ([arXiv][2])
* Load GloSIS codelists (they are provided as SKOS concept schemes in the GloSIS modules) and reuse them for categorical fields (texture, classification, colour). ([GitHub][1])

## Provenance & citation

* Use PROV-O to capture: who ingested data, original source (DB or CSV), transformation script version, and lab certificate/procedure identifiers.
* Provide dataset metadata: title, authors, affiliation, license, DOI, version, contact person — encode as Dublin Core / DCAT on the landing page and in a machine-readable `dcat:Dataset` RDF description.

## Validation (SHACL)

* Implement SHACL shapes for:

  * required properties (site must have geometry, sample must reference a profile/horizon),
  * unit constraints (numeric observations must have associated QUDT unit),
  * allowed SKOS codes for categorical fields,
  * cardinality (e.g., each sample must have exactly one sampling date).
* Run SHACL during ETL and as a pre-publication gate.


# Data transformation pipeline (recommended tools & flow)

1. Prepare: canonicalize field names, standardize code values (use lookup tables for SKOS code mapping), normalize units.
2. Map: create mapping rules (use RML / CARML / Karma / OpenRefine RDF extension / Python rdflib scripts) that take CSV/DB rows → RDF triples following the example patterns.
3. Enrich: attach QUDT unit URIs, SKOS concept URIs for categorical values, and PROV metadata.
4. Validate: run SHACL validation; log & correct failures.
5. Publish: create RDF dump (Turtle/NT), push to triple store (e.g., Apache Jena Fuseki, GraphDB) and configure SPARQL endpoint and content negotiation.
6. Deposit: deposit a copy (preferably the canonical RDF + human-readable metadata) in the academic repository and assign a DOI (Zenodo, institutional repository). Provide the dataset DOI on the data landing page and in RDF/DCAT metadata.

> Tools note: CSV2RDF, RMLMapper, OpenRefine RDF extension, or a small Python/R script using `rdflib` are pragmatic choices depending on team skills.



# Repository & publication best practices

* Landing page: human HTML page + machine-readable RDF (content negotiation) with `dct:title`, `dct:creator`, `dct:license`, `dcat:distribution`, `dct:identifier (DOI)`, and sample SPARQL queries.
* DOI & versioning: mint a DOI at a meaningful version point. Keep a separate DOI for major releases; use semantic versioning in metadata.
* Download formats: Turtle (.ttl), compressed Turtle (.ttl.gz), CSV for tabular consumers (but note CSV lacks linked semantics). Provide checksums (sha256) and file sizes.
* SPARQL: public read endpoint + query examples; consider a rate-limit and read replica for heavy use.
* Licensing: choose an open license appropriate for data (e.g., CC0 or CC BY) and document any restrictions on personal or sensitive information.



# Validation, testing & QA

* Automate SHACL validation on every ingest.
* Implement unit tests for mapping rules (sample input → expected triple patterns).
* Periodically run sample SPARQL queries to ensure the data returns expected counts (e.g., number of `BulkDensity` observations).
* Provide a reproducible pipeline (containerised ETL + mapping files + test fixtures) in your repo.



# Governance & community alignment

* Codelists: use GloSIS codelists as first choice; request additions via the GloSIS project process if you need new entries. ([GitHub][1])
* Versioning: track mapping scripts and SHACL shapes in source control; tag releases.
* Attribution: cite GloSIS in dataset metadata and documentation (the papers & GloSIS docs provide citation guidance). ([arXiv][2])



# 14 Resources & references


* [GloSIS documentation pages](https://glosis-ld.github.io) (module docs: profile, siteplot, layer/horizon, etc.).
* [GloSIS: The Global Soil Information System Web Ontology](https://arxiv.org/pdf/2403.16778) (paper / arXiv) — articulates ontology design, modular structure and reuse of SOSA/QUDT/SKOS/GeoSPARQL. ([arXiv][2])


