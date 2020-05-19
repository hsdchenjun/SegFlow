function ComputeEdges(im,OutMatchPath)
	path=pwd;
	SED(im2uint8(im),[path OutMatchPath]);
	cd(path);
end