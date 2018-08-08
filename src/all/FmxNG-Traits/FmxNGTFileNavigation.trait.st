Trait {
	#name : #FmxNGTFileNavigation,
	#instVars : [
		'endColumn',
		'endLine',
		'startColumn',
		'startLine'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTFileNavigation classSide >> annotation [

	<MSEClass: #TFileNavigation super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #'instance creation' }
FmxNGTFileNavigation classSide >> fileName: aString startLine: anInteger startColumn: anInteger2 endLine: anInteger3 endColumn: anInteger4 [
	^ self 
		fileName: aString
		startLine: anInteger
		startColumn: anInteger2
		endLine: anInteger3
		endColumn: anInteger4
		model: nil
]

{ #category : #'instance creation' }
FmxNGTFileNavigation classSide >> fileName: aString startLine: anInteger startColumn: anInteger2 endLine: anInteger3 endColumn: anInteger4 model: aMooseModel [
	^ self new
		mooseModel: aMooseModel;
		fileName: aString;
		startLine: anInteger;
		startColumn: anInteger2;
		endLine: anInteger3;
		endColumn: anInteger4;
		yourself
]

{ #category : #generator }
FmxNGTFileNavigation classSide >> generatedSlotNames [
	<generated>
	'FmxNGTFileNavigation class>>#generatedSlotNames'.
	^ #(startLine startColumn endLine endColumn)
]

{ #category : #generator }
FmxNGTFileNavigation classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTFileNavigation >> endColumn [

	<MSEProperty: #endColumn type: #Number>
	<generated>
	<MSEComment: 'Number of the end column'>
	^ endColumn
]

{ #category : #accessing }
FmxNGTFileNavigation >> endColumn: anObject [

	<generated>
	endColumn := anObject

]

{ #category : #accessing }
FmxNGTFileNavigation >> endLine [

	<MSEProperty: #endLine type: #Number>
	<generated>
	<MSEComment: 'Number of the end line'>
	^ endLine
]

{ #category : #accessing }
FmxNGTFileNavigation >> endLine: anObject [

	<generated>
	endLine := anObject

]

{ #category : #accessing }
FmxNGTFileNavigation >> includeLine: anInteger [
	^ anInteger between: startLine and: endLine
]

{ #category : #accessing }
FmxNGTFileNavigation >> interval [
	| start end index |
	index := 0.
	start := 1.
	end := 0.
	self completeText lineIndicesDo: [:lineStart :lineEnd :y | 
		index := index + 1.
		self startLine = index ifTrue: [ start := lineStart ].
		self endLine = index ifTrue: [end := lineEnd ] ].
	^ start to: end
]

{ #category : #accessing }
FmxNGTFileNavigation >> intervalAsCharPos [
	| start end index |
	index := 0.
	start := 1.
	end := 0.
	self completeText lineIndicesDo: [:lineStart :lineEnd :y | 
		index := index + 1.
		self startLine = index ifTrue: [ start := lineStart ].
		self endLine = index ifTrue: [end := lineEnd ] ].
	^ start to: end
]

{ #category : #accessing }
FmxNGTFileNavigation >> lineCount [
	(endLine notNil and: [ startLine notNil ])
		ifTrue: [ ^ endLine - startLine + 1 ].

	"if no start/end position, use the comple text ..."
	^ self hasSourceText 
		ifTrue: [ self completeText lineCount ]
		ifFalse: [ self notExistentMetricValue ]
	
]

{ #category : #accessing }
FmxNGTFileNavigation >> startColumn [

	<MSEProperty: #startColumn type: #Number>
	<generated>
	<MSEComment: 'Number of the start column'>
	^ startColumn
]

{ #category : #accessing }
FmxNGTFileNavigation >> startColumn: anObject [

	<generated>
	startColumn := anObject

]

{ #category : #accessing }
FmxNGTFileNavigation >> startLine [

	<MSEProperty: #startLine type: #Number>
	<generated>
	<MSEComment: 'Number of the start line'>
	^ startLine
]

{ #category : #accessing }
FmxNGTFileNavigation >> startLine: anObject [

	<generated>
	startLine := anObject

]
