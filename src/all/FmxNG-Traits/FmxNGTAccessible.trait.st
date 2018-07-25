Trait {
	#name : #FmxNGTAccessible,
	#instVars : [
		'#incomingAccesses => FMMany type: #FmxNGTAccess opposite: #variable'
	],
	#category : #'FmxNG-Traits-Access'
}

{ #category : #meta }
FmxNGTAccessible classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAccessible super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTAccessible classSide >> generatedSlotNames [
	<generated>
	'FmxNGTAccessible class>>#generatedSlotNames'.
	^ #(incomingAccesses)
]

{ #category : #generator }
FmxNGTAccessible classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTAccessible >> accessingClasses [

	^(self accessingMethods collectAsSet: [:each | each belongsTo]) asOrderedCollection
]

{ #category : #accessing }
FmxNGTAccessible >> accessingMethods [

	^ self incomingAccesses collectAsSet: [:anAccess | anAccess accessor].

]

{ #category : #adding }
FmxNGTAccessible >> addIncomingAccess: anAccess [
	incomingAccesses add: anAccess
]

{ #category : #accessing }
FmxNGTAccessible >> globalAccesses [
	| attrclass globalAccesses |
	attrclass := self belongsTo.
	globalAccesses := Set new.
	self
		incomingAccesses do:
			[:anAccess | 
			| ent |
			ent := anAccess accessor.
			ent belongsTo = attrclass ifFalse: [globalAccesses add: anAccess]].
	^globalAccesses
]

{ #category : #accessing }
FmxNGTAccessible >> incomingAccesses [

	<generated>
	<MSEComment: 'All Famix accesses pointing to this structural entity'>
	^ incomingAccesses
]

{ #category : #accessing }
FmxNGTAccessible >> incomingAccesses: anObject [

	<generated>
	incomingAccesses value: anObject

]

{ #category : #accessing }
FmxNGTAccessible >> localAccesses [
	| attrclass localAccesses |
	attrclass := self belongsTo.
	localAccesses := Set new.
	self
		incomingAccesses do:
			[:anAccess | 
			| ent |
			ent := anAccess accessor.
			ent belongsTo = attrclass ifTrue: [localAccesses add: anAccess]].
	^localAccesses
]

{ #category : #accessing }
FmxNGTAccessible >> numberOfAccesses [
	<MSEProperty: #numberOfAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses of an attribute.'>

	^self
		lookUpPropertyNamed: #numberOfAccesses
		computedAs: [self incomingAccesses size]
]

{ #category : #accessing }
FmxNGTAccessible >> numberOfAccessingClasses [
	<MSEProperty: #numberOfAccessingClasses type: #Number>
	<derived>
	<MSEComment: 'The number of classes from which at least one method accesses an attribute.'>

	^self
		lookUpPropertyNamed: #numberOfAccessingClasses
		computedAs: [self accessingClasses size]
]

{ #category : #accessing }
FmxNGTAccessible >> numberOfAccessingMethods [
	<MSEProperty: #numberOfAccessingMethods type: #Number>
	<derived>
	<MSEComment: 'The number of methods accessing an attribute.'>				
	
	^self
		lookUpPropertyNamed: #numberOfAccessingMethods
		computedAs: [self accessingMethods size]
]

{ #category : #accessing }
FmxNGTAccessible >> numberOfGlobalAccesses [
	<MSEProperty: #numberOfGlobalAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses to an attribute from outside the class defining the attribute.'>	

	^self
		lookUpPropertyNamed: #numberOfGlobalAccesses
		computedAs: [self globalAccesses size]
]

{ #category : #accessing }
FmxNGTAccessible >> numberOfLocalAccesses [
	<MSEProperty: #numberOfLocalAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses to an attribute from inside the class defining the attribute.'>
		
	^self
		lookUpPropertyNamed: #numberOfLocalAccesses
		computedAs: [self localAccesses size]
]

{ #category : #accessing }
FmxNGTAccessible >> readAccesses [
	
	^self incomingAccesses select: [:each | each isRead]
]
