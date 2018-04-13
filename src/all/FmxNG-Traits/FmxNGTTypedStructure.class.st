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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTypedStructure super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTTypedStructure >> declaredType [

	<generated>
	^ declaredType
]

{ #category : #accessing }
FmxNGTTypedStructure >> declaredType: anObject [

	<generated>
	declaredType := anObject

]
