Class {
	#name : #FmxNGTWithModifiers,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'modifiers'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithModifiers class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithModifiers super: #FmxNGTWithModifiersGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #adding }
FmxNGTWithModifiers >> addModifier: aString [

	<MSEProperty: #modifiers type: #String> "Really?"
	<MSEComment: 'Generic container for language dependent modifiers.'>
	^ modifiers ifNil: [ modifiers := Set new ]
]

{ #category : #adding }
FmxNGTWithModifiers >> isAbstract [
	<MSEProperty: #isAbstract type: #Boolean> <derived>
	<MSEComment: 'Flag true for abstract entities. Language dependent.'>
	
	^ self modifiers includes: #abstract
]

{ #category : #adding }
FmxNGTWithModifiers >> isFinal [
	<MSEProperty: #isFinal type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities defined as being final. Language dependent.'>	

	^ self modifiers includes: #final
]

{ #category : #adding }
FmxNGTWithModifiers >> isPackage [
	<MSEProperty: #isPackage type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities that have a package visibility. Language dependent.'>
	
	^ self modifiers includes: #package
]

{ #category : #adding }
FmxNGTWithModifiers >> isPrivate [
	<MSEProperty: #isPrivate type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities invisible out of their owner scope. Language dependent.'>
	
	^ self modifiers includes: #private
]

{ #category : #adding }
FmxNGTWithModifiers >> isProtected [
	<MSEProperty: #isProtected type: #Boolean> <derived>
	<MSEComment: 'Flag true for protected entities, depending on language semantics.'>
	
	^ self modifiers includes: #protected
]

{ #category : #adding }
FmxNGTWithModifiers >> isPublic [
	<MSEProperty: #isPublic type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities accessible from anywhere. Language dependent.'>	

	^ self modifiers includes: #public
]

{ #category : #adding }
FmxNGTWithModifiers >> removeModifier: aString [
	self modifiers remove: aString ifAbsent: []
]
