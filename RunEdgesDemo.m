close all;
clear;
addpath(genpath('external'));
imagepath1 = 'input/frame_0001.png';
imagepath2 = 'input/frame_0002.png';
OutEdgePath1 = '/Edge/edge1.bin';
OutEdgePath2 = '/Edge/edge2.bin';
im1=im2double(imread(imagepath1));
im2=im2double(imread(imagepath2));
ComputeEdges(im1,OutEdgePath1);
ComputeEdges(im2,OutEdgePath2);

