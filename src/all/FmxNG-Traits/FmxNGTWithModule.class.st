Class {
	#name : #FmxNGTWithModule,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#module => FMOne type: #FmxNGTModule opposite: #moduleFiles'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithModule class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithModule super: #FmxNGTWithModuleGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
