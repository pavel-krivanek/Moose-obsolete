"
This models the attribute defined in a Java AnnotationType. In Java, annotation type attributes have specific syntax and use.

For example, in Java the following AnnotationType has four AnnotationTypeAttributes (id, synopsis, engineer and date are attributes).

public @interface MyAnno {
    int    id();
    String synopsis(); 
    String engineer() default ""[unassigned]""; 
    String date()    default ""[unimplemented]"";
}

When using an annotation, an annotation instance is created that points back to the annotation type. The annotation instance has attributes that are annontation instance attributes and point back to their annotation type attributes.

Instance Variables:
	parentAnnotationType	<FAMIXAnnotationType>
	annotationAttributeInstances	<(FMMultivalueLink of: FAMIXAnnotationInstanceAttribute)>
"
Class {
	#name : #FmxNGTAnnotationTypeAttributeGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotationAttributeInstances => FMMany type: #FmxNGTTypedAnnotationInstanceAttribute opposite: #annotationTypeAttribute'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTAnnotationTypeAttributeGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAnnotationTypeAttribute super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTAnnotationTypeAttributeGenerated >> annotationAttributeInstances [

	<MSEComment: 'A collection of AnnotationInstanceAttribute which hold the usages of this attribute in actual AnnotationInstances'>
	^ annotationAttributeInstances
]

{ #category : #accessing }
FmxNGTAnnotationTypeAttributeGenerated >> annotationAttributeInstances: anObject [

	annotationAttributeInstances value: anObject

]
