---
title: Strategy for Adopting FAIR Principles in Project Websites and Knowledge Hubs 
audience: Administrators of project websites  Editors of the data management plans  Implementers of data and/or knowledge hubs  
objective: The content of project websites and knowledge hubs should be accessible and citeable during and after the project
---
 
# Introduction   
   
The FAIR principles (Findability, Accessibility, Interoperability, and Reusability) are essential guidelines for enhancing the utility of digital assets. This strategy outlines how to integrate these principles into the development, maintenance, and archiving of project websites and data and/or knowledge hubs, which are developed as part of a research project. Central in this strategy is to establish robust archiving practices for long-term content preservation, because due to their nature, project websites and knowledge hubs have a high likelihood of content alteration and discontinuation. 

Project websites and especially knowledge hubs developed in large Horizon Europe projects have a tendency to contain unique information which is not available elsewhere on the web. Due to the project timeline, the websites and hubs tend to be unmaintained after the project, handed over to a second party, abandoned or discontinued. If not carefully archived this unique information has a high risk of being lost. Projects should consider to either prevent unique information on these websites or else persist the state of the system at least at project finalisation, to facilitate access and accurate citation.  

This document provides a strategy on how to facilitate a process in which the content of an online system is operated and archived following the FAIR principles.  

 

# Archiving and Website Discontinuation 

The end of a project is a crucial moment in the sustainability of the unique content shared via the project websites or knowledge hubs. It is also a busy period of finalising reports and funds may be exhausted. For that reason, we encourage to plan the end-of-life at the start of the project.  

A good practice is to archive the content of the system at intervals (as versions of a dataset), with the first version being an empty archive. In this way users can better understand the development of the content during the project lifecycle, and your team already gets familiar with the process. We provide some recommendations related to the archival process below: 

- Archive the complete website content (including media, code, and metadata) using trusted repositories such as Zenodo. Below we provide some options on how to do this.   
- Assign persistent identifiers (DOI) to archived versions to enable reliable citation.   
- Provide a landing page or redirect with information about the archived content when the website is decommissioned. 

 

# Design considerations 

The archival process itself will benefit from considerations of content archival during the design phase. 

Consider minimizing unique content on the website, it decreases the need to archive the content and reduces the impact of project/website discontinuation. Unique content can be prevented by: 

- Deposit research outputs (videos, journal articles, slide decks, policy briefs, reports) in eligible research repositories and reference the content by their persistent identifier (DOI) from the website.   
- Import metadata of relevant knowledge sources from repositories (Cordis, OpenAire), while keeping a reference to their source. By automating the imports, your website will automatically be kept up to date. 

A lot of frustration around discontinued project websites originates from the fact that the domain name of a website is often taken over by commercial entities after discontinuation. The result may be that a user ends up in an online casino after clicking a link in a report. Some measures are encouraged to prevent this situation. 

- Avoid setting up a dedicated domain for a project website; instead, consider using a subdomain of a trusted domain (e.g., institutional domain) to reduce the risk of domain hijacking ([https://myproject.crea.gov.it](https://myproject.crea.gov.it/) vs https://myproject.eu).    
- Else, retain ownership of the domain name after discontinuation and redirect it to a persistent archival location or informational landing page.    
- Do not refer directly to project websites from reports, reference an archived version of the website instead, or reference the website via a persistent identifier (DOI). 

When using fancy user interactions in a website based on client side scripting, consider that these functionalities are not always available to \`machines\` which navigate through the website. The result may be that some of the content is not findable in search engines or will not be downloaded or parsed by tools like httrack. You may be able to resolve part of this issue by providing a Sitemap.xml index. Some javascript frameworks provide [server side rendering](https://en.wikipedia.org/wiki/Server-side_scripting#Server-side_rendering) to resolve the issue.  

Also relevant to mention is the [Robots.txt](https://en.m.wikipedia.org/wiki/Robots.txt) convention, which can be used to indicate that machines should not access (parts of) your website. 

 

# Which resources to archive 

A project website or knowledge hub has various aspects which are of interest to persist for future analysis. 

- The main content of the system, this data is often stored in a database, in a folder or in a version management system (git).   
- The access logs (usage) of the system indicate the popularity of various sections of the system   
- The graphical design of the system (including the source files)    
- The source code of any dedicated software used by the system 

Apply common privacy conventions when publishing data, especially for the site usage data. 

 

# How to extract and deposit the content  

Each type of resource requires a dedicated extraction mechanism. Also consider how users will consume this data, when accessing it from a research repository. The FAIR principles suggest to share content in open formats, such as html, csv, sqlite and txt. We provide some suggestions below for typical software used in this area: 

- Tools like [Httrack](https://www.httrack.com/) can create a local copy of any website. Users can browse the website from their local computer, after downloading it from a repository.   
- Content Management Systems such as [Quarto](https://quarto.org/) and [Wordpress](https://wordpress.org/) have an option to export their content as pdf or html.    
- A copy or dump of the website database may be challenging to access for some, but useful to others, because the content is well structured.  

The extracted resources can be combined into a zip archive and deposited in an eligible research repository. With the deposit, relevant metadata can be provided. 

# Interoperable content 

The FAIR principles include a section on interoperability. Various mechanisms exist to increase interoperability of website content. 

- [Schema.org](https://schema.org/docs/gs.html) is a set of conventions from the search engine community to embed structured content in a webpage.
- News items on a website are typically shared via a [RSS protocol.](https://en.wikipedia.org/wiki/RSS)      
- [Open Graph](https://ogp.me/) is a set of metadata tags which can be added to a website header. Open Graph is for example used by social media platforms (linkedin, teams) to summarise websites.    
- [Llms.txt](https://llmstxt.org/) is a convention to share the content of a website with large language models.

Many of the common Content Management Systems integrate these practices in their platforms by default, but may require some configuration to perform optimally. 
The [Wordpress](https://wordpress.org/) software for example, it is often used to maintain Horizon Europe 
project websites. It supports most of these conventions.

Various validators are available to validate a website on these interoperability mechanisms. 

- Schema.org can be validated with [validator.schema.org](https://validator.schema.org/)    
- Open Graph can be validated with [opengraph.dev](https://opengraph.dev/)    
- RSS feeds can be verified with [rssboard.org/rss-validator](https://www.rssboard.org/rss-validator/)  

Navigate to the validator website and paste the link of the webpage to be tested 

## Metadata oriented knowledge hubs

If a knowledge and/or data hub is oriented on metadata descring a set of resources, the final archive of the content will benefit from a structured format using a standardised ontology, such as Dublin Core.
Consider for example a CSV format with each row describing a resource, with metadata fields as columns (title, abstract, subject, license, creator, date). In this scenario you can use the 
CSVW approach in the [use case tabular data](./tabular-data.md) to describe the CSV in an interoperable way. 

# Detect and resolve broken links 

In case you notice a project website which has actually been abandoned (without proper archival) or a single page being (re)moved. You may be able to recover some of that content from [internet archives.](https://en.m.wikipedia.org/wiki/List_of_web_archiving_initiatives) These initiatives copy parts of the internet daily. Also consider to notify the site administrator, usually the institute which had been the lead of the research consortium. Also consider that the link may be temporarily unavailable (due to a server or routing error). 

As a site administrator you can use link checker tools (such as [Google search console](https://search.google.com/search-console) or [LinkChecker](https://pypi.org/project/LinkChecker/)) to regularly validate all hyperlinks on a website and ensure continued accuracy and integrity of external and internal references. If broken links are identified, consider updating or removing the link. Another mechanism to identify broken links is via the access and error logs of the webserver. Requests with a status 404 indicate a non-existing source. Consider setting up your webserver logging to include the referrer link, this request property indicates which page includes a link to the non-existing source. 

 

# Conclusion   
Adopting FAIR principles for project websites and knowledge hubs ensures that digital content remains valuable, discoverable, and reusable over time. Through persistent identification, standardized metadata, and robust archiving strategies, projects can significantly enhance their impact and legacy. 

 

 

Annex 1: Do's and Dont's 

- Do not upload a project deliverable directly to the website. Deposit it in a trusted repository and reference the document with its persistent identification (DOI) from the website.   
- Keep the website compact, reference external sources for continued reading.   
- Deposit versions of the website content in eligible repositories at intervals   
- Add a sitemap.xml to your site with a complete index of the site   
- Add a robots.txt file to your site, indicating to crawlers not to access certain parts of your site   
- Use a subdomain from a sustainable domain for your project website   
- If you set up a dedicated domain for your website, acquire it for at least 20 years    
- If you link to a resource (from a report or website) always link to its persistent identifier, not to the actual file location   
- Validate the integrity of internal and external links on your website at intervals   
- If you encounter a link to a non-existing source, consider using internet archives to recover the content 

