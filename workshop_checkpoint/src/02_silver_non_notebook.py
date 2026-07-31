from src.workshop_checkpoint.utils import basic_pipeline

basic_pipeline()

catalog="tabfm_and_tsfm"
schema="marc_susagna_bronze"

spark.read.table(f"{catalog}.{schema}.crm_bronze").show()