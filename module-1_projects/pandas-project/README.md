![IronHack Logo](https://s3-eu-west-1.amazonaws.com/ih-materials/uploads/upload_d5c5793015fec3be28a63c4fa3dd4d55.png)

# Project: Data Cleaning and Manipulation with Pandas

## Shark Attacks Files

### Goal:

In this project our primary goal was clean the dataset provided by using pandas. We also define some functions along the project,
among others a predictor for two columns based on modal frequencies.

### Procedure:

In short, we proceed as follows:

1. Data exploration: Here we have an insight of the data set by looking the data types in question, which is the information valuable in this context, etc.
There are many NaN values in critical fields, such as the Shark species. Our focus is try to maintain this valuable information.

2. Delete duplicated columns and filling NaN values plan:

* The unnamed columns 22 and 23 should be dropped, because are almost entirely null.

* Due to the relevance of the "Species" column in the data set, we cannot drop this column, even when the percentage of NaN's there is near to 50%.

* The column "Time" and "Year" seems to be irrelevant. However we will explore it further.

* The columns "Country", "Area" and "Location" are related, so it might be possible to infer the missing values one from the others.

* The column "Age" maybe can be infered from anothers after further inspection and it seems to be relevant also in our context so we decided not to drop it.

4. Filling values in "Injury" and "Fatal(Y/N)" heuristically

5. Filling values in "Country", "Area" and "Location" heuristically

6. Cleaning and parsing the column Date

7. Droping the column "Case Number", "Year" and "original order"

8. Filling values for "Name" and "Investigator or Source"

9. Tiding column "Activity" by extracting gerund verbs

10. Create a Predictor Function and with it, filling NaN values in Columns "Age" and "Activity"

11. Use this Predictor for filling NaN's in Area 

12. Filling values for column "Species": Unfortunately we could not apply the Predictor in this case because there are no enough information in the data set

13. Droping irrelevant rows based on NaN's counting by columns

14. Predicting values for Area and Location

15. Assing boolean values fo column "Fatal (Y/N)

16. Changing column names and Re-indexing

17. Exporting data frame as csv 
