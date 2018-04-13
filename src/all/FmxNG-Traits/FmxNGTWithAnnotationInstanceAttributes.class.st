Class {
	#name : #FmxNGTWithAnnotationInstanceAttributes,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#attributes => FMMany type: #FmxNGTAnnotationInstanceAttribute opposite: #parentAnnotationInstance'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithAnnotationInstanceAttributes class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithAnnotationInstanceAttributes super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithAnnotationInstanceAttributes >> attributes [

	<generated>
	<MSEComment: 'This corresponds to the actual values of the attributes in an AnnotationInstance'>
	^ attributes
]

{ #category : #accessing }
FmxNGTWithAnnotationInstanceAttributes >> attributes: anObject [

	<generated>
	attributes value: anObject

]
