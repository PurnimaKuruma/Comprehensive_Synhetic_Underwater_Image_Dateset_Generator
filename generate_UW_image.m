function generate_UW_image(rgbI, d,filename,water_type, ccr,ccg,ccb,lla,cra,ba)
%ccr = r component factor in color cast
%ccg = g component factor in color cast
%ccb = b component factor in color cast
%lla = Low-light factor
%cra = Contrast reduction factor
%ba = blurring parameter (STandard deviation in Gaussian function)
[m,n] = size(rgbI);
I_CC(:,:,1) = ccr* rgbI(:,:,1);
I_CC(:,:,2) = ccg* rgbI(:,:,2);
I_CC(:,:,3) = ccb* rgbI(:,:,3);
I_LL = lla*rgbI;
I_CR = ((rgbI - mean(rgbI(:)))*cra) + mean(rgbI(:));
I_B = imgaussfilt(rgbI,ba);

% f_name = strcat(CCDir,'\','DI_',filename,'_',water_type,'_D',string(d),'_CC','.jpg');    
imshow(I_CC);
measure(I_CC,d,1);
% f_name = strcat(LLDir,'\','DI_', filename,'_',water_type, '_D',string(d),'_LL','.jpg');    
% imwrite(I_LL,f_name);
% measure(I_LL,d,2);
% f_name = strcat(CRDir,'\','DI_', filename,'_',water_type, '_D',string(d),'_CR','.jpg');    
% imwrite(I_CR,f_name);
% measure(I_CR,d,3);
% f_name = strcat(BDir,'\','DI_',filename,'_', water_type, '_D',string(d),'_B','.jpg');    
% imwrite(I_B,f_name);
% measure(I_B,d,4);
% 
% I_CC_LL = lla*I_CC;
% I_CC_CR = ((I_CC - mean(I_CC(:)))*cra) + mean(I_CC(:));
% I_CC_B = imgaussfilt(I_CC,ba);
% I_LL_CR = ((I_LL - mean(I_LL(:)))*cra) + mean(I_LL(:));
% I_LL_B = imgaussfilt(I_LL,ba);
% I_B_CR = ((I_B - mean(I_B(:)))*cra) + mean(I_B(:));
% 
% f_name = strcat(CCLLDir,'\','DI_',filename,'_',water_type,'_D',string(d),'_CC_LL','.jpg');
% imwrite(I_CC_LL,f_name);
% measure(I_CC_LL,d,5);
% f_name = strcat(CCCRDir,'\','DI_',filename,'_', water_type, '_D',string(d),'_CC_CR','.jpg');    
% imwrite(I_CC_CR,f_name);
% measure(I_CC_CR,d,6);
% f_name = strcat(CCBDir,'\','DI_', filename,'_', water_type, '_D',string(d),'_CC_B','.jpg');    
% imwrite(I_CC_B,f_name);
% measure(I_CC_B,d,7);
% f_name = strcat(LLCRDir,'\','DI_', filename,'_', water_type, '_D',string(d),'_LL_CR','.jpg');    
% imwrite(I_LL_CR,f_name);
% measure(I_LL_CR,d,8);
% f_name = strcat(LLBDir,'\','DI_', filename,'_', water_type, '_D',string(d),'_LL_B','.jpg');    
% imwrite(I_LL_B,f_name);
% measure(I_LL_B,d,9);
% f_name = strcat(BCRDir,'\','DI_', filename,'_', water_type, '_D',string(d),'_B_CR','.jpg');    
% imwrite(I_B_CR,f_name);
% measure(I_B_CR,d,10);
% 
% I_CC_LL_CR = ((I_CC_LL - mean(I_CC_LL(:)))*cra) + mean(I_CC_LL(:));
% I_CC_LL_B = imgaussfilt(I_CC_LL,ba);
% I_CC_CR_B = imgaussfilt(I_CC_CR,ba);
% I_LL_CR_B = imgaussfilt(I_LL_CR,ba);
% 
% f_name = strcat(CCLLCRDir,'\','DI_',filename,'_',water_type,'_CC_LL_CR',string(d),'_CC','.jpg');    
% imwrite(I_CC_LL_CR,f_name);
% measure(I_CC_LL_CR,d,11);
% f_name = strcat(CCLLBDir,'\','DI_', filename,'_', water_type, '_D',string(d),'_CC_LL_B','.jpg');    
% imwrite(I_CC_LL_B,f_name);
% measure(I_CC_LL_B,d,12);
% f_name = strcat(CCCRBDir,'\','DI_', filename,'_', water_type, '_D',string(d),'_CC_CR_B','.jpg');    
% imwrite(I_CC_CR_B,f_name);
% measure(I_CC_CR_B,d,13);
% f_name = strcat(LLCRBDir,'\','DI_', filename,'_', water_type, '_D',string(d),'_LL_CR_B','.jpg');    
% imwrite(I_LL_CR_B,f_name);
% measure(I_LL_CR_B,d,14);
% 
% I_AE = imgaussfilt(I_CC_LL_CR,ba);
% 
% f_name = strcat(ADir,'\','DI_', filename,'_', water_type, '_D',string(d),'_AE','.jpg');
% imwrite(I_AE,f_name);
% measure(I_AE,d,15);
end