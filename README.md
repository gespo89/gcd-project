# Getting and Cleaning Data Course Project

#### Reading the data
1. Download the file from the review page and save it to your working directory.
2. Load the file in using: `tidy_data <- read.table("name_of_file.txt")`
3. Alternatively, running the "run_analysis.R" script will output the file "tidy.txt" to the current working directory and it can be read in as such: `tidy_data <- read.table("tidy.txt")`

#### Running the script
*NOTE: The script requires the "dplyr" library to be installed to run. Check the dependency info later in this readme for details.*

After downloading the script to your working directory, it can be run with `source("run_analysis.R")`.

The script first looks for the input data in a "UCI HAR Dataset" directly inside the working directory. If it fails to find a directory by that name, it looks for the "getdata_projectfiles_UCI HAR Dataset.zip" and attempts to extract it. Failing that, it attempts to download a fresh copy of the file and extract it.

After that, it creates a new data set that meets the requirements for "tidy" data:
- Each column contains values for exactly one variable, either the subject, the activity, or the mean for a single output value
- The columns are distinct and as such, each row contains exactly one value for each of the recorded variables
- There is only one table as only one "kind" of data is recorded

The "tidy" data set is output in multiple ways:
- It is written out to a file "tidy.txt" in the working directoy. (See the "Reading the data" section above).
- It saved to a variable "tidy".
- It is returned by the script so it can be stored to a variable of your choosing by running the script as such:
`somve_variable <- source("run_analysis.R")`

#### Dependency Info
This project was developed with "R version 3.2.0 (2015-04-16)" and has not been tested with other versions. This is not to say it won't work, but be aware.

This project is dependent on the "dplyr" package to run. The packaged can be installed as follows:
`install.packages("dplyr")`
As above, this was developed with "dplyr_0.4.1" and has not been tested with other versions.
