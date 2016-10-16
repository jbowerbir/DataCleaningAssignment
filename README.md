# README file for run_anlysis.R and its attending data.


## The code in "run_analysis.R" does the following:

1.  reads into R the "test" and "train" datsets as dataframes of the same names, 
    and reads in all corresponding infomration on subjects and the activities 
    completed by subjects;
2.  assigns descriptive names to the variables comprising the dataframe columns
    (see the accompanying Codebook.md for information of variable values and 
    units);
3.  merges the "test" and "train" dataframes into a single dataframe named 
    "fullData", and includes all subject and activity information therein;
4.  creates a new dataframe named "trimData" that retains only those variables
    related to measures of mean and standard devaition, and those variables
    identifying subjects and the activities they preformed during measurement;
5.  creates a new dataframe named "tidyData" that adheres to the tenets of tidy
    data, and that contains the averages of each variable retained in "trimData"
    for each activity and each subject;
6.  exports the tidy dataset as "tidyData.txt".


Note that the code in run_analysis.R **assumes** that you _alread have the Samsung 
data in your working directory_.
