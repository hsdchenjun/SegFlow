Operating system and platform £ºFedora 21 MATLAB R2016b
Efficient Segmentation-Based PatchMatch for Large Optical Flow Estimation
Example for running our code:
Running under the current directory(.../SegFlow/).
 
Firstly, Please unzip all files. Put these files:"flowColorCode,epicflow,SED,toolbox"in this file directory:"external".
1. Run RunEdgesDemo.m to compute "edge1.bin" and "edge2.bin", which are
   saved in ".../SegFlow/Edge/".
2. cd .../SegFlow/
   Running RunSegPM:[root@roothost SegFlow]# ./RunSegPM
   After running, we can obtain "SegMatch1.txt" saved in ".../SegFlow/Match/".
3. Running demo.m to compute the final flow "frame0001.flo" saved in ".../SegFlow/output/".

The executable code of our method is saved in ".../SegFlow/SegPM/SegPM".
We can use it by running: "[root@roothost SegFlow]# ./SegPM/SegPM" to obtain help:
Usages:

The program "SegPM" has been built and tested on Fedora 21.

USAGE: ./SegPM image1 image2 edges1 edges2 outMatches <d1> <d2>
    Where the last five parameters are optional:
    d1: grid spacing <default: 11>
    d2: grid spacing <default: 3>
Explanations:

  The output of the program is a text file, which is in the format of "x1,y1,x2,y2"
  corresponding to one match per line, and an image file is also outputed for visualization.

  The program outputs matches only. Please use an interpolation method
  (EpicFlow: http://lear.inrialpes.fr/src/epicflow/) to obtain the final optical flow results. Here we has provided these supported files.





