The command that can be triggered to setup a image right after the GToolkit configuration is loaded in a fresh Pharo image.

Example usage in a Jenkins:
./pharo $JOB_NAME.image gtimagesetup

To use from inside the image, run:
[ [ [ 
	self new activateWithoutSaving
] ] ]