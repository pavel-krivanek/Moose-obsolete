"
Represent a preprocessor #ifdef/#ifndef statement

Knows the name of the macro tested and whether it is ""negated"" (#ifndef) or not (#ifdef)
"
Class {
	#name : #FmxNGTPreprocessorIfdef,
	#superclass : #FmxTraitEntity,
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTPreprocessorIfdef class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TPreprocessorIfdef super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]
