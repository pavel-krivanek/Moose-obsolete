Class {
	#name : #FmxNGStMethod,
	#superclass : #FmxNGStContainerEntity,
	#traits : 'FmxNGTInvocable + FmxNGTMethod + FmxNGTTypedStructure + FmxNGTWithAccesses + FmxNGTWithClassScope + FmxNGTWithDereferencedInvocations + FmxNGTWithImplicitVariables + FmxNGTWithInvocations + FmxNGTWithLocalVariables + FmxNGTWithParameters + FmxNGTWithReferences + FmxNGTWithSignature',
	#classTraits : 'FmxNGTInvocable classTrait + FmxNGTMethod classTrait + FmxNGTTypedStructure classTrait + FmxNGTWithAccesses classTrait + FmxNGTWithClassScope classTrait + FmxNGTWithDereferencedInvocations classTrait + FmxNGTWithImplicitVariables classTrait + FmxNGTWithInvocations classTrait + FmxNGTWithLocalVariables classTrait + FmxNGTWithParameters classTrait + FmxNGTWithReferences classTrait + FmxNGTWithSignature classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStMethod class >> annotation [

	<generated>
	<MSEClass: #Method super: #FmxNGStContainerEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStMethod class >> generatedSlotNames [
	<generated>
	'FmxNGStMethod class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStMethod class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTInvocable FmxNGTMethod FmxNGTTypedStructure FmxNGTWithAccesses FmxNGTWithClassScope FmxNGTWithDereferencedInvocations FmxNGTWithImplicitVariables FmxNGTWithInvocations FmxNGTWithLocalVariables FmxNGTWithParameters FmxNGTWithReferences FmxNGTWithSignature)
]

{ #category : #meta }
FmxNGStMethod class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGStMethod >> belongsTo [
	^ self parentType
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> computeNumberOfLinesOfCode [
	self hasSourceAnchor 
		ifTrue: [ ^ self sourceAnchor lineCount ].
	^ (self sourceText = '')
			ifTrue: [ self notExistentMetricValue ]
			ifFalse: [ self sourceText lineCount ]
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> computeNumberOfLinesOfCodeIfSmalltalk [
	| parser |
	
	parser := RBVisitorForFAMIXMetrics new.
	parser processMethod: self usingImporter: nil inModel: nil.
	^ parser numberOfLinesOfCode
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> cyclomaticComplexity [
	<MSEProperty: #cyclomaticComplexity type: #Number>
	<MSEComment: 'The number of linear-independent paths through a method.'>
	^ self
		lookUpPropertyNamed: #cyclomaticComplexity
		computedAs: [ self mooseModel isSmalltalk
				ifTrue: [ | parser |
					parser := RBVisitorForFAMIXMetrics new.
					parser processMethod: self usingImporter: nil inModel: nil.
					parser cyclomaticNumber2 ]
				ifFalse: [ self notExistentMetricValue ] ]
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> hasEmptyBody [
	"Copied from FAMIX2.
	 The closest we can get in FAMIX2 to determine if a body is empty is to check if the method
	 performs no invocations and/or accesses. The only thing left to do would be the declaration
	 of local variables (that are not accesses afterwards).

	Note that an abstract method with only 'self subclassResponsibility' is not regarded as an 
	empty method in this scheme (which is questionable)."
	"note that the presence of statements should be checked too for that..."
	^ self numberOfAccesses = 0 and: [ self numberOfOutgoingInvocations = 0 ]
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> incomingTypeDeclarations [
	^ {}
]

{ #category : #testing }
FmxNGStMethod >> isJUnit4Test [
	<MSEProperty: #isJUnit4Test type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is considered as a Junit 4 Java test'>
	^ self isAnnotatedWith: 'Test'
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> numberOfAccesses [
	<MSEProperty: #numberOfAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses from a method'>
	
	^ self 
		lookUpPropertyNamed: #numberOfAccesses
		computedAs: [ self accesses size ]
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> numberOfComments [
	<MSEProperty: #numberOfComments type: #Number>
	<MSEComment: 'The number of comment fragments'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfComments computedAs: [ self comments size ]
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> numberOfComments: aNumber [

	self privateState propertyAt: #numberOfComments put: aNumber
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> numberOfConditionals [
	<MSEProperty: #numberOfConditionals type: #Number>
	<MSEComment: 'The number of conditionals in a method'>
	^ self
		lookUpPropertyNamed: #numberOfConditionals
		computedAs: [ 
			self mooseModel isSmalltalk
				ifTrue: [ 
					| parser |
					parser := RBVisitorForFAMIXMetrics new.
					parser processMethod: self usingImporter: nil inModel: nil.
					parser numberOfConditionals ]
				ifFalse: [ self notExistentMetricValue ] ]
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> numberOfConditionals: aNumber [

	self privateState propertyAt: #numberOfConditionals put: aNumber
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> numberOfLinesOfCode [
	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<MSEComment: 'The number of lines of code in a method.'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [ self mooseModel isSmalltalk
				ifTrue: [ self computeNumberOfLinesOfCodeIfSmalltalk ]
				ifFalse: [ self computeNumberOfLinesOfCode ] ]
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> numberOfLinesOfCode: aNumber [

	self privateState propertyAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> numberOfMessageSends [
	<MSEProperty: #numberOfMessageSends type: #Number>
	<derived>
	<MSEComment: 'The number of message from a method'>
	^ self
		lookUpPropertyNamed: #numberOfMessageSends
		computedAs: [ 
			self mooseModel isSmalltalk
				ifTrue: [ 
					| parser |
					parser := RBVisitorForFAMIXMetrics new.
					parser processMethod: self usingImporter: nil inModel: nil.
					parser numberOfMessageSends ]
				ifFalse: [ self notExistentMetricValue ] ]
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> numberOfOutgoingInvocations [
	<MSEProperty: #numberOfOutgoingInvocations type: #Number>
	<derived>
	<MSEComment: 'The number of invocations in a method'>
	
	^self
		lookUpPropertyNamed: #numberOfOutgoingInvocations
		computedAs: [self outgoingInvocations size]
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> numberOfParameters [
	<MSEProperty: #numberOfParameters type: #Number>
	<MSEComment: 'The number of parameters in a method'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfParameters computedAs: [ self parameters size ]
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> numberOfParameters: aNumber [

	self privateState propertyAt: #numberOfParameters put: aNumber
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> numberOfStatements [
	<MSEProperty: #numberOfStatements type: #Number>
	<MSEComment: 'The number of statements in a method'>
	^ self
		lookUpPropertyNamed: #numberOfStatements
		computedAs: [ self mooseModel isSmalltalk
				ifTrue: [ | parser |
					parser := RBVisitorForFAMIXMetrics new.
					parser processMethod: self usingImporter: nil inModel: nil.
					parser numberOfStatements ]
				ifFalse: [ self notExistentMetricValue ] ]
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> numberOfStatements: aNumber [

	self privateState propertyAt: #numberOfStatements put: aNumber
]

{ #category : #'Famix-Extensions-private' }
FmxNGStMethod >> outgoingTypeDeclarations [
	^ self declaredType ifNil: [ {} ] ifNotNil: [ :dt | {(MooseChefTypeDeclarationAssociation newFrom: self to: dt)} ]
]

{ #category : #'Famix-Extensions' }
FmxNGStMethod >> parentTypeIsStub [
	^ self parentType ifNotNil: [ :e | e isStub ] ifNil: [ true ]
]

{ #category : #accessing }
FmxNGStMethod >> smalltalkClass [ 
	"Return the smalltalk class associated with the receiver. Note that it may be different than doing self parentType because the class and metaclass can be merged."
	
	^   ('*_class' match: self parentType name)
			ifTrue: [self parentType smalltalkClass]
			ifFalse: [self hasClassScope 
							ifTrue: [self parentType smalltalkClass class]
							ifFalse: [self parentType smalltalkClass]]
]
