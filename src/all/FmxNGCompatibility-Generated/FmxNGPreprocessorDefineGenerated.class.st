Class {
	#name : #FmxNGPreprocessorDefineGenerated,
	#superclass : #FmxNGPreprocessorStatement,
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGPreprocessorDefineGenerated class >> annotation [

	<MSEClass: #PreprocessorDefineGenerated super: #FmxNGPreprocessorStatement>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGPreprocessorDefineGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGPreprocessorDefineGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTPreprocessorIfdef}
]
