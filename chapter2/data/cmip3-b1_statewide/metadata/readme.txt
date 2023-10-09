cmip3-b1-colorado

This folder contains data files of climate projections for Colorado from the CMIP5 global climate model data archive, under the 
moderate B1 emissions scenario, as analyzed and used for the report Climate Change in Colorado: Phase I findings: Future 
climate projections (June 2022). Results of these analyses are also compiled in an Excel spreadsheet ("CMIP6-CMIP5-CMIP3...") 
that can be found in the same directory as this folder. 

These files were downloaded from the GDO-DCHP site (Reclamation et al.; https://gdo-dcp.ucllnl.org/); that site re-gridded all 
projections from the native grid of each model to a common 2-degree grid, and then spatially averaged across the gridpoints covering 
the state of Colorado, prior to generating these files. 

Organization of data files:


	Prcp_SpatialStat_mean.csv - CSV file containing contains modeled monthly precipitation Jan 1950 - Dec 2099, for each of 16 climate models,
			   		    averaged across 15 (3 x 5) gridpoints; units are mm/day

	Tavg_SpatialStat_mean.csv - CSV file containing contains modeled monthly temperature Jan 1950 - Dec 2099, for each of 16 climate models,
			   		    averaged across 15 (3 x 5) gridpoints; units are degrees Celsius
