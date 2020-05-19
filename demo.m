addpath(genpath('external'));
opt=struct('setting','sintel','outOfRange',0.22,'lambda',0.021,'truncation',1e8,'maxIter',3,'inverse_b',3);%Sintel paramters
%opt=struct('setting','kitti','outOfRange',0.22,'lambda',0.021,'truncation',1e8,'maxIter',3,'inverse_b',0);%Kitti paramters


imagepath1='input/frame_0001.png';
imagepath2='input/frame_0002.png';


outflowpath='output/frame0001.flo';
outEdgePath='Edge/edge1.bin';

matchpath='Match/SegMatch1.txt';

system(['./external/epicflow/epicflow',' ', imagepath1, ' ', imagepath2,' ', outEdgePath,' ',  matchpath,' ', outflowpath]);
flow=readFlowFile(outflowpath);
imshow(flowToColor(flow));





