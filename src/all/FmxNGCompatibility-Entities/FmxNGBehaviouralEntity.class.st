Class {
	#name : #FmxNGBehaviouralEntity,
	#superclass : #FmxNGBehaviouralEntityGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGBehaviouralEntity class >> annotation [

	<MSEClass: #BehaviouralEntity super: #FmxNGBehaviouralEntityGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> accept: aVisitor [

	aVisitor visitBehaviouralEntity: self
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addAccess: anAccess [ 
	accesses add: anAccess
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addImplicitVariable: anImplicitVariable [
	implicitVariables add: anImplicitVariable
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addIncomingInvocation: anInvocation [
	incomingInvocations add: anInvocation
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addLocalVariable: aLocalVariable [
	localVariables add: aLocalVariable
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addOutgoingInvocation: anInvocation [
	outgoingInvocations add: anInvocation
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addOutgoingReference: aReference [ 
	outgoingReferences add: aReference
]

{ #category : #accessing }
FmxNGBehaviouralEntity >> addParameter: aParameter [ 
	parameters add: aParameter
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> clientBehaviours [
	<MSEProperty: #clientBehaviours type: #FmxNGBehaviouralEntity> <multivalued> <derived>
	<MSEComment: 'All behaviours that depend on the receiver'>
	^ self invokingBehaviours 
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> computeNumberOfLinesOfCode [
	self hasSourceAnchor 
		ifTrue: [ ^ self sourceAnchor lineCount ].
	^ (self sourceText = '')
			ifTrue: [ self notExistentMetricValue ]
			ifFalse: [ self sourceText lineCount ]
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> computeNumberOfLinesOfCodeIfSmalltalk [
	| parser |
	
	parser := RBVisitorForFAMIXMetrics new.
	parser processMethod: self usingImporter: nil inModel: nil.
	^ parser numberOfLinesOfCode
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self signature: anEntity signature copy.
	self declaredType: (aVisitor visit: anEntity declaredType).
	
	anEntity localVariables do: [ :var | 
		self addLocalVariable: (aVisitor visit: var) ].
	anEntity parameters do: [ :par | 
		self addParameter: (aVisitor visit: par) ].
	anEntity outgoingInvocations do: [ :inv | 
		aVisitor visit: inv ].
	anEntity accesses do: [ :acc | 
		aVisitor visit: acc ].
	anEntity outgoingReferences do: [:r|
		aVisitor visit: r ]
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> cyclomaticComplexity [
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

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> cyclomaticComplexity: aNumber [

	self privateState propertyAt: #cyclomaticComplexity put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> hasEmptyBody [
	"Copied from FAMIX2.
	 The closest we can get in FAMIX2 to determine if a body is empty is to check if the method
	 performs no invocations and/or accesses. The only thing left to do would be the declaration
	 of local variables (that are not accesses afterwards).

	Note that an abstract method with only 'self subclassResponsibility' is not regarded as an 
	empty method in this scheme (which is questionable)."
	"note that the presence of statements should be checked too for that..."
	^ self numberOfAccesses = 0 and: [ self numberOfOutgoingInvocations = 0 ]
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> invokedBehaviours [
	^ self queryAllOutgoingInvocations opposites
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> invokingBehaviours [
	^ self queryAllIncomingInvocations opposites
]

{ #category : #'Famix-Implementation' }
FmxNGBehaviouralEntity >> isBehaviouralEntity [
	^ true
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> numberOfAccesses [
	<MSEProperty: #numberOfAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses from a method'>
	
	^ self 
		lookUpPropertyNamed: #numberOfAccesses
		computedAs: [ self accesses size ]
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> numberOfComments [
	<MSEProperty: #numberOfComments type: #Number>
	<MSEComment: 'The number of comment fragments'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfComments computedAs: [ self comments size ]
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> numberOfComments: aNumber [

	self privateState propertyAt: #numberOfComments put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> numberOfConditionals [
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

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> numberOfConditionals: aNumber [

	self privateState propertyAt: #numberOfConditionals put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> numberOfLinesOfCode [
	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<MSEComment: 'The number of lines of code in a method.'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [ self mooseModel isSmalltalk
				ifTrue: [ self computeNumberOfLinesOfCodeIfSmalltalk ]
				ifFalse: [ self computeNumberOfLinesOfCode ] ]
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> numberOfLinesOfCode: aNumber [

	self privateState propertyAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> numberOfMessageSends [
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

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> numberOfOutgoingInvocations [
	<MSEProperty: #numberOfOutgoingInvocations type: #Number>
	<derived>
	<MSEComment: 'The number of invocations in a method'>
	
	^self
		lookUpPropertyNamed: #numberOfOutgoingInvocations
		computedAs: [self outgoingInvocations size]
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> numberOfParameters [
	<MSEProperty: #numberOfParameters type: #Number>
	<MSEComment: 'The number of parameters in a method'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfParameters computedAs: [ self parameters size ]
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> numberOfParameters: aNumber [

	self privateState propertyAt: #numberOfParameters put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> numberOfStatements [
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

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> numberOfStatements: aNumber [

	self privateState propertyAt: #numberOfStatements put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGBehaviouralEntity >> providerBehaviours [
	<MSEProperty: #providerBehaviours type: #FmxNGBehaviouralEntity> <derived> <multivalued>
	<MSEComment: 'All behaviours that the receiver depends on'>

	^ self invokedBehaviours 
]
