"
It represents a file in the file system.
"
Class {
	#name : #FmxNGTFile,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#entities => FMOne type: #FmxNGTWithFiles opposite: #containerFiles',
		'#name'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTFile class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TFile super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTFile >> entities [

	<generated>
	<MSEComment: 'List of entities defined in the file'>
	^ entities
]

{ #category : #accessing }
FmxNGTFile >> entities: anObject [

	<generated>
	entities := anObject

]

{ #category : #accessing }
FmxNGTFile >> name [

	<MSEProperty: #name type: #String>
	<generated>
	<MSEComment: 'Basic name of the entity, not full reference.'>
	^ name
]

{ #category : #accessing }
FmxNGTFile >> name: anObject [

	<generated>
	name := anObject

]
