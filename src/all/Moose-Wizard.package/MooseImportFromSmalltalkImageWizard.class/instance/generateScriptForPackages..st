actions
generateScriptForPackages: aCollectionOfPackageNames

	| className scriptClass modelName packageNames methodSourceString contextItems |
	className := UIManager default 
		request: 'Enter class where to install the script'
		initialAnswer: 'MooseScripts'.
	scriptClass := Smalltalk at: className asSymbol ifAbsent: [ ^ self ].
	modelName := UIManager default 
		request: 'Enter name of the selector created class-side'
		initialAnswer: 'NewModel'.
	(modelName isNil or: [ modelName size = 0 ]) ifTrue: [ ^ self ].
	
	packageNames := '. ' join: (aCollectionOfPackageNames collect: [ :each | each surroundedBySingleQuotes ] ).
	contextItems := '. ' join: ((wizardInformations at: #contextToImport) collect: [ :each | each asString ] ) .

	methodSourceString := String new: 200 streamContents: [:str |
		str nextPutAll: 'create'; nextPutAll: modelName asLegalSelector capitalized; cr.
		str tab.
		
		str nextPutAll: '^ MooseScripts createModelNamed: '.
		str nextPutAll: modelName surroundedBySingleQuotes.
		str cr ; tab ; tab.
		str nextPutAll: ' withPackages: {'.
		str nextPutAll: packageNames; nextPut: $}. 
		str cr ; tab ; tab.
		str nextPutAll: ' importer: '.
		str nextPutAll: self importerSelected asString.
		str cr ; tab ; tab.
		str nextPutAll: ' candidateClass: '.
		str nextPutAll: self candidateListOperatorClass asString.
		str cr ; tab ; tab.
		str nextPutAll: ' mergeClassMetaClass: '.
		str nextPutAll: (wizardInformations at: #mergeClassMetaclass) asString.
		str cr ; tab ; tab.
		str nextPutAll: ' contextItems: {'.
		str nextPutAll: contextItems ; nextPut: $}.
		str cr.
	].
	
	scriptClass class
			compile: methodSourceString
			classified: 'model'.