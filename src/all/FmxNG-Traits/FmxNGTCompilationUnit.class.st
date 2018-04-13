"
I represent a compilation unit file. Typically a .c or .cpp file
"
Class {
	#name : #FmxNGTCompilationUnit,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#compilationUnitOwner => FMOne type: #FmxNGTWithCompilationUnit opposite: #compilationUnit'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTCompilationUnit class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TCompilationUnit super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTCompilationUnit >> compilationUnitOwner [

	<generated>
	^ compilationUnitOwner
]

{ #category : #accessing }
FmxNGTCompilationUnit >> compilationUnitOwner: anObject [

	<generated>
	compilationUnitOwner := anObject

]
