initialize-release
initializeVersionPaneWith: versions

	| lastPane part3 part4 part5 part6 |
	lastPane := WizardLastPane named: 'New version for ' , configuration asString.

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
				ifTrue: [ 'development' ]
				ifFalse: [ 'beta' ] ];
		yourself.

	part6 := (TextEditorPart inGroupboxNamed: 'Commit Message') textEditorVerticalSize: 175 ; textEditorHorizontalSize: 300; yourself.
	

	lastPane addPart: part3 associatedTo: #targetVersionNumber requiring: #(sourceVersionNumber commitType).
	lastPane addPart: part4 associatedTo: #versionSelector requiring: #(targetVersionNumber commitType).
	lastPane addPart: part5 associatedTo: #blessing requiring: #(commitType).
	lastPane addPart: part6 associatedTo: #message.

	^ lastPane