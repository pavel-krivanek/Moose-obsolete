Class {
	#name : #FmxNGStEntity,
	#superclass : #MooseEntity,
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStEntity class >> annotation [

	<MSEClass: #Entity super: #MooseEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStEntity class >> generatedSlotNames [
	<generated>
	'FmxNGStEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStEntity class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGStEntity class >> metamodel [

	<generated>
	^ (self class environment at: #FmxNGPharoSmalltalkGenerator) metamodel
]

{ #category : #meta }
FmxNGStEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGStEntity class >> resetMooseQueryCaches [
	"Here do nothing. Customize in subclasses."
]

{ #category : #testing }
FmxNGStEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGStEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGStEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGStEntity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGStEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGStEntity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGStEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGStEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGStEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGStEntity >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGStEntity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGStEntity >> isType [

	<generated>
	^ false
]
