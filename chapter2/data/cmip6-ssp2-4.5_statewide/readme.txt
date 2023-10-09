cmip6-ssp2-4.5_statewide

This folder contains data files of climate projections for Colorado from the CMIP6 global climate model data archive, under the 
moderate SSP2-4.5 emissions scenario, as analyzed and used for the report Climate Change in Colorado (2023).

These files were downloaded from the KNMI/WMO Climate Explorer (https://climexp.knmi.nl/selectfield_cmip6.cgi); that site performed
a user-specified spatial analysis (averaging across all gridpoints within the state of Colorado) prior to creating these files.

Organization of folders and data files:

precip - contains files with projections of future precipitation

	csv - contains 37 text files (.dat), one for each of the CMIP6 models analyzed; each file contains modeled monthly precipitation Jan 1850 - Dec 2099, averaged over
		all gridpoints within the state of Colorado; note that units are kg of water per meter-squared per second and must be converted to more 
		familiar units unless a delta analysis (future minus historical as % change) is performed, in which case the units are not relevant

	netcdf - same as above, but files are in the netCDF format (.nc)

	CMIP6_4.5_37_CO_pr_1971-2000_2035-2064_season.csv - CSV file with extracted CO statewide data: change in precipitation (%) between the 1971-2000 period and the 2035-2064 period, 4 seasonal values for each of 37 models 


temperature - contains files with projections of future temperature

	csv - contains 37 text files (.dat), one for each of the CMIP6 models analyzed; each file contains modeled monthly temperature Jan 1850- Dec 2099, averaged over
		all gridpoints within the state of Colorado; note that units are degrees Celsius

	netcdf - same as above, but files are in the netCDF format (.nc)


	CMIP6_4.5_37_CO_tas_1971-2000_2035-2064_season.csv - CSV file with extracted CO statewide data: change in temperature (deg C) between the 1971-2000 period and the 2035-2064 period, 4 seasonal values for each of 37 models 

	CMIP6_4.5_37_CO_tas_BC_1950-2099.csv - CSV file with extracted CO statewide data: monthly modeled temperature anomaly (deg C), 1950-2099, relative to the 1971-2000 baseline, for each of 37 models 


