Class {
	#name : #FmxCTCFileGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#module => FMOne type: #FmxCTModule opposite: #cFile'
	],
	#category : #'FmxC-Traits'
}

{ #category : #meta }
FmxCTCFileGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TCFile super: #FmxTraitEntity>
	<package: #FmxC>
	^self
]

{ #category : #accessing }
FmxCTCFileGenerated >> module [

	<container>

	^ module
]

{ #category : #accessing }
FmxCTCFileGenerated >> module: anObject [

	module := anObject

]
