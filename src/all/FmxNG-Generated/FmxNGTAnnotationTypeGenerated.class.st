"
FAMIXAnnotationType represents the type of an annotation. In some languages, Java and C#, an annotation as an explicit type. An AnnotationType can have a container in which it resides.

Instance Variables:
	instances	<(FMMultivalueLink of: FAMIXAnnotationInstance)>
	container	<FAMIXContainerEntity>
"
Class {
	#name : #FmxNGTAnnotationTypeGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#instances => FMMany type: #FmxNGTTypedAnnotationInstance opposite: #annotationType',
		'#annotationTypesContainer => FMOne type: #FmxNGTWithAnnotationTypes opposite: #definedAnnotationTypes'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTAnnotationTypeGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAnnotationTypeGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTAnnotationTypeGenerated >> annotationTypesContainer [

	^ annotationTypesContainer
]

{ #category : #accessing }
FmxNGTAnnotationTypeGenerated >> annotationTypesContainer: anObject [

	annotationTypesContainer := anObject

]

{ #category : #accessing }
FmxNGTAnnotationTypeGenerated >> instances [

	<MSEComment: 'Annotations of this type'>
	^ instances
]

{ #category : #accessing }
FmxNGTAnnotationTypeGenerated >> instances: anObject [

	instances value: anObject

]
