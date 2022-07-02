import pandas as pd
from datetime import datetime

# read in the csv file
dataset1 = pd.read_csv('./dataset1.csv', sep = ',')
dataset2 = pd.read_csv('./dataset2.csv', sep = ',')


# 1. Split the name field into first_name, and last_name
dataset1[['first_name', 'last_name']] = dataset1['name'].str.split(' ', 1, expand=True)
dataset2[['first_name', 'last_name']] = dataset2['name'].str.split(' ', 1, expand=True)

# 2. Remove rows with no names
dataset1.dropna(axis=0, how='any', thresh=3, inplace=True)
dataset2.dropna(axis=0, how='any', thresh=3, inplace=True)

# 3. Remove zeros prepended
if (dataset1['price'].dtypes != 'float64' or dataset2['price'].dtypes != 'float64'):
    dataset1['price'] = dataset1['price'].astype('float64')
    dataset2['price'] = dataset2['price'].astype('float64')

# 4. Create a new field named above_100, which is true if the price is strictly greater than 100
dataset1['above_100'] = dataset1['price'].gt(100)
dataset2['above_100'] = dataset2['price'].gt(100)

# 5. Rearrange the columns in the dataframe and drop name column
cols = ['first_name', 'last_name', 'price', 'above_100']
dataset1 = dataset1[cols]
dataset2 = dataset2[cols]

print(dataset1)
print(dataset2)
# output processed dataset to csv
timestamp = datetime.now().strftime("%Y%m%d")
processed_dataset1 = dataset1.to_csv("./processed_dataset1_" + timestamp + ".csv", index=False)
processed_dataset2 = dataset2.to_csv("./processed_dataset2_" + timestamp + ".csv", index=False)
