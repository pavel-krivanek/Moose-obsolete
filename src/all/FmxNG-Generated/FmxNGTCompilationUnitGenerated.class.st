"
I represent a compilation unit file. Typically a .c or .cpp file
"
Class {
	#name : #FmxNGTCompilationUnitGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#compilationUnitOwner => FMOne type: #FmxNGTWithCompilationUnit opposite: #compilationUnit'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTCompilationUnitGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TCompilationUnit super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTCompilationUnitGenerated >> compilationUnitOwner [

	^ compilationUnitOwner
]

{ #category : #accessing }
FmxNGTCompilationUnitGenerated >> compilationUnitOwner: anObject [

	compilationUnitOwner := anObject

]
