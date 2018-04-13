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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithModule super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithModule >> module [

	<generated>
	^ module
]

{ #category : #accessing }
FmxNGTWithModule >> module: anObject [

	<generated>
	module := anObject

]
