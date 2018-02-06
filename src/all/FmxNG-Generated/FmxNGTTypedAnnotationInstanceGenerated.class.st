Class {
	#name : #FmxNGTTypedAnnotationInstanceGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotationType => FMOne type: #FmxNGTAnnotationType opposite: #instances'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTTypedAnnotationInstanceGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTypedAnnotationInstance super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTTypedAnnotationInstanceGenerated >> annotationType [

	<MSEComment: 'Refers to the type of an annotation. (In some languages, Java and C#, an annotation as an explicit type). '>
	<container>

	^ annotationType
]

{ #category : #accessing }
FmxNGTTypedAnnotationInstanceGenerated >> annotationType: anObject [

	annotationType := anObject

]
