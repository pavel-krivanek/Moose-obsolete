"
FAMIXScopingEntity represents an entity defining a scope at a global level. 

Packages and Namespaces are two different concept in terms of scoping entity. Namespaces have semantic meaning in the language so they influence the unique name of the entity, while Packages are physical entities for packaging. In Smalltalk the two are explicitly different. In C++ we have explicit Namespaces, but not so explicit Packages. In Java, we have both Namespace (what you define in your Java source), and Package (the folder structure), but they happen to overlap in naming (although one is with . and the other one is with /) so people tend to see them as packages only.
"
Trait {
	#name : #FmxNGTScopingEntity,
	#instVars : [
		'#childScopes => FMMany type: #FmxNGTScopingEntity opposite: #parentScope',
		'#parentScope => FMOne type: #FmxNGTScopingEntity opposite: #childScopes'
	],
	#category : #'FmxNG-Traits-ScopingEntity'
}

{ #category : #meta }
FmxNGTScopingEntity classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TScopingEntity super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTScopingEntity classSide >> generatedSlotNames [
	<generated>
	'FmxNGTScopingEntity class>>#generatedSlotNames'.
	^ #(parentScope childScopes)
]

{ #category : #generator }
FmxNGTScopingEntity classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTScopingEntity >> addChildScope: aScopingEntity [ 
	childScopes add: aScopingEntity
]

{ #category : #accessing }
FmxNGTScopingEntity >> allChildScopes [
	| result |
	result := OrderedCollection new.
	self allChildScopesDo: [ :each | result add: each].
	^ result 
]

{ #category : #accessing }
FmxNGTScopingEntity >> allChildScopesDo: aBlock [
	self childScopes do: [:each |
		each withAllChildScopesDo: aBlock ]
]

{ #category : #accessing }
FmxNGTScopingEntity >> allChildScopesGroup [
	<navigation: 'All child scopes'>
	^ FAMIXNamespaceGroup withAll: self allChildScopes withDescription: 'All child scopes from ', self printString
]

{ #category : #accessing }
FmxNGTScopingEntity >> allParentScopesDo: aBlock [
	self parentScope notNil ifTrue: [
		self parentScope withAllParentScopesDo: aBlock ]
]

{ #category : #accessing }
FmxNGTScopingEntity >> allRecursiveScopes [
	self deprecated: 'Use allChildScopes'.
	^ self allChildScopes 
]

{ #category : #accessing }
FmxNGTScopingEntity >> childScopes [

	<generated>
	<MSEComment: 'Child scopes embedded in this scope, if any.'>
	^ childScopes
]

{ #category : #accessing }
FmxNGTScopingEntity >> childScopes: anObject [

	<generated>
	childScopes value: anObject

]

{ #category : #accessing }
FmxNGTScopingEntity >> isRoot [
	^ self parentScope isNil
]

{ #category : #accessing }
FmxNGTScopingEntity >> parentScope [

	<generated>
	<MSEComment: 'Parent scope embedding this scope, if any.'>
	<container>

	^ parentScope
]

{ #category : #accessing }
FmxNGTScopingEntity >> parentScope: anObject [

	parentScope := anObject.
	self resetMooseName.

]

{ #category : #accessing }
FmxNGTScopingEntity >> root [
	^ self isRoot 
		ifTrue: [ self ]
		ifFalse: [ ^ self parentScope root ]
]

{ #category : #accessing }
FmxNGTScopingEntity >> withAllChildScopes [
	| result |
	result := OrderedCollection new.
	self withAllChildScopesDo: [ :each | result add: each].
	^ result 
]

{ #category : #accessing }
FmxNGTScopingEntity >> withAllChildScopesDo: aBlock [
	aBlock value: self.
	self allChildScopesDo: aBlock
]

{ #category : #accessing }
FmxNGTScopingEntity >> withAllParentScopes [
	| result |
	result := OrderedCollection new.
	self withAllParentScopesDo: [ :each | result add: each].
	^ result 
]

{ #category : #accessing }
FmxNGTScopingEntity >> withAllParentScopesDo: aBlock [
	aBlock value: self.
	self allParentScopesDo: aBlock
]
