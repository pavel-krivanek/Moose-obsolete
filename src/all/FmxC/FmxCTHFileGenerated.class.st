Class {
	#name : #FmxCTHFileGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#module => FMOne type: #FmxCTModule opposite: #hFile'
	],
	#category : #'FmxC-Traits'
}

{ #category : #meta }
FmxCTHFileGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #THFile super: #FmxTraitEntity>
	<package: #FmxC>
	^self
]

{ #category : #accessing }
FmxCTHFileGenerated >> module [

	<container>

	^ module
]

{ #category : #accessing }
FmxCTHFileGenerated >> module: anObject [

	module := anObject

]
