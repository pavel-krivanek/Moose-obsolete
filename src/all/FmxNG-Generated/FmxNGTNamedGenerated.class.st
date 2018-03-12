Class {
	#name : #FmxNGTNamedGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'isStub',
		'name'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTNamedGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TNamedGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTNamedGenerated >> isStub [

	<MSEProperty: #isStub type: #Boolean>
	<MSEComment: 'Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.'>
	^ isStub ifNil: [ true ]
]

{ #category : #accessing }
FmxNGTNamedGenerated >> isStub: anObject [

	isStub := anObject

]

{ #category : #accessing }
FmxNGTNamedGenerated >> name [

	<MSEProperty: #name type: #String>
	<MSEComment: 'Basic name of the entity, not full reference.'>
	^ name
]

{ #category : #accessing }
FmxNGTNamedGenerated >> name: anObject [

	name := anObject

]
