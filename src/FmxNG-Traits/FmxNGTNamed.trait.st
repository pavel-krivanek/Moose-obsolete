Trait {
	#name : #FmxNGTNamed,
	#instVars : [
		'name'
	],
	#category : #'FmxNG-Traits-Named'
}

{ #category : #meta }
FmxNGTNamed classSide >> annotation [

	<MSEClass: #TNamed super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTNamed classSide >> generatedSlotNames [
	<generated>
	'FmxNGTNamed class>>#generatedSlotNames'.
	^ #(name)
]

{ #category : #generator }
FmxNGTNamed classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #'instance creation' }
FmxNGTNamed classSide >> named: aString [
	^ self new
		name: aString;
		yourself
]

{ #category : #testing }
FmxNGTNamed >> hasUniqueMooseNameInModel [
	" all subclasses should call the method: 'resetMooseName' if a change causes the moosename to change "
	^true
]

{ #category : #printing }
FmxNGTNamed >> mooseNameOn: stream [
	self name ifNotNil: [ :n | stream nextPutAll: n ]
]

{ #category : #accessing }
FmxNGTNamed >> name [

	<MSEProperty: #name type: #String>
	<generated>
	<MSEComment: 'Basic name of the entity, not full reference.'>
	^ name
]

{ #category : #accessing }
FmxNGTNamed >> name: anObject [

	name := anObject.
	self resetMooseName

]

{ #category : #'Famix-Extensions' }
FmxNGTNamed >> nameLength [
	<MSEProperty: #nameLength type: #Number>
	<derived>
	<MSEComment: 'The number of characters in the name'>
	
	^self
		lookUpPropertyNamed: #nameLength
		computedAs: [self name size]
]

{ #category : #'Famix-Extensions' }
FmxNGTNamed >> nameLength: aNumber [
	
	self privateState propertyAt: #nameLength put: aNumber
]

{ #category : #accessing }
FmxNGTNamed >> resetMooseName [

	super resetMooseName.
	self children do: [ :entity | entity resetMooseName ]
]
