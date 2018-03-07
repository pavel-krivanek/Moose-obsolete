"
Represent a preprocessor #ifdef/#ifndef statement

Knows the name of the macro tested and whether it is ""negated"" (#ifndef) or not (#ifdef)
"
Class {
	#name : #FmxNGTPreprocessorIfdefGenerated,
	#superclass : #FmxTraitEntity,
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTPreprocessorIfdefGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TPreprocessorIfdefGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]
