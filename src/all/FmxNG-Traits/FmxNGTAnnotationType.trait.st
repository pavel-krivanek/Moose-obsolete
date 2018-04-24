"
FAMIXAnnotationType represents the type of an annotation. In some languages, Java and C#, an annotation as an explicit type. An AnnotationType can have a container in which it resides.

Instance Variables:
	instances	<(FMMultivalueLink of: FAMIXAnnotationInstance)>
	container	<FAMIXContainerEntity>
"
Trait {
	#name : #FmxNGTAnnotationType,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTAnnotationType classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TAnnotationType super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTAnnotationType classSide >> generatedSlotNames [
	<generated>
	^ #(instances annotationTypesContainer)
]

{ #category : #generator }
FmxNGTAnnotationType classSide >> generatedTraitNames [
	<generated>
	^ #()
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
