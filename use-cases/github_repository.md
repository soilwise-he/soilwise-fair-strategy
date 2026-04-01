# **GitHub Repository Publication on Zenodo**

This document serves as a universal guide for users and researchers on how to properly set up a repository and automatically archive it on the Zenodo platform. Connecting GitHub and Zenodo will provide your software or data with a permanent DOI (Digital Object Identifier), which is key for their easy citation, sharing, and long-term preservation in the scientific environment.

Before publishing your repository, it is important to describe the content to enhance its FAIRness and transparency. 

## **1\. Adding a Repository Description**

For the components released as a part of the project, it is essential to add a coherent description. A clear description helps other developers and researchers instantly understand what your project does, its main purpose, and its context. This description is also vital because metadata from GitHub is often used by Zenodo when generating the archive record.

There are two primary places where you should add your repository description:

### **1.1 The GitHub "About" Section**

This is the short, prominent text displayed on the right sidebar of your repository's main page.

1. Navigate to the main page of your repository on GitHub.  
2. Look for the About section on the right side of the screen.  
3. Click the gear icon next to "About".  
4. Fill in the Description field with a concise summary of your project (usually 1-2 sentences).  
5. Click Save changes.

### **1.2 The README.md File**

While the "About" section provides a quick glance, the README.md file is where you provide a comprehensive explanation.

1. If you don't have one, create a file named README.md in the root directory of your repository.
2. Start with an H1 heading (\# Project Name).
3. Follow it with a well-written descriptive paragraph that explains what the software or dataset is, who it is for, and what problem it solves.
4. Structure the Content. Use clear subheadings (\#\#) to organize other essential information. A good README typically includes sections like Installation, Usage, or additional information about the content of your repository. 

Keep the description in the "About" section brief and use the README.md for detailed context, installation guides, and usage examples.

Once your repository is successfully published and assigned a DOI, it is highly recommended to display this information in your repository. Navigate to your new record on Zenodo, scroll down to the bottom of the right sidebar, and find the Badge section. Copy the provided Markdown code and paste it at the very top of your README.md file. This instantly shows visitors that your project is permanently archived and provides them with a direct link to cite it.

## **2\. Prerequisites: Preparing Your Repository**

Before publishing on Zenodo, ensure your repository contains the necessary files to define legal usage, citation rules, and metadata. 

**Requirement for SoilWise:** To ensure your repository metadata is successfully harvested into the SoilWise catalogue, your Zenodo record must include the Grant Number. Standard files LICENSE.txt or CITATION.cff do not support funding metadata, creating a .zenodo.json file is the only way to automate this inclusion. If you skip this file, you must add the Grant Number manually to Zenodo after publication.


### **2.1 Adding a License**

A license is mandatory. Without it, the community cannot legally use your work, and Zenodo requires it for proper archiving.

* Create a new file in the root directory (‘Add file’ \> ‘Create new file’) and name it LICENSE.md or LICENSE.txt.
* Method A (Software): When you type "LICENSE" as the filename on GitHub, a "Choose a license template" button appears. This is ideal for standard software licenses (e.g., MIT, Apache).
* Method B (Data/Other): If you need a license not listed (e.g., Creative Commons for data), copy the official license text and paste it into the file manually. You can link to the official source if the text is too long.

Include the copyright notice in your license file, such as the following line: *Copyright (c) 2026 SoilWise Horizon Europe*.

Example of LICENSE.txt with MIT License: [https://github.com/soilwise-he/link-liveliness-assessment?tab=MIT-1-ov-file](https://github.com/soilwise-he/link-liveliness-assessment?tab=MIT-1-ov-file) 
Example of LICENSE.txt with CC-BY-4.0 License: [https://github.com/soilwise-he/soilwise-fair-strategy/blob/main/LICENSE.txt](https://github.com/soilwise-he/soilwise-fair-strategy/blob/main/LICENSE.txt) 

### **2.2 Adding Citation Metadata (CITATION.cff)**

To ensure your software or dataset is cited correctly, use the Citation File Format.

* Create the file: Create a file named CITATION.cff. GitHub will offer an "Insert example" option to help you get started.

Note that in the license field, you must use the exact SPDX identifier. For example, use CC-BY-4.0 for "Creative Commons Attribution 4.0 International".

The CFF format is primarily designed for software and datasets. If you are publishing other resource types, or need to add e.g. Funding information, you will need to edit these metadata fields manually in Zenodo after publication.

You can find more information about CITATION.cff files in manuals on the following links: 

- Zenodo: [https://help.zenodo.org/docs/github/describe-software/citation-file/](https://help.zenodo.org/docs/github/describe-software/citation-file/)   
- GitHub: [https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files)

Example of CITATION.cff file: [https://github.com/soilwise-he/soilwise-fair-strategy/blob/main/CITATION.cff](https://github.com/soilwise-he/soilwise-fair-strategy/blob/main/CITATION.cff) 

### **2.3 Metadata for Zenodo (.zenodo.json)**

If you want the most precise control over your metadata, you can create a .zenodo.json file. However, keep in mind that this file is exclusively for Zenodo. Other platforms or citation managers will not use it, but Zenodo prioritizes it over all other metadata files (including CITATION.cff).

Because it is designed specifically for Zenodo, it provides the most complete metadata structure. It allows you to automatically include complex details like funding, which are otherwise difficult to automate.

Creating this file can be more complex, so it is entirely voluntary. The standard alternative is to skip this file and manually edit the metadata directly in the Zenodo web interface after your repository is published.

You can find more information about .zenodo.json files in manuals on the following link: 

- Zenodo: [https://help.zenodo.org/docs/github/describe-software/zenodo-json/](https://help.zenodo.org/docs/github/describe-software/zenodo-json/)
  
Example of .zenodo.json file: [https://github.com/soilwise-he/soilwise-fair-strategy/blob/main/.zenodo.json](https://github.com/soilwise-he/soilwise-fair-strategy/blob/main/.zenodo.json) 

## **3\. Linking and Publishing to Zenodo**

You can automatically publish your own repositories to Zenodo. This ensures that every time you release a new version of your work, it is securely archived and assigned a DOI.

### **3.1 Enabling the Repository in Zenodo** 

First, you need to tell Zenodo to start "watching" your specific repository. The manual is also available here: [https://help.zenodo.org/docs/github/enable-repository/](https://help.zenodo.org/docs/github/enable-repository/) 

Follow these steps to link your accounts and enable tracking:

1. Go to [Zenodo.org](https://zenodo.org/) and log in. Ideally, log in directly using your GitHub account, as this automatically links both accounts together.
2. In the top right corner, click on your profile (your account icon) and select GitHub from the dropdown menu.
3. You will see a list of your repositories. If you do not see the specific repository you want to publish, click the "Sync now" button at the top of the page.
4. Enable tracking. Find your repository in the list and flip the toggle switch next to it to "ON".

Note that to successfully enabling the Sync on Zenodo, you must have Owner (for personal repositories) or Admin (for organization repositories) privileges. If you have a lower role, you will not be able to turn the sync toggle "ON". Once an Admin or Owner has enabled the sync in Zenodo, anyone with write access to the repository (roles such as Maintain, Write, or Collaborator) can create a new release on GitHub and trigger the publication.

### **3.2 Creating a "Release" on GitHub** 

Simply turning on the toggle switch in Zenodo does not upload anything to the platform yet. Zenodo is waiting for you to publish a new version of your work, known as Release. 

To trigger the publication process, follow these steps:

1. Go to your repository on GitHub.
2. In the right-hand panel, click on Releases (or "Create a new release").
3. Click on the Draft a new release button.
4. Choose a tag for your version (e.g., v1.0.0), fill in a release title (such as "First Release"), and add a short description if needed.
5. Click the green Publish release button.

As soon as you click Publish on GitHub, a signal is sent directly to Zenodo. Zenodo immediately downloads your entire repository as a .zip archive, reads your CITATION.cff or .zenodo.json file, generates a new record, and assigns it a unique DOI. Be aware that Zenodo instantly "locks" the files into a permanent archive. It does not create a draft waiting for your approval. 

The new version is created on Zenodo every time you create a new Release on GitHub, with different versions linked together. 

When you navigate back to the GitHub section in Zenodo, you will now see an icon displaying the newly generated DOI next to your repository.

Because publishing on Zenodo creates a permanent, un-deletable record, you might want to test your configuration first. You can use the [Zenodo Sandbox](https://sandbox.zenodo.org), which is a safe testing environment. It works identically to the main site, allowing you to verify that your CITATION.cff or .zenodo.json files are parsed correctly without creating a permanent public record.

## **4\. Post-Publication: Editing and Versioning**

Because the publication process is automatic and immediate, there are two important rules regarding what can and cannot be changed afterward.

### **4.1 What CAN Be Edited Anytime (Metadata)** 

Even after the record is published, you can go to the Zenodo website, click the Edit button on your record, and modify the text information. Your DOI will remain exactly the same. You are allowed to edit:

* The project title 
* Author names, their order, and affiliations (university/company) 
* Description of the project (abstract) 
* The license (in case it didn't load correctly from GitHub) 
* Grants (funding), keywords, or links to related articles 

Note that if you did not use a .zenodo.json file during setup, you must manually add the Grant Number here. Without the associated grant information, your metadata cannot be automatically harvested by the SoilWise catalogue.

### **4.2 What CANNOT Be Edited After Publication (Files)** 

Once Zenodo publishes the record, the actual files (your code, data, etc.) can no longer be changed. Zenodo records are inherently permanent to ensure they can be reliably cited in scientific papers.

If you discover after publishing that a file is missing or there is a bug in your code, you cannot simply overwrite the existing files in Zenodo. Instead, you must fix the error in Git, and publish a new Release on GitHub (e.g., version v1.0.1). Zenodo will automatically catch this new release and create “Version 2". It will share the same base DOI but receive a new version-specific DOI. Zenodo neatly links these versions together, so users will always be notified that a newer version exists.
