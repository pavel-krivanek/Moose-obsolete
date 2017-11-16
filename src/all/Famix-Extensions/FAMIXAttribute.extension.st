Extension { #name : #FAMIXAttribute }

{ #category : #'*Famix-Extensions' }
FAMIXAttribute >> accept: aVisitor [

	aVisitor visitAttribute: self
]

{ #category : #'*Famix-Extensions' }
FAMIXAttribute >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self hasClassScope: anEntity hasClassScope
]

{ #category : #'*Famix-Extensions' }
FAMIXAttribute >> hierarchyNestingLevel [
	<MSEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<MSEComment: 'Attribute hierarchy nesting level'>
		
	^self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs: [self belongsTo hierarchyNestingLevel]
]

{ #category : #'*Famix-Extensions' }
FAMIXAttribute >> hierarchyNestingLevel: aNumber [

	self privateState propertyAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXAttribute >> numberOfAccesses [
	<MSEProperty: #numberOfAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses of an attribute.'>

	^self
		lookUpPropertyNamed: #numberOfAccesses
		computedAs: [self incomingAccesses size]
]

{ #category : #'*Famix-Extensions' }
FAMIXAttribute >> numberOfAccessingClasses [
	<MSEProperty: #numberOfAccessingClasses type: #Number>
	<derived>
	<MSEComment: 'The number of classes from which at least one method accesses an attribute.'>

	^self
		lookUpPropertyNamed: #numberOfAccessingClasses
		computedAs: [self accessingClasses size]
]

{ #category : #'*Famix-Extensions' }
FAMIXAttribute >> numberOfAccessingMethods [
	<MSEProperty: #numberOfAccessingMethods type: #Number>
	<derived>
	<MSEComment: 'The number of methods accessing an attribute.'>				
	
	^self
		lookUpPropertyNamed: #numberOfAccessingMethods
		computedAs: [self accessingMethods size]
]

{ #category : #'*Famix-Extensions' }
FAMIXAttribute >> numberOfGlobalAccesses [
	<MSEProperty: #numberOfGlobalAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses to an attribute from outside the class defining the attribute.'>	

	^self
		lookUpPropertyNamed: #numberOfGlobalAccesses
		computedAs: [self globalAccesses size]
]

{ #category : #'*Famix-Extensions' }
FAMIXAttribute >> numberOfLocalAccesses [
	<MSEProperty: #numberOfLocalAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses to an attribute from inside the class defining the attribute.'>
		
	^self
		lookUpPropertyNamed: #numberOfLocalAccesses
		computedAs: [self localAccesses size]
]
