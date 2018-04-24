Class {
	#name : #FmxNGAnnotationInstance,
	#superclass : #FmxNGSourcedEntity,
	#traits : 'FmxNGTAnnotationInstance + FmxNGTTypedAnnotationInstance + FmxNGTWithAnnotationInstanceAttributes',
	#classTraits : 'FmxNGTAnnotationInstance classTrait + FmxNGTTypedAnnotationInstance classTrait + FmxNGTWithAnnotationInstanceAttributes classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAnnotationInstance class >> annotation [

	<generated>
	<MSEClass: #AnnotationInstance super: #FmxNGSourcedEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGAnnotationInstance class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGAnnotationInstance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationInstance FmxNGTTypedAnnotationInstance FmxNGTWithAnnotationInstanceAttributes)
]

{ #category : #meta }
FmxNGAnnotationInstance class >> requirements [

	<generated>
	^ {  }
]
