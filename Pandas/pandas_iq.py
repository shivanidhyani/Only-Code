#Pandas Interview Questions 
'''How to read a JSON File in Pandas'''
import pandas as pd

file_path = "../Testing Data"

#Reading and Writting with json
df_json = pd.read_json('..\Testing Data/test1.json')
print(df_json.head(20))
df_json.to_json(file_path, orient='records')


#Reading and Writting with parquet
df_parquet = pd.read_parquet('..\Testing Data/test1.parquet')
print(df_parquet.head(10))
df_parquet.to_parquet(file_path, compression='snappy')

