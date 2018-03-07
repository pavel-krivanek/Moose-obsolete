"
It represents a file in the file system.
"
Class {
	#name : #FmxNGTFileGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#name',
		'#entities => FMOne type: #FmxNGTWithFiles opposite: #containerFiles'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTFileGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TFileGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTFileGenerated >> entities [

	<MSEComment: 'List of entities defined in the file'>
	^ entities
]

{ #category : #accessing }
FmxNGTFileGenerated >> entities: anObject [

	entities := anObject

]

{ #category : #accessing }
FmxNGTFileGenerated >> name [

	<MSEProperty: #name type: #String>
	<MSEComment: 'Basic name of the entity, not full reference.'>
	^ name
]

{ #category : #accessing }
FmxNGTFileGenerated >> name: anObject [

	name := anObject

]
