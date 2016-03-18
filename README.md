
**Coursera Course: Getting and Cleaning Data**

Other Files Submitted for assignment:
[run_analysis.R](https://github.com/bscucchi/Getting-and-Cleaning-Data/blob/master/run_analysis.R)
[CodeBook.md](https://github.com/bscucchi/Getting-and-Cleaning-Data/blob/master/CodeBook.md)


* run_analysis.R 
Downloads data and builds 2 new datasets called  "merged_tidy_data.txt" and "calc_tidy_dataset.txt".  For details on how these are build please see CodeBook.md

* CodeBook.md
Explains what run_analysis does technically.
 

**The run_analysis.R script does the following**

* Pulls Zip file and downloads the dataset locally.
* The extracts the UCI HAR Dataset folder
* Loads Subject_test and Train_test data
* Merges the training and the test sets to create one data set called "merged_tidy_data.txt"
* Set descriptive activity names to name the activities in the data set
* Labels the data set with descriptive variable names.
* Create 2nd dataset from with Average calculation called "calc_tidy_dataset.txt"
 
 
 The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal 
is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no 
questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link 
to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, 
the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also 
include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.
 
* A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* Data for the project can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip












