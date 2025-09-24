---
title: INSPIRE XML
summary: Strategy to publish field & laboratory soil observational data in an academic repository using the INSPIRE Soil concept model (GML)
Audience: data stewards, GIS engineers, repository managers, soil scientists.
Goal: publish your soil field & lab observations so they are interoperable with INSPIRE-compliant services and datasets (GML application schema, ISO metadata, INSPIRE validation), and also deposit a reusable copy in an academic repository (DOI + landing page).
---


# Executive summary

Publish two complementary outputs:

1. An INSPIRE-compliant GML dataset + OGC services (WFS/WMS/Download), encoded using the INSPIRE Soil application schema (GML/XSD) and the associated technical guidelines. This enables interoperability with European infrastructures and geospatial clients. ([inspire-mif.github.io][1])
2. A repository-grade package (RDF metadata / DCAT or Dublin Core + dataset landing page + DOI) containing the canonical INSPIRE GML dump, service endpoints, validation report and human-friendly exports (CSV, GeoPackage). Index the dataset in your institutional repository so non-GIS consumers can find and cite it.

Together these make your soil observations discoverable, machine-actionable and citable across both geospatial and academic ecosystems. ([inspire-mif.github.io][1])

# Key objectives & success metrics

Objectives

- Encode sites, soil profiles/bodies, samples, measurements and derived products using the INSPIRE Soil UML / GML application schema and ISO/OGC observation standards. ([inspire-mif.github.io][1])
- Provide OGC services (WFS + Download) and dataset metadata (ISO 19115/19139 and DCAT) and mint a DOI for the canonical archive.
- Validate conformance using INSPIRE validation tools / Abstract Test Suite and publish the validation report.

Success metrics (examples)

- 100% of spatial features comply with the INSPIRE application schema XSD; validation report = PASS or documented exceptions. ([GitHub][2])
- DOI + landing page with machine-readable metadata (ISO/19115 / DCAT).
- Public WFS returning correct feature counts for SoilProfile / SoilBody / SoilObservation queries within 5s.



# Why the INSPIRE GML route?

INSPIRE’s Soil technical guidelines and GML application schema define the interoperable UML/GML encoding and conformance classes that EU Member States and tools expect. Using the INSPIRE model ensures your data can be discovered and re-used in Europe-wide systems (geoportals, national INSPIRE services) and validated against standard test suites. ([inspire-mif.github.io][1])



# High-level architecture & data products

1. Source systems — field CSVs, LIMS, spreadsheets, databases (Postgres/PostGIS).
2. Harmonization & Mapping — clean, normalize units/vocabularies, map to the INSPIRE UML → GML (tools: HALE, custom ETL). ([isric.org][3])
3. GML production — generate INSPIRE application-schema-conformant GML (feature instances) and XSD-validated outputs. ([inspire-mif.github.io][1])
4. Validation — run the INSPIRE Abstract Test Suite & local conformance tests; record reports. ([GitHub][2])
5. Service + Repository — host WFS (and WMS if needed), provide download services and deposit canonical GML + metadata + validation report in academic repository (DOI).
6. Documentation & examples — publish mapping documentation, example queries, and CSV/GeoPackage extracts for non-GIS users.



# Detailed technical approach

## Map your domain to INSPIRE feature types

Core INSPIRE Soil feature types (conceptual equivalents you should map to) include (see INSPIRE docs for exact class names / UML):

- SoilBody / SoilProfile — macroscopic bodies / profiles. Map your site/profile/horizon constructs here. ([inspire-mif.github.io][1])
- SoilObservation / SoilRelatedProperty — thematic observations and derived properties (may use ISO 19156/OM for measurement representation). ([inspire-mif.github.io][1])
- SamplingFeatures / Sample — link physical samples to SoilProfile and SoilBody features.
- Spatial features / geometries — use ISO/OGC geometry encodings in GML (boundedBy, geometryMember).

Create a mapping table: your source column → INSPIRE UML attribute / association → target GML element / XSD element. (I can generate a starter mapping table for your CSV if you paste 3–8 sample rows.)

## Units, vocabularies & controlled lists

- Normalise measurement units and codes before encoding. INSPIRE expects consistent vocabularies and enumerations where the application schema prescribes them. Where INSPIRE uses code lists, re-use those or document your extension. ([inspire-mif.github.io][1])

## GML encoding recommendations

- Use the INSPIRE application schema XSD (provided with the technical guidelines) to encode feature instances. Validate generated GML against those XSDs. ([inspire-mif.github.io][1])
- Represent observations that are temporal or measured quantities following ISO 19156 (Observations & Measurements) where possible (INSPIRE guidance refers to O\&M patterns). ([inspire-mif.github.io][1])

## Transformation tools & practical tips

- HALE (HUMBOLDT Alignment Editor) — widely used to map relational/CSV source schemas to INSPIRE GML; can be automated and reused. See practical examples where SOTER→INSPIRE alignments used HALE. ([isric.org][3])
- Scripting/ETL — Python (GDAL/OGR, lxml), FME, or custom tools can generate GML if you prefer code-based pipelines. For complex mappings, HALE + scripts work well.
- Datastore — keep canonical geometries and attributes in PostGIS; publish GML via GeoServer, pygeoapi or an INSPIRE-capable WFS provider.

## Validation & testing

- Use the INSPIRE Abstract Test Suite and available validation services to check conformance to the Soil data specification and GML application schemas. Capture and publish validation reports with dataset DOI. ([GitHub][2])
- Run XSD validation, schema-aware tests (cardinality, mandatory elements), and domain checks (units, allowed codes).

## Metadata & repository deposit

- Produce ISO 19115/19139 metadata for the GML dataset and publish this alongside or embedded in the repository record. Also publish a DCAT or Dublin Core landing-page record for the academic repository. ([INSPIRE Knowledge Base][4])
- Repository package should contain: canonical GML dump (.xml/.gml), XSDs used, mapping spec (HALE project or mapping files), validation report(s), a GeoPackage/CSV extract, README and license. Mint a DOI for the package.



# Publication & services

- INSPIRE services: expose a WFS (GetFeature + GetFeatureById), WMS for visualization, and a download service (direct GML downloads). Make sure service metadata references the dataset and conformance class. ([inspire-mif.github.io][1])
- Landing page: human + machine readable (ISO metadata and DCAT RDF). Put links to WFS endpoints, download links, checksums and the DOI.
- Access control & licensing: specify license clearly (e.g., CC0 / CC BY) and document any sensitive data restrictions (personal locational data, etc.).



# Tools & resource catalogue

- Documentation & XSDs: INSPIRE Soil Technical Guidelines & GML schemas (INSPIRE Knowledge Base + technical-guidelines repo). ([inspire-mif.github.io][1])
- Validation: INSPIRE Abstract Test Suite (GitHub + validation tooling). ([GitHub][2])
- Mapping: HALE for schema-to-GML mappings; examples exist for SOTER→INSPIRE conversions. ([isric.org][3])
- Publishing: GeoServer, pygeoapi, or other WFS providers for serving GML/WFS; institutional repository (Zenodo, Figshare, DSpace) for DOI-backed deposits. ([zenodo.org][5])


# Sources & further reading

- INSPIRE Data Specification on Soil – Technical Guidelines (version 3.0) — technical guidelines & GML application schema. ([inspire-mif.github.io][1])
- INSPIRE Soil (Zenodo / downloadable PDF mirror). ([zenodo.org][5])
- INSPIRE Abstract Test Suite / validation resources (GitHub). ([GitHub][2])
- Examples of SOTER → INSPIRE conversions (HALE workflows / case studies). ([isric.org][3])

[1]: https://inspire-mif.github.io/technical-guidelines/data/so/dataspecification_so.pdf?utm_source=chatgpt.com "[PDF] D2.8.III.3 INSPIRE Data Specification on Soil – Technical Guidelines"
[2]: https://github.com/inspire-eu-validation/data-so?utm_source=chatgpt.com "Abstract Test Suite for the Data Specification on Soil - GitHub"
[3]: https://www.isric.org/sites/default/files/Report05_ExportingDanubeBasinSOTERdatabases2INSPIREcompliantGML_SOTER.pdf?utm_source=chatgpt.com "[PDF] Collection of soil data in SOTER format from 14 Danube strategy ..."
[4]: https://knowledge-base.inspire.ec.europa.eu/soil_en?utm_source=chatgpt.com "Soil - European Commission - INSPIRE Knowledge Base"
[5]: https://zenodo.org/records/13970777/files/II3-INSPIRE-Soil.pdf?download=1&utm_source=chatgpt.com "[PDF] II.3 INSPIRE Soil - Zenodo"
