from src.utils import my_func

my_func()

spark.read.table("tabfm_and_tsfm.marc_susagna_bronze.crm_bronze").show()