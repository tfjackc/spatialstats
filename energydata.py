# import requests
#
# url = "https://www.energy.gov/sites/default/files/2023-10/pdl100523.json"
# data = requests.get(url=url)
# jsondata = data.json()
#
# for k, v in jsondata.items():
#     print(f"keys:{k}, values:{v}")
import pandas as pd
df = pd.read_parquet(r"C:\Users\jcolpitt\Downloads\part-00030-95a7244f-8c05-4b86-b28f-bc28df06bdd1.c000.snappy.parquet")
df.to_csv('parquet.csv')