Class {
	#name : #FmxNGTNamed,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'isStub',
		'name'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTNamed class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TNamed super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTNamed >> isStub [

	<MSEProperty: #isStub type: #Boolean>
	<generated>
	<MSEComment: 'Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.'>
	^ isStub
]

{ #category : #accessing }
FmxNGTNamed >> isStub: anObject [

	<generated>
	isStub := anObject

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

	<generated>
	name := anObject

]
