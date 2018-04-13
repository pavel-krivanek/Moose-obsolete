Class {
	#name : #FmxNGTWithAnnotationInstances,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotationInstances => FMMany type: #FmxNGTAnnotationInstance opposite: #annotatedEntity'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithAnnotationInstances class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithAnnotationInstances super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithAnnotationInstances >> annotationInstances [

	<generated>
	<MSEComment: 'This property corresponds to the set of annotations associated to the entity'>
	^ annotationInstances
]

{ #category : #accessing }
FmxNGTWithAnnotationInstances >> annotationInstances: anObject [

	<generated>
	annotationInstances value: anObject

]
