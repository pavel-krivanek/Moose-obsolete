Class {
	#name : #FmxNGAnnotationInstance,
	#superclass : #FmxNGAnnotationInstanceGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAnnotationInstance class >> annotation [

	<MSEClass: #AnnotationInstance super: #FmxNGAnnotationInstanceGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #accessing }
FmxNGAnnotationInstance >> belongsTo [
	^ self annotatedEntity
]

{ #category : #MooseFinder }
FmxNGAnnotationInstance >> mooseIcon [ 
	^ MooseIcons famixAnnotationInstance
]

{ #category : #accessing }
FmxNGAnnotationInstance >> mooseNameOn: aStream [
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

{ #category : #accessing }
FmxNGAnnotationInstance >> name [
	^ String
		streamContents: [ :stream | 
			stream << '@'
				<< (self annotationType ifNil: [ super name ] ifNotNil: [ :type | type name ])
				<< ' on ' << (self annotatedEntity ifNotNil: #name ifNil: [ 'undefined' ]) ]
]
