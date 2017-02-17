initialize-release
initializeSourcePaneWith: versions
	
	| sourcePane part1 part2 currentVersion |		
	sourcePane := WizardFirstPane named: 'New version for ', configuration asString.
	currentVersion := self selectedProjectInstance currentVersion.
	
	"part1 := MooseMetacelloRadioButtonsPart new."
	part1 := RadioButtonsPart new
				options: {#branchDev. #mainDev. #release};
				yourself.
	"lastDevelopmentVersion is specific to ConfigurationOfMoose"
	configuration lastDevelopmentVersion = currentVersion 
		ifTrue: [part1 defaultValue: #mainDev]
		ifFalse: [part1 defaultValue: #branchDev]. 
	
	part2 := DropListPart new 
							 	list: (versions collect: [:each | each versionString ]);
								inGroupboxNamed: 'Source Version';
								defaultValue: (versions indexOf: currentVersion);
								yourself.
	
	sourcePane addPart: part1 associatedTo: #commitType .
	sourcePane addPart: part2 associatedTo: #sourceVersionNumber.
	
	^ sourcePane