# set working directories
file_dir_crime <- "crime/"

# set other directories
file_dir_gis <- "gis/"

#read in crime file
#concatenate the filedircrime (set earlier to your directory) with the filename using paste()
crime_file <- paste(file_dir_crime,"crimeStLouis20132014b.csv", sep = "")
crime_file_agg <- paste(file_dir_crime,"crimeStLouis20132014b_agg.csv", sep = "")

# read data into csv 
crimesstl <- read.csv(crime_file, header=TRUE,sep=",")
crimesstl_agg <- read.csv(crime_file_agg, header=TRUE,sep=",") 

#create a list of the unique crime types in the data set and view what these are so that you can select using these so that you can explore their distributions.
listcrimetype <-unique(crimesstl$crimetype)

#returns a datatable of the loaded csv
sub_crime_agg <- crimesstl_agg %>%
  select(count, crimetype, month, year)

datatable(sub_crime_agg, width = "auto")