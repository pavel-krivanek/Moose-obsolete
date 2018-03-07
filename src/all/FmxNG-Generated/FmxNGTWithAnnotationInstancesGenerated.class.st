Class {
	#name : #FmxNGTWithAnnotationInstancesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotationInstances => FMMany type: #FmxNGTAnnotationInstance opposite: #annotatedEntity'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithAnnotationInstancesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithAnnotationInstancesGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithAnnotationInstancesGenerated >> annotationInstances [

	<MSEComment: 'This property corresponds to the set of annotations associated to the entity'>
	^ annotationInstances
]

{ #category : #accessing }
FmxNGTWithAnnotationInstancesGenerated >> annotationInstances: anObject [

	annotationInstances value: anObject

]
