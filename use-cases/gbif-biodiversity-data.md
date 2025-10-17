

#  Strategy for ensuring FAIR biodiversiy data via GBIF

Platforms like [GBIF](https://gbif.org) can strongly support [FAIR data](https://go-fair.org). But only if data providers set things up properly 
and users reference their data downloads properly. 
This documents presents a strategy to help you make your biodiversity data as Findable, Accessible, Interoperable, and Reusable (FAIR) as possible.


##  1. Before Publishing: Prepare Your Dataset

###  Choose a stable data management setup

* Maintain your source data in a version-controlled or otherwise documented system.
* Keep track of changes so you can update GBIF intentionally and transparently.

###  Use the Darwin Core standard

* Structure data clearly using DwC terms (e.g., *occurrenceID, eventDate, scientificName*).
* Avoid custom field names unless necessary—and document them.

###  Apply a persistent license

* Use a standard open license like CC0 or CC BY 4.0, as required by GBIF.
* Clearly define attribution expectations in your metadata.

###  Assign globally unique identifiers

* Use stable, provider-managed occurrenceIDs, not row numbers or UUIDs that change.
* Avoid reassigning IDs across updates.



## 2. Publishing to GBIF: Do It the FAIR Way

###  Register through IPT or another trusted mechanism

* Ensure the source repository (IPT, DiGIR, BioCASE, etc.) is up-to-date and maintained.
* Use HTTPS endpoints where possible.

###  Provide rich, curated metadata

Include:

* Dataset purpose and scope
* Geographic and taxonomic coverage
* Methods, sampling protocols, and data quality notes
* Contact details and institutional information
* Update frequency and version history

###  Request or verify a dataset DOI

* GBIF assigns a concept DOI for the dataset.
* Confirm the DOI resolves correctly and includes citation guidance.
* If you publish major revisions, consider creating a new versioned DOI.



## 3. After Publishing: Maintain FAIRness Over Time

### Keep metadata in sync with the data

* If you update content (records, taxonomy, or coverage), revise the metadata too.
* Annotate major updates with version numbers or changelogs.

### ✅ Monitor quality feedback

GBIF may flag:

* Duplicate IDs
* Invalid coordinates
* Taxonomic mismatches
* Missing fields

Respond and correct issues promptly to preserve usability.

###  Support reproducibility

Encourage users to:

* Cite download DOIs for snapshots (not just the dataset DOI).
* Reach out if clarifications are needed.



##  4. Enhancing Reuse and Interoperability

###  Use controlled vocabularies and standards

* Taxonomy: match to recognised checklists whenever appropriate.
* Locations: use standardized coordinate systems and georeferencing protocols.
* Dates: follow ISO 8601 (e.g., `YYYY-MM-DD`).

###  Include contextual data where available

Example additions:

* Sampling methods (*samplingProtocol*)
* Basis of record (*materialSample*, *humanObservation*, etc.)
* Life stage, sex, habitat
* Citations or related literature

### Link to external resources

When possible, connect:

* Specimen records → collection codes (GRBio, CETAF IDs)
* Taxon concepts → WoRMS, Catalogue of Life
* Projects → institutional repositories or scientific publications



##  5. Communicate with GBIF as a Partner

###  Clarify how users should cite your data

* Provide a preferred citation format in the metadata.
* Encourage users to use download DOIs for stability.

###  Declare update policies

State whether data will be:

* Static (no updates)
* Periodically updated
* Continuously synchronized


##  6. Evaluate Your FAIRness

Use this quick checklist:

| FAIR Principle    | You’re doing well if…                                                     |
| --- | --- |
| Findable      | The dataset has a DOI, clear title, and searchable metadata.                  |
| Accessible    | Data can be downloaded without barriers and has an open license.              |
| Interoperable | Darwin Core terms and standard vocabularies are used consistently.            |
| Reusable      | Metadata explains methods, identifiers are stable, and updates are traceable. |



## 🟦 Final Takeaway

GBIF provides the infrastructure for FAIR data, but providers control the quality and longevity. 
By supplying structured data, rich metadata, stable identifiers, and clear versioning, you ensure 
users can reliably find, cite, and reuse your dataset far into the future.


