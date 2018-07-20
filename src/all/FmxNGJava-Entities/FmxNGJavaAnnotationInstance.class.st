Class {
	#name : #FmxNGJavaAnnotationInstance,
	#superclass : #FmxNGJavaSourcedEntity,
	#traits : 'FmxNGTAnnotationInstance + FmxNGTTypedAnnotationInstance + FmxNGTWithAnnotationInstanceAttributes',
	#classTraits : 'FmxNGTAnnotationInstance classTrait + FmxNGTTypedAnnotationInstance classTrait + FmxNGTWithAnnotationInstanceAttributes classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaAnnotationInstance class >> annotation [

	<generated>
	<MSEClass: #AnnotationInstance super: #FmxNGJavaSourcedEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaAnnotationInstance class >> generatedSlotNames [
	<generated>
	'FmxNGJavaAnnotationInstance class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaAnnotationInstance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationInstance FmxNGTTypedAnnotationInstance FmxNGTWithAnnotationInstanceAttributes)
]

{ #category : #meta }
FmxNGJavaAnnotationInstance class >> requirements [

	<generated>
	^ { FmxNGJavaAnnotationInstance. FmxNGJavaNamedEntity }
]

{ #category : #'as yet unclassified' }
FmxNGJavaAnnotationInstance >> belongsTo [
	^ self annotatedEntity
]

{ #category : #'as yet unclassified' }
FmxNGJavaAnnotationInstance >> mooseNameOn: aStream [
	self annotationType notNil ifTrue: [
		self annotationType mooseNameOn: aStream ].
	aStream nextPut: $(.
	self attributes 
			do: [:each | aStream nextPutAll: each value asString ]
			separatedBy: [aStream nextPut: $,].  
	aStream nextPut: $).
	aStream nextPut: $-.
	self annotatedEntity notNil ifTrue: [
		self annotatedEntity mooseNameOn: aStream ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaAnnotationInstance >> name [
	^ String
		streamContents: [ :stream | 
			stream << '@'
				<< (self annotationType ifNil: [ super name ] ifNotNil: [ :type | type name ])
				<< ' on ' << (self annotatedEntity ifNotNil: #name ifNil: [ 'undefined' ]) ]
]
