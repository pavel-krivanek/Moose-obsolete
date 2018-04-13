Class {
	#name : #FmxNGTTypedAnnotationInstance,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotationType => FMOne type: #FmxNGTAnnotationType opposite: #instances'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTTypedAnnotationInstance class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTypedAnnotationInstance super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTTypedAnnotationInstance >> annotationType [

	<generated>
	<MSEComment: 'Refers to the type of an annotation. (In some languages, Java and C#, an annotation as an explicit type). '>
	<container>

	^ annotationType
]

{ #category : #accessing }
FmxNGTTypedAnnotationInstance >> annotationType: anObject [

	<generated>
	annotationType := anObject

]
