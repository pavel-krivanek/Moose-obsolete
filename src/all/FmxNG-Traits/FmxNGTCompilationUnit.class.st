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

	<ignoreInTraitUsers>
	<MSEClass: #TCompilationUnit super: #FmxNGTCompilationUnitGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
