"
FAMIXFunction represents a behavioural entity in a procedural language.
"
Class {
	#name : #FmxNGTFunction,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#functionOwner => FMOne type: #FmxNGTWithFunctions opposite: #functions'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTFunction class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TFunction super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTFunction >> functionOwner [

	<generated>
	<MSEComment: 'The container defining the function. The function is placed in a container, because certain languages can nest functions in functions.'>
	<container>

	^ functionOwner
]

{ #category : #accessing }
FmxNGTFunction >> functionOwner: anObject [

	<generated>
	functionOwner := anObject

]
