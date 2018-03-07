Class {
	#name : #FmxNGTFile,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#name',
		'#entities => FMOne type: #FmxNGTWithFiles opposite: #containerFiles'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTFile class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TFile super: #FmxNGTFileGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
