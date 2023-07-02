# AMR Challenge Vivli 2023
## Global Disease mapping of Resistant isolates against Vancomycin, Meropenem and Amikacin, between 2004 and 2021
### Antimicrobial resistance (AMR) is one of the leading global public health issues that pose a great social and economic burden. The relationship between AMR and the different factors associated with it are not yet well understood and thus AMR is still on the rise despite ongoing antimicrobial stewardship efforts and public health policies in place therefore necessitating the use of data driven solutions to inform new and precision policies and stewardship programs that are tailored to specific issues that promote AMR in the different micro environments globally. 
### Vancomycin is a drug that is used to treat Methicillin Resistant Staphylococcus Aureus (MRSA), meropenem is a drug for treating Extended Spectrum Beta lactamases, and Amikacin is a drug for treatment of resistant gram negative bacilli such as P. aeruginosa. There is limited knowledge of the spread of resistance to these drugs between 2004 and 2021 and when the resistance isolates were first identified in the new locations, as well as reduction of these resistant isolates in some countries.

## Objectives
### To map resistance of Vancomycin, Meropenem and Amikacin to show the spread of resistant isolates through different countries around the world between 2004 and 2021.
### To show during what time resistant isolates were first identified and when their frequencies changed with time between 2004 and 2021.

## Methods
### The data was analysed using the R version 4.2.2. The data was preprocessed and cleaned using the tidyverse, version 2.0.0 and dplyr, version 1.2.2 packages in R. Geographic data was obtained from the maps, version 3.4.1, package in R. The ggplot2, version 3.4.2, package was then used to plot the geospatial trends of Resistance in different countries between 2004 and 2021 using a for loop from the foreach, version 1.5.2, and doParallel, version 1.0.17 package, in R.

## Results
### global spatial resistance for Vancomycin between 2004 and 2021, [images](https://github.com/ndugwahenry/AMR/tree/main/amr_maps_r/VancomycinPlots), [code](https://github.com/ndugwahenry/AMR/blob/main/amr_maps_r/scripts/geospa.vancomycin.R)
### global spatial resistance for Meropenem between 2004 and 2021, [images](https://github.com/ndugwahenry/AMR/tree/main/amr_maps_r/MeropenemPlots), [code](https://github.com/ndugwahenry/AMR/blob/main/amr_maps_r/scripts/geospa.meropenem.R)
### global spatial resistance for Amikacin between 2004 and 2021, [images](https://github.com/ndugwahenry/AMR/tree/main/amr_maps_r/AmikacinPlots), [code](https://github.com/ndugwahenry/AMR/blob/main/amr_maps_r/scripts/geospa.amikacin.R)
