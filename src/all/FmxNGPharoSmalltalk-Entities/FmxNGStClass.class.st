Class {
	#name : #FmxNGStClass,
	#superclass : #FmxNGStType,
	#traits : 'FmxNGTClass + FmxNGTWithExceptions',
	#classTraits : 'FmxNGTClass classTrait + FmxNGTWithExceptions classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStClass class >> annotation [

	<generated>
	<MSEClass: #Class super: #FmxNGStType>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStClass class >> generatedSlotNames [
	<generated>
	'FmxNGStClass class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStClass class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTClass FmxNGTWithExceptions)
]

{ #category : #meta }
FmxNGStClass class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Implementation' }
FmxNGStClass >> isInterface [

	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGStClass >> mooseNameOn: aStream [ 
	| parent |
	parent := self typeContainer.
	parent ifNotNil: 
		[ 
			parent mooseNameOn: aStream.
			aStream
				nextPut: $:;
				nextPut: $: ].
	self name ifNotNil: [aStream nextPutAll: self name]
]

{ #category : #'Famix-Implementation' }
FmxNGStClass >> smalltalkClass [ 
	"Returns the associated smalltalk class if it exist in the system."
	
	^ FAMIXNameResolver smalltalkClassFromFamixClassName: 
			self name  ifAbsent: [nil] 
]
