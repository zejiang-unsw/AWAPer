# AWAPer
This R package builds netCDF files of the Bureau of Meteorology Australian Water Availability Project daily national climate grids and allows efficient extraction of daily catchment average precipitation, Tmin, Tmax, vapour pressure, solar radiation and then estimation of areal potential evaporation (Morton's). For package details see the PDF manual https://github.com/peterson-tim-j/AWAPer/blob/master/AWAPer.pdf.

# Getting Started
To get started using the package, following these steps:

1. Download the latest release of the package from https://github.com/peterson-tim-j/AWAPer/releases.
1. Unzip the package on your local machine.
1. Rename the unzipped files, say "AWAPer-1.0.zip" folder to "AWAPer".
1. Open R. 
1. Install the netCDF package using the following command: `install.packages("ncdf4")` . *Importantly* this may require installation of netCDF software outside of R. Please read the output R console messages carefully.
1. Install the remaining required packages using the following R command:
`install.packages(c("sp", "raster", "chron", "maptools", "Evapotranspiration","devtools"))`
1. Load the required R packages using the following R commands: 
`library(sp); library(raster); library(chron);library(ncdf4);library(maptools);library(Evapotranspiration);library(devtools)`
1. Install the AWAPer package using the following example R command (NOTE: use the full file path to the AWAPer folder): `install("c:\MY_FOLDER\AWAPer")`
1. Within R, set the working directory, using `setwd()`, to the folder in which you want to build the netCDF files. Note the files will have a total size of ~400GB.
1. Build the netcdf files using the R command `makeNetCDF_file()`
1. Get the Australian 9 second DEM from Geoscience Australia using the command `DEM_9s = getDEM()`
1. Get example catchment boundaries using the command `data("catchments")`
1. Extract daily climate data and calculate Morton's wet enviroment potential ET from 1990 onwards using the command `climateData = extractCatchmentData(extractFrom='1990-1-1',catchments=catchments,DEM=DEM_9s)`
1. Extract the daily catchment average data from the results using the command `climateDataAvg = climateData$catchmentAvg`
1. Extract the daily catchment variance data from the results using the command `climateDataVar = climateData$catchmentVar`
