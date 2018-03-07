Class {
	#name : #FmxCHFileGenerated,
	#superclass : #FmxCFile,
	#instVars : [
		'#module => FMOne type: #FmxCModule opposite: #hFile'
	],
	#category : #'FmxC-Generated-Entities'
}

{ #category : #meta }
FmxCHFileGenerated class >> annotation [

	<MSEClass: #HFileGenerated super: #FmxCFile>
	<package: #'FmxC-Generated'>
	^self
]

{ #category : #meta }
FmxCHFileGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCHFileGenerated class >> statefulTraits [

	<statefulTraits>
	^ {}
]

{ #category : #accessing }
FmxCHFileGenerated >> module [

	<container>

	^ module
]

{ #category : #accessing }
FmxCHFileGenerated >> module: anObject [

	module := anObject

]
