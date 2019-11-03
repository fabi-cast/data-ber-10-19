<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# Natural Events and Climate change
Fabiana Castiblanco

*Data Analytics, Oct.2019*

## Content
- [Project Description](#project-description)
- [Questions & Hypotheses](#questions-hypotheses)
- [Dataset](#dataset)
- [Database](#database)
- [Workflow](#workflow)
- [Organization](#organization)
- [Links](#links)

## Project Description

In this project we do an exploratory analysis of the ocurrence of natural events (aka. disasters) like Severe Storms, Wildfires, Volcanoes, Earthquakes, etc. and their relationship with global emissions of CO2 over the years. 

## Questions & Hypotheses

Is there a correlation between natural disasters ocurrences and emissions of CO2?

It is well known the fact that emissions of CO2 contribute to the global warming phenomenon. Are they also related somehow with the occurrences e.g. of Wildfires or severe storms?

## Dataset

### * Natural Events: 

We use the EONET API v.2.1 by NASA:  https://eonet.sci.gsfc.nasa.gov/docs/v2.1 to obtain data about the natural events occurred since 1980 up today.

### * CO2 emissions:
We extract three different reports in .xlsx format from Global carbon Atlas: http://globalcarbonatlas.org/en/CO2-emissions. 

The data contains information about CO2 (territorial) emissions since 1960 until 2017 for each country in three different units:

* MtCO2 = 1 million tonnes of CO2
* Carbon intensity: measured as kgCO2 per GDP. 
  This refers to total CO2 emissions divided by GDP (Gross Domestic Product measured in US dollars)
* tCO2 per person = tonnes CO2 per person.
CO2 emissions per person are measured as the total CO2 produced by a country as a consequence of human activities and are divided by the     population of that country.

## Database


## Workflow

1. Define the main topic of the project and state relevant questions to answer
2. Extract relevant data from the EONET API
3. Search information about CO2 measurements at a global scale
4. Data wrangling
5. Data exploration
6. Data visualization pairing the variables to answer our main question
7. Draw our findings
8. Propose new questions to give continuity to our project


## Organization

This repository is made up of three main components:

* The jupyter notebook ```events_climate_change.ipynb``` explains in detail the data extraction and data wrangling procedure, the scales used in measurements of CO2, the structure of the data base, as well as the code for the plots to show our main findings.

* Files in format csv containing the clean dataframes we used for drawing our findings:  ```emissions_CO2.csv```, ```emissions_CO2_2017.csv```, ```emissions_events.csv```, ```natural_events.csv```. 

Files in format .xlsx extracted from Global Carbon Atlas (raw data): ```emissions_tco2.xlsx```, ```emissions_kgco2.xlsx```, ```emissions_mtco2.xlsx```, ```land_use_change.xlsx```.

* A file slides.pdf presenting the main findings. 


## Links

[Repository](https://github.com/fabi-cast/data-ber-10-19/tree/master/module-1_projects/data-thieves-project/your-project) 

[Nasa Global Climate change](https://climate.nasa.gov/)

[EONET](https://eonet.sci.gsfc.nasa.gov/docs/v2.1)

[Global Carbon Atlas](http://globalcarbonatlas.org/en/CO2-emissions)
