"
Represents some preprocessor statements of interest: #ifdef, #define, ...

Notable exception: #include which is represented as an Association
"
Class {
	#name : #FAMIXPreprocessorStatement,
	#superclass : #FAMIXSourcedEntity,
	#category : 'Famix-C'
}

{ #category : #'as yet unclassified' }
FAMIXPreprocessorStatement class >> annotation [
	<MSEClass: #PreprocessorStatement super: #FAMIXSourcedEntity>
	<package: #FAMIX>
	^self
]
