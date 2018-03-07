Class {
	#name : #FmxNGTFileIncludeGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#target => FMOne type: #FmxNGTWithFileInclude opposite: #incomingIncludeRelations',
		'#source => FMOne type: #FmxNGTWithFileInclude opposite: #outgoingIncludeRelations'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTFileIncludeGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TFileIncludeGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTFileIncludeGenerated >> source [

	^ source
]

{ #category : #accessing }
FmxNGTFileIncludeGenerated >> source: anObject [

	source := anObject

]

{ #category : #accessing }
FmxNGTFileIncludeGenerated >> target [

	^ target
]

{ #category : #accessing }
FmxNGTFileIncludeGenerated >> target: anObject [

	target := anObject

]
