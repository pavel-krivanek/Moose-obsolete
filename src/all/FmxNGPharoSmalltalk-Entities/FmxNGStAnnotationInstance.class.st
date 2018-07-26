Class {
	#name : #FmxNGStAnnotationInstance,
	#superclass : #FmxNGStSourcedEntity,
	#traits : 'FmxNGTAnnotationInstance + FmxNGTTypedAnnotationInstance + FmxNGTWithAnnotationInstanceAttributes + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FmxNGTAnnotationInstance classTrait + FmxNGTTypedAnnotationInstance classTrait + FmxNGTWithAnnotationInstanceAttributes classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStAnnotationInstance class >> annotation [

	<MSEClass: #AnnotationInstance super: #FmxNGStSourcedEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStAnnotationInstance class >> generatedSlotNames [
	<generated>
	'FmxNGStAnnotationInstance class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStAnnotationInstance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationInstance FmxNGTTypedAnnotationInstance FmxNGTWithAnnotationInstanceAttributes TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FmxNGStAnnotationInstance class >> requirements [

	<generated>
	^ { FmxNGStAnnotationInstance. FmxNGStNamedEntity }
]

{ #category : #'as yet unclassified' }
FmxNGStAnnotationInstance class >> resetMooseQueryCaches [
	super resetMooseQueryCaches.
	self resetTEntityMetaLevelDependencyCaches.

]

{ #category : #accessing }
FmxNGStAnnotationInstance >> name [
	^ String
		streamContents: [ :stream | 
			stream << '@'
				<< (self annotationType ifNil: [ super name ] ifNotNil: [ :type | type name ])
				<< ' on ' << (self annotatedEntity ifNotNil: #name ifNil: [ 'undefined' ]) ]
]
