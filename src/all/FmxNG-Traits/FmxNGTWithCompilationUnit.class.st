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

	<ignoreInTraitUsers>
	<MSEClass: #TWithCompilationUnit super: #FmxNGTWithCompilationUnitGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
