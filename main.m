clc
close all
I=imread('football.jpg');%example
I=double(I)/255;
L=GLCM(I);
subplot(2,3,1)
imshow(I)
title('original image')
for i=2:6
    F=imkmeans(I,i);
    subplot(2,3,i);
    imshow(F,[]);
    title(['number of cluster=',num2str(i)])
end