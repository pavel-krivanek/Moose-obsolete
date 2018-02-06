"
AnnotationInstance is an instance of an AnnotationType. It links an AnnotationType to an actual entity.

For example, the following is an annotation instance in Smalltalk.
<primitive: 'primAnyBitFromTo' module:'LargeIntegers'>.

And the following is an AnnotationInstance in Java:
@Test(timeout = 500)

Instance Variables:
	annotatedEntity	<FAMIXEntity>
	annotationType		<FAMIXAnnotationType>
"
Class {
	#name : #FmxNGTAnnotationInstanceGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotatedEntity => FMOne type: #FmxNGTWithAnnotationInstances opposite: #annotationInstances'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTAnnotationInstanceGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAnnotationInstance super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTAnnotationInstanceGenerated >> annotatedEntity [

	<MSEComment: 'The NamedEntity on which the annotation occurs.'>
	<container>

	^ annotatedEntity
]

{ #category : #accessing }
FmxNGTAnnotationInstanceGenerated >> annotatedEntity: anObject [

	annotatedEntity := anObject

]
