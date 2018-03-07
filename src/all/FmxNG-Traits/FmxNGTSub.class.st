Class {
	#name : #FmxNGTSub,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#supers => FMOne type: #FmxNGTSuper opposite: #subs'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTSub class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TSub super: #FmxNGTSubGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
