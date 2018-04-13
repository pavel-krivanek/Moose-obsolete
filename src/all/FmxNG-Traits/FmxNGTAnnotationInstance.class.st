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
	#name : #FmxNGTAnnotationInstance,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotatedEntity => FMOne type: #FmxNGTWithAnnotationInstances opposite: #annotationInstances'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAnnotationInstance class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TAnnotationInstance super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTAnnotationInstance >> annotatedEntity [

	<generated>
	<MSEComment: 'The NamedEntity on which the annotation occurs.'>
	<container>

	^ annotatedEntity
]

{ #category : #accessing }
FmxNGTAnnotationInstance >> annotatedEntity: anObject [

	<generated>
	annotatedEntity := anObject

]
