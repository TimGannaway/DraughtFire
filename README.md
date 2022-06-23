<h1>Data Analytics ETL Group Project Proposal</h1>

For our group project we are going to explore the historical data on fires and droughts in California for the past twenty years. Our sources are CaliforniaData.gov and Drought.gov. We extracted csv files from each site and transformed the data with Python and Pandas libraries. The data consists of one file for the fire data, that lists each fire from the past twenty years along with size and dates, and another csv for drought severity on a scale of 0-100% for the past twenty years. 

We are going to combine the data to analyze the relationships between the drought levels and the acres burned for each year. Then we will load the data into a PostgreSQL database.

## Process

### Extract:
* The data we used for our project were gathered from www.californiadata.gov/ and www.drought.gov/ as CSVs. We imported the CSVs into Python and created a dataframe for each CSV using the pandas library.

### Transform:
* We filtered the dataframes to remove columns that were uniformally used from both the fire and drought dataframe. We also renamed some of the columns to be more meaningful and descriptive.
* We formatted the dates on the fire dataframe using datetime formatting so that the dates could be compared to the dates in the drought dataframe.
* We removed 4 rows from the fire dataframe because the years were invalid.
* The 2 dataframes were then merged together using SQL LEFT JOIN to discover the drought condition during each fire in the dataframe that had a corresponding date.

### Load:
* We loaded our merged dataframe into a single SQL table in PostgreSQL.
* We ensured the column names matched the columns created in our Python notebook to validate the load of the dataframe into PostgreSQL.

### Analyze:
* The LEFT JOIN accomplished listing all of the fires.
* Null drought data on the right side of the table indicted that there were no drought conditions during some of the fires in the dataframe.

## Findings
* There were a large number of fire incidents that occurred without a corresponding drought conditions, which we found surprising.
  * 9,016 total fires in the database.
  * The earliest reported drought condition in the data is from 2000.
  * 6,791 fires occurred in 2000 or after, and 75% of these fires had a corresponding drought condition.
  * The earliest fire in the dataset is from 1912.

### Next Steps
* Analyze if there is a correlation between the time of the year (months, specific dates) have a higher likelihood to have a fire with a corresponding drought condition.
* Look deeper into the drought conditions by county to see what counties have been affected the most by droughts and if there are larger than average fires.
* The analysis could also be expanded to look at other states in the US or countries around the world.
