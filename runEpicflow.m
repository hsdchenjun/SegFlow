function output=runEpicflow(im1,im2,matchfn,setting)
	path=pwd;
	SED(im2uint8(im1),[path '/debug/edge.bin']);
	cd(path);
	imwrite(im1,'debug/im1.png');
	imwrite(im2,'debug/im2.png');
	system(['./external/epicflow/epicflow debug/im1.png debug/im2.png debug/edge.bin ' matchfn ' debug/output.flo -' setting]);
	output=readFlowFile('debug/output.flo');
end