initialize-release
initializeSourcePaneWith: versions
	
	| sourcePane part1 part2 currentVersion |		
	sourcePane := WizardFirstPane named: 'New version for ', configuration asString.
	currentVersion := self selectedProjectInstance currentVersion.
		
	part2 := DropListPart new
								list: (versions collect: [:each | each versionString ]);
								inGroupboxNamed: 'Source Version';
								defaultValue: (versions indexOf: currentVersion);
								yourself.
	
	sourcePane addPart: part2 associatedTo: #sourceVersionNumber.
	
	^ sourcePane