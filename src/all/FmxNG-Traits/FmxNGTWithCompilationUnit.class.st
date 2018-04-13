Class {
	#name : #FmxNGTWithCompilationUnit,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#compilationUnit => FMOne type: #FmxNGTCompilationUnit opposite: #compilationUnitOwner'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithCompilationUnit class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithCompilationUnit super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithCompilationUnit >> compilationUnit [

	<generated>
	^ compilationUnit
]

{ #category : #accessing }
FmxNGTWithCompilationUnit >> compilationUnit: anObject [

	<generated>
	compilationUnit := anObject

]
