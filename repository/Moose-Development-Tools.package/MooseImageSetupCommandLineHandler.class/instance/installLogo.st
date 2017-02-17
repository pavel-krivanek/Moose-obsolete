moose utilities
installLogo	
	| file morph |
	file := ZnClient new
			systemPolicy;
			accept: ZnMimeType imagePng;
			get: 'http://www.moosetechnology.org/pictures/moose-icon-small.png'.
	morph := ImageMorph fromStream: file readStream binary.
	
	PolymorphSystemSettings setDesktopLogoWith: morph.
	morph top: 10; left: 10