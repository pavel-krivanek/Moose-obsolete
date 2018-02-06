Class {
	#name : #FmxNGTWithModuleGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#module => FMOne type: #FmxNGTModule opposite: #moduleFiles'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithModuleGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithModule super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithModuleGenerated >> module [

	^ module
]

{ #category : #accessing }
FmxNGTWithModuleGenerated >> module: anObject [

	module := anObject

]
