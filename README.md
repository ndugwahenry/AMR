# AMR Challenge Vivli 2023
## Global Disease mapping of Resistant isolates against Vancomycin, Meropenem and Amikacin, between 2004 and 2021
### Vancomycin is a drug of choice for MRSA, Meropenem is a drug of choice for ESBL bacteria and Amikacin is a drug for Resistant gram negative bacilli such as Pseudomonas aeruginosa
## Objectives
### To map resistance of Vancomycin, Meropenem and Amikacin to show the spread of resistant isolates through different countries around the world between 2004 and 2021.

## Methods
### The data was analysed using the R version 4.2.2. The data was preprocessed and cleaned using the tidyverse, version 2.0.0 and dplyr, version 1.2.2 packages in R. Geographic data was obtained from the maps, version 3.4.1, package in R. The ggplot2, version 3.4.2, package was then used to plot the geospatial trends of Resistance in different countries between 2004 and 2021 using a for loop from the foreach, version 1.5.2, and doParallel, version 1.0.17 package, in R.

## Results
### global spatial resistance for Vancomycin between 2004 and 2021, [images](https://github.com/ndugwahenry/AMR/tree/main/amr_maps_r/VancomycinPlots), [code](https://github.com/ndugwahenry/AMR/blob/main/amr_maps_r/scripts/geospa.vancomycin.R)
### global spatial resistance for Meropenem between 2004 and 2021, [images](https://github.com/ndugwahenry/AMR/tree/main/amr_maps_r/MeropenemPlots), [code](https://github.com/ndugwahenry/AMR/blob/main/amr_maps_r/scripts/geospa.meropenem.R)
### global spatial resistance for Amikacin between 2004 and 2021, [images](https://github.com/ndugwahenry/AMR/tree/main/amr_maps_r/AmikacinPlots), [code](https://github.com/ndugwahenry/AMR/blob/main/amr_maps_r/scripts/geospa.amikacin.R)
