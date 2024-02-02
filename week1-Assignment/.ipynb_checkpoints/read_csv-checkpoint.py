import pandas as pd

# Read the csv file
df = pd.read_csv("taxi+_zone_lookup.csv")
print(df.head(10))

# Read the csv file with a different delimiter
df = pd.read_csv("taxi+_zone_lookup.csv", delimiter=";")
print(df.head(10))

# Read the csv file with a different delimiter and a different header

df = pd.read_csv("taxi+_zone_lookup.csv", delimiter=";", header=1)
print(df.head(10))
