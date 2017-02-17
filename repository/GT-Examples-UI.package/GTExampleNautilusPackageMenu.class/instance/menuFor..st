public
menuFor: aBuilder
	| model node package |
	(model := aBuilder model) ifNil: [ ^ self ].
	(node := model selectedPackage) ifNil: [ ^ self ].
	(package := node item) ifNil: [ ^ self ].
	
	self buildSubmenu: aBuilder.
	self inspectExamples: [ package gtExamplesContained ] builder: aBuilder.
	self inspectReturnValue: [ package gtExamplesContained ] builder: aBuilder.
	self inspectResults: [ package gtExamplesContained ] builder: aBuilder.
	self inspectProblems: [ package gtExamplesContained ] builder: aBuilder.
	self buildSeparator.
	self runExamples: [ package gtExamplesContained ] builder: aBuilder.
	self debugExamples: [ package gtExamplesContained ] builder: aBuilder.
	self buildSeparator.
	self browsePackage: package builder: aBuilder.
	self buildSeparator.
	self browseExamplesReferencing: package packageName  builder: aBuilder.
	self browseExamplesWithSubject: package asGTExampleSubject builder: aBuilder.