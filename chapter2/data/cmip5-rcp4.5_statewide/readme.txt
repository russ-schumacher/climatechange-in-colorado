cmip5-rcp4.5-colorado

This folder contains data files of climate projections for Colorado from the CMIP5 global climate model data archive, under the 
mid-range RCP4.5 emissions scenario, as analyzed and used for the Climate Change in Colorado report (2023). Further analyses using these data used to generate figures from the report are in the Excel spreadsheet(s) found in the same directory (chapter2) as this readme. 

These files were downloaded from the GDO-DCHP site (Reclamation et al.; https://gdo-dcp.ucllnl.org/);  all projections had been re-gridded from the native grid of each model to a common 1-degree grid prior to creating these files.

Organization of folders and data files:

rgrd5 - contains files with re-gridded CMIP5 projections

	Stats_pr.nc - netCDF file containing contains modeled monthly precipitation Jan 1950 - Dec 2099, for each of 36 climate models,
			   for each of 54 (6 x 9) gridpoints encompassing Colorado; units are mm/day

	Stats_tas.nc - netCDF file containing contains modeled monthly temperature Jan 1950 - Dec 2099, for each of 36 climate models,
			   for each of 54 (6 x 9) gridpoints encompassing Colorado; units are degrees Celsius

	CMIP5_RCP45_36_CO_tas_BC_ann_1950-2099.csv - CSV file containing modeled annual temperature, 1950-2099 for each of 36 climate models, averaged over all 54 grid points (thus a statewide values)

	