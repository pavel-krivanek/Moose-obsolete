"
FAMIXAnnotationType represents the type of an annotation. In some languages, Java and C#, an annotation as an explicit type. An AnnotationType can have a container in which it resides.

Instance Variables:
	instances	<(FMMultivalueLink of: FAMIXAnnotationInstance)>
	container	<FAMIXContainerEntity>
"
Class {
	#name : #FmxNGTAnnotationType,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotationTypesContainer => FMOne type: #FmxNGTWithAnnotationTypes opposite: #definedAnnotationTypes',
		'#instances => FMMany type: #FmxNGTTypedAnnotationInstance opposite: #annotationType'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAnnotationType class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TAnnotationType super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTAnnotationType >> annotationTypesContainer [

	<generated>
	<MSEComment: 'Container in which an AnnotationType may reside'>
	<container>

	^ annotationTypesContainer
]

{ #category : #accessing }
FmxNGTAnnotationType >> annotationTypesContainer: anObject [

	<generated>
	annotationTypesContainer := anObject

]

{ #category : #accessing }
FmxNGTAnnotationType >> instances [

	<generated>
	<MSEComment: 'Annotations of this type'>
	^ instances
]

{ #category : #accessing }
FmxNGTAnnotationType >> instances: anObject [

	<generated>
	instances value: anObject

]
