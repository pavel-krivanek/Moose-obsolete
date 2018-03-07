Class {
	#name : #FmxNGTDeclaredException,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithDeclaredExceptions opposite: #declaredExceptions'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTDeclaredException class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TDeclaredException super: #FmxNGTDeclaredExceptionGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
