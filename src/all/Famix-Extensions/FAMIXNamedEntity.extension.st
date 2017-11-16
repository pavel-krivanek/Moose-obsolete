Extension { #name : #FAMIXNamedEntity }

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> accept: aVisitor [

	aVisitor visitNamedEntity: self
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self name: anEntity name copy.
	self isStub: anEntity isStub.
	self modifiers: (anEntity modifiers collect: [:m| m copy])

]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> isAbstract [
	<MSEProperty: #isAbstract type: #Boolean> <derived>
	<MSEComment: 'Flag true for abstract entities. Language dependent.'>
	
	^ self modifiers includes: #abstract
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> isAbstract: aBoolean [
	^ self modifierSet: aBoolean for: #abstract
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> isFinal [
	<MSEProperty: #isFinal type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities defined as being final. Language dependent.'>	

	^ self modifiers includes: #final
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> isFinal: aBoolean [
	^ self modifierSet: aBoolean for: #final
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> isPackage [
	<MSEProperty: #isPackage type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities that have a package visibility. Language dependent.'>
	
	^ self modifiers includes: #package
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> isPackage: aBoolean [
	^ self modifierSet: aBoolean for: #package
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> isPrivate [
	<MSEProperty: #isPrivate type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities invisible out of their owner scope. Language dependent.'>
	
	^ self modifiers includes: #private
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> isPrivate: aBoolean [
	^ self modifierSet: aBoolean for: #private
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> isProtected [
	<MSEProperty: #isProtected type: #Boolean> <derived>
	<MSEComment: 'Flag true for protected entities, depending on language semantics.'>
	
	^ self modifiers includes: #protected
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> isProtected: aBoolean [
	^ self modifierSet: aBoolean for: #protected
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> isPublic [
	<MSEProperty: #isPublic type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities accessible from anywhere. Language dependent.'>	

	^ self modifiers includes: #public
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> isPublic: aBoolean [
	^ self modifierSet: aBoolean for: #public
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> nameLength [
	<MSEProperty: #nameLength type: #Number>
	<derived>
	<MSEComment: 'The number of characters in the name'>
	
	^self
		lookUpPropertyNamed: #nameLength
		computedAs: [self name size]
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> nameLength: aNumber [
	
	self privateState propertyAt: #nameLength put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXNamedEntity >> stubFormattedName [
	 ^ self isStub 
		ifTrue: [ Text 
					string: self name
					attribute: TextEmphasis italic ]
		ifFalse: [ Text fromString: self name ] 
]
