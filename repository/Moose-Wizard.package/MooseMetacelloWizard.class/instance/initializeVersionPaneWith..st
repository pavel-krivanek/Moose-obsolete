initialize-release
initializeVersionPaneWith: versions

	| wizardControl firstPane part1 part2 lastPane part3 part4 part5 part6 secondPane part7 |

	lastPane := WizardLastPane named: 'New version for ' , configuration asString.

	part7 := TextPart 
					on: [:requiredInputs | self packagesNeedSavingAsStringForVersion: (requiredInputs at: #sourceVersionNumber)] 
					inGroupBoxNamed: 'Packages that will be saved'.
	part3 := TextFieldPart new
		inGroupboxNamed: 'Target Version Number';
		defaultValue: [:requiredInputs|
			self
				defaultVersionNumberFromSource: ( requiredInputs at: #sourceVersionNumber)
				within: versions
				commitType: ( requiredInputs at: #commitType) ].

	part4 := TextFieldPart new
		inGroupboxNamed: 'Version Selector';
		defaultValue: [:requiredInputs| 
			self
				defaultVersionSelector: (requiredInputs at: #targetVersionNumber)
				commitType: (requiredInputs at: #commitType) ].
	

	part5 := DropListPart new
		list: #('stable' 'beta' 'development' 'broken');
		inGroupboxNamed: 'Blessing';
		defaultValue: [:requiredInputs| 
			(#(mainDev branchDev) includes: (requiredInputs at: #commitType))
				ifTrue: ['development']
				ifFalse: ['beta']].

	part6 := (TextEditorPart inGroupboxNamed: 'Commit Message') textEditorVerticalSize: 175 ; textEditorHorizontalSize: 300; yourself.
	

	lastPane 
		column: [:c |
			c row: part3 associatedTo: #targetVersionNumber requiring: #(sourceVersionNumber commitType).
			c row: part4 associatedTo: #versionSelector requiring: #(targetVersionNumber commitType).
			c row: part5 associatedTo: #blessing requiring: #(commitType).
			c row: part6 associatedTo: #message.
			];
		column: part7 associatedTo: #packagesToBeSaved requiring: #(#sourceVersionNumber).
	
	^ lastPane