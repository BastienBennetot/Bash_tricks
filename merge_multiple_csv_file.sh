#!/bin/bash

#merge multiple csv file
#OFS : separator of your file, below a comma

#With Header
  # Adding a column with filenames
    awk -v OFS=',' 'FNR==1 && NR!=1{next;}{print $0, FILENAME}' *.csv >merged.csv
  # Not adding a filename column
    awk '(NR ==1) || (FNR>1)' *.csv >merged.csv

#Without Header
  # Adding a column with filenames
    awk -v OFS=',' '{print FILENAME, $0}' *.csv >merged.csv
  # Not adding a filename column
    cat *.csv >merged.csv

