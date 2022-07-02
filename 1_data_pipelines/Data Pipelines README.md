# Section 1: Data Pipelines
The objective of this section is to design and implement a solution to process a data file on a regular interval (e.g. daily). Assume that there are 2 data files dataset1.csv and dataset2.csv, design a solution to process these files, along with the scheduling component. The expected output of the processing task is a CSV file including a header containing the field names.

You can use common scheduling solutions such as cron or airflow to implement the scheduling component. You may assume that the data file will be available at 1am everyday. Please provide documentation (a markdown file will help) to explain your solution.

### Processing tasks:
`pipeline.py` contains the following processing tasks
1. Split the name field into first_name, and last_name
2. Delete any rows which do not have a name
3. Remove any zeros prepended to the price field by making sure 'price' column is either float64 or int64
4. Create a new field named above_100, which is true if the price is strictly greater than 100
5. Rearranging the columns so that the columns is the following: `first_name`, `last_name`, `price`
6. Output the processed file with a timestamp so that it is easy to differentiate the files

### Scheduling
Cron is used for scheduling. `pipeline.py` is scheduled to run everyday at 1.30am, assuming the file is available at 1am everyday. 30 min is given as a grace in the event there is a huge in transit and will take time to be uploaded and/or downloaded.