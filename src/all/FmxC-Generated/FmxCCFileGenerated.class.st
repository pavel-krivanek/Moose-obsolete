Class {
	#name : #FmxCCFileGenerated,
	#superclass : #FmxCFile,
	#instVars : [
		'#module => FMOne type: #FmxCModule opposite: #cFile'
	],
	#category : #'FmxC-Generated-Entities'
}

{ #category : #meta }
FmxCCFileGenerated class >> annotation [

	<MSEClass: #CFileGenerated super: #FmxCFile>
	<package: #'FmxC-Generated'>
	^self
]

{ #category : #meta }
FmxCCFileGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCCFileGenerated class >> statefulTraits [

	<statefulTraits>
	^ {}
]

{ #category : #accessing }
FmxCCFileGenerated >> module [

	<container>

	^ module
]

{ #category : #accessing }
FmxCCFileGenerated >> module: anObject [

	module := anObject

]
