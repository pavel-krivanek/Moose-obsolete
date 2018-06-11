Trait {
	#name : #FmxNGTWithModifiers,
	#instVars : [
		'modifiers'
	],
	#category : #'FmxNG-Traits-Modifiers'
}

{ #category : #meta }
FmxNGTWithModifiers classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithModifiers super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithModifiers classSide >> generatedSlotNames [
	<generated>
	^ #(modifiers)
]

{ #category : #generator }
FmxNGTWithModifiers classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #'Famix-Implementation' }
FmxNGTWithModifiers >> addModifier: aString [
	self modifiers add: aString
]

{ #category : #'Famix-Extensions' }
FmxNGTWithModifiers >> isAbstract [
	<MSEProperty: #isAbstract type: #Boolean> <derived>
	<MSEComment: 'Flag true for abstract entities. Language dependent.'>
	
	^ self modifiers includes: #abstract
]

{ #category : #'Famix-Extensions' }
FmxNGTWithModifiers >> isAbstract: aBoolean [
	^ self modifierSet: aBoolean for: #abstract
]

{ #category : #'Famix-Extensions' }
FmxNGTWithModifiers >> isFinal [
	<MSEProperty: #isFinal type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities defined as being final. Language dependent.'>	

	^ self modifiers includes: #final
]

{ #category : #'Famix-Extensions' }
FmxNGTWithModifiers >> isFinal: aBoolean [
	^ self modifierSet: aBoolean for: #final
]

{ #category : #'Famix-Extensions' }
FmxNGTWithModifiers >> isPackage [
	<MSEProperty: #isPackage type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities that have a package visibility. Language dependent.'>
	
	^ self modifiers includes: #package
]

{ #category : #'Famix-Extensions' }
FmxNGTWithModifiers >> isPackage: aBoolean [
	^ self modifierSet: aBoolean for: #package
]

{ #category : #'Famix-Extensions' }
FmxNGTWithModifiers >> isPrivate [
	<MSEProperty: #isPrivate type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities invisible out of their owner scope. Language dependent.'>
	
	^ self modifiers includes: #private
]

{ #category : #'Famix-Extensions' }
FmxNGTWithModifiers >> isPrivate: aBoolean [
	^ self modifierSet: aBoolean for: #private
]

{ #category : #'Famix-Extensions' }
FmxNGTWithModifiers >> isProtected [
	<MSEProperty: #isProtected type: #Boolean> <derived>
	<MSEComment: 'Flag true for protected entities, depending on language semantics.'>
	
	^ self modifiers includes: #protected
]

{ #category : #'Famix-Extensions' }
FmxNGTWithModifiers >> isProtected: aBoolean [
	^ self modifierSet: aBoolean for: #protected
]

{ #category : #'Famix-Extensions' }
FmxNGTWithModifiers >> isPublic [
	<MSEProperty: #isPublic type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities accessible from anywhere. Language dependent.'>	

	^ self modifiers includes: #public
]

{ #category : #'Famix-Extensions' }
FmxNGTWithModifiers >> isPublic: aBoolean [
	^ self modifierSet: aBoolean for: #public
]

{ #category : #'Famix-Implementation' }
FmxNGTWithModifiers >> modifierSet: aBoolean for: aSymbol [
	^ aBoolean ifTrue: [self addModifier: aSymbol] ifFalse: [self removeModifier: aSymbol]
]

{ #category : #accessing }
FmxNGTWithModifiers >> modifiers [

	<MSEProperty: #modifiers type: #String>
	<generated>
	<multivalued>
	<MSEComment: 'Generic container for language dependent modifiers.'>
	^ modifiers ifNil: [ modifiers := Set new ]
]

{ #category : #accessing }
FmxNGTWithModifiers >> modifiers: anObject [

	<generated>
	modifiers := anObject

]

{ #category : #'Famix-Implementation' }
FmxNGTWithModifiers >> removeModifier: aString [
	self modifiers remove: aString ifAbsent: []
]
