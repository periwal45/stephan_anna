# input data preparation scripts

1. split SDF files into individual entries
2. create pairs of molecules (all against all), using Pubchem ID (preprocess.R)
3. Once created run the MCS.R (on HPC, multiple jobs)

  a. Split the big file into smaller chunks to run them in batch mode on HPC (preprocess.R) 
  b. MCS is run in batch mode (for all splitted files) and output files are later merged
  c. Clear off any error messages in the output file
  d. Use Parse_MCS.pl to re-format all required information in tab format (parsed_MCS)
  
  
