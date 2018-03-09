Class {
	#name : #FmxNGAnnotationTypeAttribute,
	#superclass : #FmxNGAnnotationTypeAttributeGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAnnotationTypeAttribute class >> annotation [

	<MSEClass: #AnnotationTypeAttribute super: #FmxNGAnnotationTypeAttributeGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #accessing }
FmxNGAnnotationTypeAttribute >> parentAnnotationType [
	<MSEProperty: #parentAnnotationType type: #FAMIXAnnotationType> <derived> 
	<MSEComment: 'This is an alias pointing to the AnnotationType that defines this attribute'>

	^ self parentType
]

{ #category : #accessing }
FmxNGAnnotationTypeAttribute >> parentAnnotationType: anAnnotationType [
	self parentType: anAnnotationType
]
