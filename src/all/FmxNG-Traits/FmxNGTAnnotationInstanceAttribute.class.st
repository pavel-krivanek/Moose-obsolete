"
This models the actual value of an attribute in an AnnotationInstance.

In the following AnnotationInstance of Java, timeout is an annotation instance attribute :
@Test(timeout = 500)

Instance Variables:
	parentAnnotationInstance	<FAMIXAnnotationInstance>
	annotationTypeAttribute	<FAMIXAnnotationTypeAttribute>
	value	<Object>
"
Class {
	#name : #FmxNGTAnnotationInstanceAttribute,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentAnnotationInstance => FMOne type: #FmxNGTWithAnnotationInstanceAttributes opposite: #attributes',
		'#value'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAnnotationInstanceAttribute class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TAnnotationInstanceAttribute super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTAnnotationInstanceAttribute >> parentAnnotationInstance [

	<generated>
	<MSEComment: 'The instance of the annotation in which the attribute is used.'>
	<container>

	^ parentAnnotationInstance
]

{ #category : #accessing }
FmxNGTAnnotationInstanceAttribute >> parentAnnotationInstance: anObject [

	<generated>
	parentAnnotationInstance := anObject

]

{ #category : #accessing }
FmxNGTAnnotationInstanceAttribute >> value [

	<MSEProperty: #value type: #String>
	<generated>
	<MSEComment: 'Actual value of the attribute used in an annotation'>
	^ value
]

{ #category : #accessing }
FmxNGTAnnotationInstanceAttribute >> value: anObject [

	<generated>
	value := anObject

]
