clc;
clear all;
close all;

%[filename1, filepath, FilterIndex ] = uigetfile('*.*','Select Original Image');
rgbI = imread('GT1_GR1.jpg');
[m n] = size(rgbI);
filename=rgbI(:,1:(n-4));
%%%%%%%%%%Clean & Stable Water (<1 NTU)%%%%%%%%%%%%%%%

water_depth = [2,5,10,15,20,25,30,35,40,50];
% water_type = ['LT','MT','HT'];
water_type = 'LT';
save('fm_deg.mat');
global fm_deg;
fm_deg = zeros(21,150);

for d=water_depth 
    switch d
        case 2
            ccr = 0.85; ccg = 0.98; ccb = 0.99; lla = 0.98; cra = 0.97; ba = 5;
            generate_UW_image(rgbI, d,filename,water_type,ccr,ccg,ccb,lla,cra,ba)
            load fm_deg.mat
            fm_deg
       %  case 5
       %      ccr = 0.60; ccg = 0.96; ccb = 0.98; lla = 0.95; cra = 0.9; ba = 8;
       %      generate_UW_image(rgbI, d,filename,water_type,ccr,ccg,ccb,lla,cra,ba)
       %  case 10
       %      ccr = 0.30; ccg = 0.92; ccb = 0.96; lla = 0.89; cra = 0.85; ba = 12;
       %      generate_UW_image(rgbI, d,filename,water_type,ccr,ccg,ccb,lla,cra,ba)
       %  case 15
       %      ccr = 0.05; ccg = 0.84; ccb = 0.93; lla = 0.80; cra = 0.8; ba = 17;
       %      generate_UW_image(rgbI, d,filename,water_type,ccr,ccg,ccb,lla,cra,ba)
       %  case 20
       %      ccr = 0.01; ccg = 0.74; ccb = 0.89; lla = 0.68; cra = 0.75; ba = 23;
       %      generate_UW_image(rgbI, d,filename,water_type,ccr,ccg,ccb,lla,cra,ba)
       %  case 25
       %      ccr = 0.001; ccg = 0.62; ccb = 0.84; lla = 0.53; cra = 0.7; ba = 30;
       %      generate_UW_image(rgbI, d,filename,water_type,ccr,ccg,ccb,lla,cra,ba)
       %  case 30
       %      ccr = 0.0001; ccg = 0.48; ccb = 0.79; lla = 0.35; cra = 0.65; ba = 38;
       %      generate_UW_image(rgbI, d,filename,water_type,ccr,ccg,ccb,lla,cra,ba)
       % case 35
       %      ccr = 0.00001; ccg = 0.32; ccb = 0.71; lla = 0.14; cra = 0.6; ba = 47;
       %      generate_UW_image(rgbI, d,filename,water_type,ccr,ccg,ccb,lla,cra,ba)
       %  case 40
       %      ccr = 0.000001; ccg = 0.14; ccb = 0.63; lla = 0.01; cra = 0.55; ba = 57;
       %      generate_UW_image(rgbI, d,filename,water_type,ccr,ccg,ccb,lla,cra,ba)
       %  case 50
       %      ccr = 0.0000001; ccg = 0.01; ccb = 0.50; lla = 0.0001; cra = 0.45; ba = 70;
       %      generate_UW_image(rgbI, d,filename,water_type,ccr,ccg,ccb,lla,cra,ba)
       %  end
    end
end