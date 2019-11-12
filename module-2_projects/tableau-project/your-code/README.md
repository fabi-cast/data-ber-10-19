# Constructing a story in Tableau:  Red List Species in 2016




## 1. Goal  

The Red List of endangered species is a comprehensive dataset containing all the critically endangered, endangered and vulnerable species around the globe.

The goal in this project is to create a story telling the most relevant facts about the year 2016, mentioning the main categories of endangered species, their geographical distribution and the status of vulnerability.
Also, we consider the species that were reported as extrinct during 2016.

## 2. Dataset

The original idea was to obtain historical data from the [International Union for Conservation of Nature](https://www.iucnredlist.org) in order to see the trends along the years of the endangered animal species. 
However, for accessing the IUCN's API was a requisite request a token and we had still not received any notice.

After this inconvenience, we had to work with data relative to 2016 available at https://jadonwagstaff.github.io/big_data/visualization.

We did some basic data cleaning, create and export a new derived dataset in order to find the distribution per Group (Birds, Mammals, etc.) of the aggregated data.  For details, see the notebook `red_list.ipynb` contained in this folder.

## 3. Description of Story's elements

### 3.1. Worksheets & Dashboards

We have included 12 worksheets and 9 dashboards containing text, images, packed-bubbles, barplots, scatter-bubbles-plot, line-shape plot, box-and-whisker plots and maps.

### 3.2. Filters

We filter the data mainly by region and by country using the top 5 and top 10 rank in many of the measures. 

For example, having the granular data of the species in the Red List added in 2016, we wanted to create a line-shape plot showing the 10 countries with more species added in that year.
The measure counting these amount is `RL_Total`.

i). First we create a filter containing simply the dimension `Region` without further options.

ii). Then we select the option: `Add to context`.

iii). We then create a filter based on the dimension `Country` using the option `Top`, selecting `10` and writing the formula: `SUM([RL_Total])`.
Now we have two filters working on that worksheet and by selecting a Region, the country filter will be applied to just show the top 10 countries with more species in Red List of that region.

### 3.3. External images

As we mention above, we also add some images (public domain) and icons to enrich the story and make it more visual appelling.

### 3.4. Palette of colors

We use a customized palette of greens and pink nuances which enhance more the topic of the story. We add color to the background of the story, worksheets and dashboards too.
Also we use the map-background `normal` for the map.

Have a look to the viz: [Red List Species in 2016](https://public.tableau.com/profile/fabiana.castiblanco#!/vizhome/RedlistSpeciesin2016/ENDANGEREDSPECIESIN2016)
