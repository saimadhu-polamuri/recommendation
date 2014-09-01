import 'recommenders.pig';
%default INPUT_PATH_PURCHASES 'data.csv'

/******* Load Data **********/
--Get purchase signals
purchase_input = load '$INPUT_PATH_PURCHASES' USING org.apache.pig.piggybank.storage.CSVExcelStorage(
                    'product: chararray, 
                     next_link: chararray, 
                     count_value: int');