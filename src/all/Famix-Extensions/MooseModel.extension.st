Extension { #name : #MooseModel }

{ #category : #'*Famix-Extensions' }
MooseModel >> allSourceLanguages [
	| result |
	result := MooseGroup new.
	FmxNGSourceLanguage
		withAllSubclassesDo: [ :each | result addAll: (self allWithType: each) ].
	^ result
]

{ #category : #'*Famix-Extensions' }
MooseModel >> averageCyclomaticComplexity [
	<MSEProperty: #averageCyclomaticComplexity type: #Number>
	<derived>
	<MSEComment: 'The average cyclomatic complexity for methods'>
	^ self lookUpPropertyNamed: #averageCyclomaticComplexity computedAs: [ (self allMethods collect: #cyclomaticComplexity) ifEmpty: [ 1 ] ifNotEmpty: #average ]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> ensureClassesAndNamespaces [
	<menuItem: 'Ensure Classes and Namespaces' category: 'Utilities'>
	self allMethods
		do: [ :each | each parentType ifNil: [ each parentType: self unknownFAMIXClass ] ].
	self allClasses
		do: [ :each | each container ifNil: [ each container: self unknownFAMIXNamespace ] ]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> isSmalltalk [
	^ self sourceLanguage isSmalltalk
]

{ #category : #'*Famix-Extensions' }
MooseModel >> numberOfClasses [
	<MSEProperty: #numberOfClasses type: #Number>
	<MSEComment: 'The number of classes'>
	
	^self
		lookUpPropertyNamed: #numberOfClasses
		computedAs: [ self allClasses size ]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> numberOfClassesPerPackage [
	<MSEProperty: #numberOfClassesPerPackage type: #Number>
	<MSEComment: 'The number of methods per package in the model'>
	^ self
		lookUpPropertyNamed: #numberOfClassesPerPackage
		computedAs: [ self numberOfMethods / self numberOfClasses ]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> numberOfLinesOfCodePerClass [
	<MSEProperty: #numberOfLinesOfCodePerClass type: #Number>
	<MSEComment: 'The number of lines of code per class in the model'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCodePerClass
		computedAs: [ self numberOfLinesOfCode / self numberOfClasses ]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> numberOfLinesOfCodePerMethod [
	<MSEProperty: #numberOfLinesOfCodePerMethod type: #Number>
	<MSEComment: 'The number of lines of code per method in the model'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCodePerMethod
		computedAs: [ self numberOfLinesOfCode / self numberOfMethods ]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> numberOfLinesOfCodePerPackage [
	<MSEProperty: #numberOfLinesOfCodePerPackage type: #Number>
	<MSEComment: 'The number of lines of code per package in the model'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCodePerPackage
		computedAs: [ self numberOfLinesOfCode / self numberOfPackages ]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> numberOfMethods [
	<MSEProperty: #numberOfMethods type: #Number>
	<MSEComment: 'The number of methods'>
	
	^self
		lookUpPropertyNamed: #numberOfMethods
		computedAs: [ self allMethods size ]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> numberOfMethodsPerPackage [
	<MSEProperty: #numberOfClassesPerPackage type: #Number>
	<MSEComment: 'The number of methods per package in the model'>
	^ self
		lookUpPropertyNamed: #numberOfMethodsPerPackage
		computedAs: [ self numberOfMethods / self numberOfPackages ]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> numberOfModelClasses [
	<MSEProperty: #numberOfModelClasses type: #Number>
	<MSEComment: 'The number of classes in the model'>
	
	^self
		lookUpPropertyNamed: #numberOfModelClasses
		computedAs: [ self allModelClasses size ]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> numberOfModelMethods [
	<MSEProperty: #numberOfModelMethods type: #Number>
	<MSEComment: 'The number of methods in the model'>
	
	^self
		lookUpPropertyNamed: #numberOfModelMethods
		computedAs: [ self allModelMethods size ]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> overviewPyramidMetrics [

	^ self privateState propertyAt: #overviewPyramidMetrics ifAbsentPut: [OverviewPyramidMetrics on: self]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> sourceLanguage [
	<MSEProperty: #sourceLanguage type: #FAMIXSourceLanguage>
	<MSEComment: 'Source of the Language to which the model corresponds'>
	^ sourceLanguage
		ifNil: [ sourceLanguage := self allSourceLanguages
				detect: [ :each | each isAttached not ]
				ifNone: [ FAMIXUnknownSourceLanguage new ] ]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> sourceLanguage: aSymbol [
	sourceLanguage := aSymbol
]

{ #category : #'*Famix-Extensions' }
MooseModel >> unknownFAMIXClass [
	^ self allClasses 
		detect: [:each | each mooseName = #'unknownNamespace::UnknownClass'] 
		ifNone: [
			self add: (
				FmxNGClass new 
					name: 'UnknownClass'; 
					container: self unknownFAMIXNamespace; 
					isStub: true; 
					yourself)
		]
]

{ #category : #'*Famix-Extensions' }
MooseModel >> unknownFAMIXNamespace [
	^ self allNamespaces
		detect: [ :each | each mooseName = #unknownNamespace ]
		ifNone: [ self
				add:
					(FmxNGNamespace new
						name: 'unknownNamespace';
						isStub: true;
						yourself) ]
]
