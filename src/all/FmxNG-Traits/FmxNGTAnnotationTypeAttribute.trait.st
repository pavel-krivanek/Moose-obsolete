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
Trait {
	#name : #FmxNGTAnnotationTypeAttribute,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTAnnotationTypeAttribute classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TAnnotationTypeAttribute super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTAnnotationTypeAttribute classSide >> generatedSlotNames [
	<generated>
	^ #(annotationAttributeInstances)
]

{ #category : #generator }
FmxNGTAnnotationTypeAttribute classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTAnnotationTypeAttribute >> annotationAttributeInstances [

	<generated>
	<MSEComment: 'A collection of AnnotationInstanceAttribute which hold the usages of this attribute in actual AnnotationInstances'>
	^ annotationAttributeInstances
]

{ #category : #accessing }
FmxNGTAnnotationTypeAttribute >> annotationAttributeInstances: anObject [

	<generated>
	annotationAttributeInstances value: anObject

]
