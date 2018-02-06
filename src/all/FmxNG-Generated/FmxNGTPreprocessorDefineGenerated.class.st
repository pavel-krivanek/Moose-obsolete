"
Represent a preprocessor #define statement

Knows the name of the macro defined
"
Class {
	#name : #FmxNGTPreprocessorDefineGenerated,
	#superclass : #FmxTraitEntity,
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTPreprocessorDefineGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TPreprocessorDefine super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]
