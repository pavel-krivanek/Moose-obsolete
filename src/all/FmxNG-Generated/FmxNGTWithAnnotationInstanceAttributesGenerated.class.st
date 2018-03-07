Class {
	#name : #FmxNGTWithAnnotationInstanceAttributesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#attributes => FMMany type: #FmxNGTAnnotationInstanceAttribute opposite: #parentAnnotationInstance'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithAnnotationInstanceAttributesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithAnnotationInstanceAttributesGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithAnnotationInstanceAttributesGenerated >> attributes [

	<MSEComment: 'This corresponds to the actual values of the attributes in an AnnotationInstance'>
	^ attributes
]

{ #category : #accessing }
FmxNGTWithAnnotationInstanceAttributesGenerated >> attributes: anObject [

	attributes value: anObject

]
