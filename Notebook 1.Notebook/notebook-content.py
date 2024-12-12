# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "7e1f457e-499e-4c2b-bd51-3b1ea6aa0d3e",
# META       "default_lakehouse_name": "LH_IAC",
# META       "default_lakehouse_workspace_id": "bd19bfc8-033a-4b67-b80c-e8c4cbdc21ce"
# META     }
# META   }
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!

raw_df = spark.read.format("csv").option("Header", "true").option("mode", "PERMISSIVE").option("delimiter", ",").option(
    "inferSchema", "true").option("charset", "UTF-8").load(r"Files/Shishi_Israeli.csv")
    #abfss://IAC@onelake.dfs.fabric.microsoft.com/LH_IAC.Lakehouse/Files/Shishi_Israeli.csv
    #/lakehouse/default/Files/Shishi_Israeli.csv


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

display(raw_df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

raw_df.printSchema()

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

raw_df.write.parquet(r"Files/raw_data",mode="overwrite") 

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

file_loc = 'Files/raw_data'

raw_df = spark.read.parquet(file_loc)

new_columns_list = list(
    map(lambda x: x.strip().replace('-', '').replace('“', '').replace(')', '').replace('(', '').replace('/',
                                                                                                        '_').replace(
        '.', '').replace(':', '').replace(',', '').replace(' ', '_').replace('__', '_').lower(), df.columns))

raw_df = raw_df.toDF(*new_columns_list)
display(raw_df)
# df.write.parquet(r"Files/raw_data/Bosnia/toDF",mode="overwrite") 

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

raw_df.write.format("delta").mode("overwrite").saveAsTable("shishi_israeli_raw_data")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
