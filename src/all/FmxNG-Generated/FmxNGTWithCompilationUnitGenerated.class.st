Class {
	#name : #FmxNGTWithCompilationUnitGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#compilationUnit => FMOne type: #FmxNGTCompilationUnit opposite: #compilationUnitOwner'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithCompilationUnitGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithCompilationUnitGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithCompilationUnitGenerated >> compilationUnit [

	^ compilationUnit
]

{ #category : #accessing }
FmxNGTWithCompilationUnitGenerated >> compilationUnit: anObject [

	compilationUnit := anObject

]
