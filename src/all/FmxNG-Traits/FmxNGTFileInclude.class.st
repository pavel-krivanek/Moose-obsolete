Class {
	#name : #FmxNGTFileInclude,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#source => FMOne type: #FmxNGTWithFileInclude opposite: #outgoingIncludeRelations',
		'#target => FMOne type: #FmxNGTWithFileInclude opposite: #incomingIncludeRelations'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTFileInclude class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TFileInclude super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTFileInclude >> source [

	<generated>
	^ source
]

{ #category : #accessing }
FmxNGTFileInclude >> source: anObject [

	<generated>
	source := anObject

]

{ #category : #accessing }
FmxNGTFileInclude >> target [

	<generated>
	^ target
]

{ #category : #accessing }
FmxNGTFileInclude >> target: anObject [

	<generated>
	target := anObject

]
