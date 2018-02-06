Class {
	#name : #FmxNGTTypedStructureGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#declaredType => FMOne type: #FmxNGTWithTypedStructures opposite: #structuresWithDeclaredType'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTTypedStructureGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTypedStructure super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTTypedStructureGenerated >> declaredType [

	^ declaredType
]

{ #category : #accessing }
FmxNGTTypedStructureGenerated >> declaredType: anObject [

	declaredType := anObject

]
