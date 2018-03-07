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
	#name : #FmxNGTAnnotationInstanceAttributeGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#value',
		'#parentAnnotationInstance => FMOne type: #FmxNGTWithAnnotationInstanceAttributes opposite: #attributes'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTAnnotationInstanceAttributeGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAnnotationInstanceAttributeGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTAnnotationInstanceAttributeGenerated >> parentAnnotationInstance [

	<MSEComment: 'The instance of the annotation in which the attribute is used.'>
	<container>

	^ parentAnnotationInstance
]

{ #category : #accessing }
FmxNGTAnnotationInstanceAttributeGenerated >> parentAnnotationInstance: anObject [

	parentAnnotationInstance := anObject

]

{ #category : #accessing }
FmxNGTAnnotationInstanceAttributeGenerated >> value [

	<MSEProperty: #value type: #String>
	<MSEComment: 'Actual value of the attribute used in an annotation'>
	^ value
]

{ #category : #accessing }
FmxNGTAnnotationInstanceAttributeGenerated >> value: anObject [

	value := anObject

]
