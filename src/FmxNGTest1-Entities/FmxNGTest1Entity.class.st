Class {
	#name : #FmxNGTest1Entity,
	#superclass : #MooseEntity,
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1Entity class >> annotation [

	<MSEClass: #Entity super: #MooseEntity>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1Entity class >> generatedSlotNames [
	<generated>
	'FmxNGTest1Entity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1Entity class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGTest1Entity class >> metamodel [

	<generated>
	^ (self class environment at: #FmxNGTest1Generator) metamodel
]

{ #category : #meta }
FmxNGTest1Entity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FmxNGTest1Entity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest1Entity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest1Entity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest1Entity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest1Entity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest1Entity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest1Entity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest1Entity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest1Entity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest1Entity >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest1Entity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest1Entity >> isType [

	<generated>
	^ false
]
