public
menuFor: aBuilder
	| model method examples |
	(model := aBuilder model) ifNil: [ ^ self ].
	(method := model selectedMethod) ifNil: [ ^ self ].
	examples := method gtExamples reject: [ :each | each isNil ].
	
	self buildSubmenu: aBuilder.
	examples ifNotEmpty: [ 
		| problems arguments subjects afters |
		problems := (examples gather: [ :each | each problems ]) reject: [ :each | each isNil ].
		arguments := (examples gather: [ :each | each arguments ]) reject: [ :each | each isNil ].
		afters := (examples collect: [ :each | each after ]) reject: [ :each | each isNil ].
		subjects := (examples gather: [ :each | each subjects ]) reject: [ :each | each isNil ].
		self inspectExamples: [ examples ] builder: aBuilder.
		self inspectReturnValue: [ examples ] builder: aBuilder.
		self inspectResults: [ examples ] builder: aBuilder.
		problems ifNotEmpty: [
			self inspectProblems: [ examples ] builder: aBuilder.
			self buildSeparator ].
		self buildSeparator.
		self runExamples: [ examples ] builder: aBuilder.
		self debugExamples: [ examples ] builder: aBuilder.
		self buildSeparator.
		arguments ifNotEmpty: [
			self browseDependencies: examples builder: aBuilder.
			self browseDependents: examples builder: aBuilder.
			self buildSeparator.
			self browseAllDependencies: examples builder: aBuilder.
			self browseAllDependents: examples builder: aBuilder.
			self buildSeparator ].
		self buildSeparator.
		afters ifNotEmpty: [ 
			self browseAfter: afters builder: aBuilder.
			self buildSeparator ].
		self buildSeparator.
		subjects ifNotEmpty: [ 
			self browseExampleSubjects: examples builder: aBuilder.
			self browseSubjects: subjects builder: aBuilder.
			self buildSeparator ].
		self buildSeparator ].
	self browseExamplesReferencing: method selector builder: aBuilder.
	self browseExamplesWithSubject: method asGTExampleSubject builder: aBuilder.