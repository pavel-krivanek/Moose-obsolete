initialize-release
initializeVersionPaneWith: versions

	| lastPane part3 part4 part5 part6 |
	lastPane := WizardLastPane named: 'New version for ' , configuration asString.

	part3 := TextFieldPart new
		inGroupboxNamed: 'Target Version Number';
		defaultValue: [:requiredInputs|
			(requiredInputs at: #sourceVersionNumber) asMetacelloVersionNumber copy incrementMinorVersionNumber ].

	part4 := TextFieldPart new
		inGroupboxNamed: 'Version Selector';
		defaultValue: [:requiredInputs| 
			('version', ((requiredInputs at: #targetVersionNumber) asString copyWithout: $.) copyWithout: $-), ':' ].

	part5 := DropListPart new
		list: #('stable' 'beta' 'development' 'broken');
		inGroupboxNamed: 'Blessing';
		defaultValue: [:dropListPart|
				part5 list indexOf: 'development' ];
		yourself.

	part6 := (TextEditorPart new)
				inGroupboxNamed: 'Commit Message';
				textEditorVerticalSize: 175 ;
				textEditorHorizontalSize: 300;
				yourself.
	

	lastPane addPart: part3 associatedTo: #targetVersionNumber requiring: #(sourceVersionNumber).
	lastPane addPart: part4 associatedTo: #versionSelector requiring: #(targetVersionNumber).
	lastPane addPart: part5 associatedTo: #blessing.
	lastPane addPart: part6 associatedTo: #message.

	^ lastPane