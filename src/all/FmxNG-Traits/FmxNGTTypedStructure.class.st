Class {
	#name : #FmxNGTTypedStructure,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#declaredType => FMOne type: #FmxNGTWithTypedStructures opposite: #structuresWithDeclaredType'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTTypedStructure class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTypedStructure super: #FmxNGTTypedStructureGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
