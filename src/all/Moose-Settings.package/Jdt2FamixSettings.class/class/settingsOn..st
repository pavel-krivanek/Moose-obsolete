verveinej
settingsOn: aBuilder
	<moosesettings>

	(aBuilder group: #jdt2famix)
		label: 'jdt2famix' translated;
		description: 'Path of folder where to look for jdt2famix.sh ' translated;
		parent: #moose;
		with: [
			(aBuilder setting: #jdt2famixPath)
				label: 'jdt2famix.sh path' translated;
				target: self;
				default: Jdt2FamixSettings defaultJdt2FamixPath.
			 ].	 