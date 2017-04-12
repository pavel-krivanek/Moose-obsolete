sources
exampleFileSystem
	<noTest>

	| b c1 c2 |
	b := RTSunburstBuilder new.
	
	c2 := Color r: 177/255.0 g: 175/255.0 b: 134/255.0.
	c1 := Color r: 98/255.0 g: 101/255.0 b: 73/255.0.
	
	b
		color: c2; 
		angularSpacing: 1;
		radialSpacing: 5;
		leafWeight: [:f | f size sqrt ];
		leafColor: c1;
		explore: TRPlatform current workingDirectory
		nesting: #directories
		leaves: #files.
			
	b view canvas camera scale: 1.5.
	^ b