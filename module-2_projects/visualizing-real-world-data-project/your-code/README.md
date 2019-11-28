<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# Polar Bears: Conservation insights
Fabiana Castiblanco

*Data Analytics, Nov.2019*

## Content
- [Project Description](#project-description)
- [Main Question](#main-question)
- [Data Sources](#data-sources)
- [Workflow](#workflow)
- [Tech Stack](#tech-stack)
- [Organization](#organization)
- [Links](#links)

## Project Description

In this project our goal is to give key insights about the status of the Polar bears using python packages for data visualization. We expect to depict important connections between the survivance of this species with climate change consequences such as the rising temperatures anomalies and the decreasing of ice extent.  

## Main Question

How is climate change affecting the global population of polar bears?

## Data Sources

**1. Endangered Species:** We retrieve data by using a ftp autentication service provided by the International Union for Conservation Nature and Natural Resources [IUCN](https://www.iucnredlist.org/).

**2. Polar Bear facts:** For general population information, we use data from [IUCN/SSC Polar Bear Specialist Group](http://pbsg.npolar.no/en/index.html). There is no historical data, however the data was updated this year. Unfortunately this data was only available in .pdf format, so we  transcript the information to a .csv format. 

We also add some geo-coordinates to locate the subpopulations and also, we add Country information.  Since there was no information about some subpopulations, we obtain some data from the paper: 

Hamilton, Stephen & Derocher, Andrew. (2018). Assessment of global polar bear abundance and vulnerability. Animal Conservation. 10.1111/acv.12439.

Also, facts about specific populations in Norway can be found in the [Norwegian Polar Institute](https://www.npolar.no/en/) and its dependency [Environmental monitoring of Svalbard and Jan Mayen Norsk](http://www.mosj.no/en/).

**3. Climate anomalies:**  For the temperature anomalies, we extract data from [Goddard Institute for Space Studies](https://data.giss.nasa.gov) (GISS), a dependency from NASA. 
For sea ice index measurements, we collect datasets from the ftp service of [National Snow and Ice Data Center](https://nsidc.org/data/seaice_index)
 

## Workflow

1. Define the main topic of the project and state relevant questions to answer
2. Scientific Research about Polar Bear species 
3. Extract relevant data about the species and climate change factors closely related
4. Data wrangling
5. Data exploration
6. Data visualization 
7. Draw our conclusion
8. Propose new questions to enrich the project

## Tech Stack

* Pandas
* Numpy
* Bokeh
* HoloViews
* Hvplot
* Matplotlib
* Seaborn
* Statsmodels

## Organization

This repository is made up of two main components:

* The jupyter notebook ```polar_bears.ipynb``` explains in detail the data extraction and data wrangling procedure, the scales used in measurements of quantitative variables and the code for the plots to show our main findings.

* A folder ``data`` with two subfolders ``raw_data`` and ``clean_data`` containing all the relevant and public domain sources.


## Links

[Slides](https://docs.google.com/presentation/d/1TJXVHRVQDfr_J0VBy-3x1tRrKwEn0hEJX9_G-5J4BSM/edit?usp=sharing) 

[IUCN/SSC Polar Bear Specialist Group](http://pbsg.npolar.no/en/index.html)

[Norwegian Polar Institute](https://www.npolar.no/en/) 

[Global Carbon Atlas](http://globalcarbonatlas.org/en/CO2-emissions)

[Goddard Institute for Space Studies](https://data.giss.nasa.gov)
