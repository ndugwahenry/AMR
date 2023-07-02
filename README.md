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
![image](https://github.com/ndugwahenry/AMR/blob/main/amr_maps_r/Collage%20Maker-03-Jul-2023-12-02-AM-1082.jpg)
### global spatial resistance for Meropenem between 2004 and 2021, [images](https://github.com/ndugwahenry/AMR/tree/main/amr_maps_r/MeropenemPlots), [code](https://github.com/ndugwahenry/AMR/blob/main/amr_maps_r/scripts/geospa.meropenem.R)
![image](https://github.com/ndugwahenry/AMR/blob/main/amr_maps_r/Collage%20Maker-03-Jul-2023-12-03-AM-4753.jpg)
### global spatial resistance for Amikacin between 2004 and 2021, [images](https://github.com/ndugwahenry/AMR/tree/main/amr_maps_r/AmikacinPlots), [code](https://github.com/ndugwahenry/AMR/blob/main/amr_maps_r/scripts/geospa.amikacin.R)
![image](https://github.com/ndugwahenry/AMR/blob/main/amr_maps_r/Collage%20Maker-03-Jul-2023-12-00-AM-3896.jpg)

## Impact of the work.
### The work shows the spread of Vancomycin (drug for MRSA) , Meropenem (drug for ESBL), and Amikacin (drug for resistant gram negative bacilli such as Pseudomonas aeruginosa) resistant isolates around the world, between 2004 and 2021. From the maps resistant isolates were few and located in fewer countries but became more frequent with time and present in countries where they originally were not present. This suggests an international transfer of resistance across borders and therefore measures are needed to reduce transfer of resistance across borders.
### Some countries had a reduction in numbers of resistance isolates and therefore knowing what measures were put in place at that particular time when the resistant isolates were reduced could be important for other countries that have a high frequency of resistant isolates to these drugs that are of choice to treat resistant bacteria. Knowing what measures were put in place will also be a form of feedback to show effectiveness of the measures that were previously deployed in those countries.
### The data also shows countries that are at a very high risk due to the presence of many resistant isolates and therefore need to come up with policies that can be used to reduce the number of resistant isolates. The results also show that poor countries have recently acquired more resistance isolates which were not originally present which could be due to international travels and therefore suggesting that social economic factors could also be playing a key role in present day emergence and spread of resistance.
