# Comprehensive_Synhetic_Underwater_Image_Dateset_Generator

The software includes MATLAB source file that can be used to implement Underwater Image Dataset.

To execute:

1. Open run.m
2. The ground truth image is given in lie no. 6.
3. If you want to change the ground truth image (input image), you may do so in line no. 6.
4. Just run the run.m

Output:

1. For each input image, a toal of 150 synthetic underwater images (Output images) will be genrated.
2. The output image naming gives further information, example "DI_GT1_GR1_LT_D2_AE.jpg" means Degraded Image (DI) of input image (GT1_GR1) with Low turbidity (LT), depth 2 (D2, representing lesser effect of underwater) with All Effects (AE). 
3. For each input image, an excel file named fm_deg will also be genrated.
4. The size is 21x150. the rows correspongs to one of the focus metrics in the order ACMO   BREN    CURV    GDER    GLVA    GLLV    GLVN    GRAS    HELM    HISE    HISR    LAPE    LAPD    LAPM    LAPV    TENG    TENV    VOLA    WAVR    WAVS    WAVV
5. The 150 columns are for the 15 effects. The first 10 columns are for the first effect. These are levels of severity of underwater environment. The 15 effects are 1. Only color cast 2. Only blurring 3. Only low-light conditions, 4. Only contrast reduction, 5. Both color cast and blurring, 6. Both color cast and low-light, 7. Both color cast and contrast reduction, 8. Both blurring and low-light, 9. Both blurring and contrast reduction, 10. Both low-light and contrast reduction, 11. Color cast, blurring, and low-light, 12. Color cast, blurring, and contrast reduction, 13.Color cast, low-light, and contrast reduction, 14. Blurring, low-light, and contrast reduction, 15. Color cast, blurring, low-light, and contrast reduction.                                                                           
