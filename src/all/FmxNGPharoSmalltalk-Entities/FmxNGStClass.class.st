Class {
	#name : #FmxNGStClass,
	#superclass : #FmxNGStType,
	#traits : 'FmxNGTClass + FmxNGTWithExceptions + FmxNGTWithMethods + FmxNGTWithSubInheritances + FmxNGTWithSuperInheritances + FmxNGTClassMetrics + FmxNGTLCOMMetrics + FmxNGTClassHierarchyNavigation',
	#classTraits : 'FmxNGTClass classTrait + FmxNGTWithExceptions classTrait + FmxNGTWithMethods classTrait + FmxNGTWithSubInheritances classTrait + FmxNGTWithSuperInheritances classTrait + FmxNGTClassMetrics classTrait + FmxNGTLCOMMetrics classTrait + FmxNGTClassHierarchyNavigation classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStClass class >> annotation [

	<generated>
	<MSEClass: #Class super: #FmxNGStType>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStClass class >> generatedSlotNames [
	<generated>
	'FmxNGStClass class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStClass class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTClass FmxNGTWithExceptions FmxNGTWithMethods FmxNGTWithSubInheritances FmxNGTWithSuperInheritances)
]

{ #category : #meta }
FmxNGStClass class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions-metrics-support' }
FmxNGStClass >> accessedAttributes [
	
	"Returns my attributes accessed by my methods. If the same attribute is accessed 
	by two different methods it is counted twice.
	Used to support the calculation of LCOM"
	
	^ self methodsWithoutSutbsAndConstructors asOrderedCollection flatCollect: [ :method | method accessedAttributes ]
]

{ #category : #'Famix-Implementation' }
FmxNGStClass >> isIgnored [
	<MSEProperty: #isIgnored type: #Boolean>
	<multivalued>
	<derived>
	<MSEComment:
		'If the class is a test class, it can be annotated with Ignore, all the tests of contained are bypassed'>
	^ (self isAnnotatedWith: 'Ignore') 
]

{ #category : #'Famix-Implementation' }
FmxNGStClass >> isInterface [

	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGStClass >> methodsWithoutSutbsAndConstructors [

	"Removing stub and contructor methods. Used to support the calculation of LCOM."
	
	^ (self methods select: [ :each | 
		each isStub not and: [each isConstructor not]]) asSet
]

{ #category : #'Famix-Implementation' }
FmxNGStClass >> mooseNameOn: aStream [ 
	| parent |
	parent := self typeContainer.
	parent ifNotNil: 
		[ 
			parent mooseNameOn: aStream.
			aStream
				nextPut: $:;
				nextPut: $: ].
	self name ifNotNil: [aStream nextPutAll: self name]
]

{ #category : #'Famix-Implementation' }
FmxNGStClass >> smalltalkClass [ 
	"Returns the associated smalltalk class if it exist in the system."
	
	^ FAMIXNameResolver smalltalkClassFromFamixClassName: 
			self name  ifAbsent: [nil] 
]

{ #category : #'Famix-Implementation' }
FmxNGStClass >> sourceText [
	self flag: 'This code should be delegated to the FAMIXPharoAnchor'.
	^ self sourceLanguage isSmalltalk
			ifTrue: [
				self mooseName, 
				Character cr asSymbol asString, 
				(Character cr asSymbol asString join: (self attributes collect: #name)), 
				Character cr asSymbol asString, 
				(Character cr asSymbol asString join: (self methods collect: [:each | Character cr asSymbol asString, each sourceText])).
			] ifFalse: [ super sourceText ]
]
