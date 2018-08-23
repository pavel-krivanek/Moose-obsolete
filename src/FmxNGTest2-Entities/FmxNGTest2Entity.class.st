Class {
	#name : #FmxNGTest2Entity,
	#superclass : #MooseEntity,
	#category : #'FmxNGTest2-Entities-Entities'
}

{ #category : #meta }
FmxNGTest2Entity class >> annotation [

	<MSEClass: #Entity super: #MooseEntity>
	<package: #'FmxNGTest2-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest2Entity class >> generatedSlotNames [
	<generated>
	'FmxNGTest2Entity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest2Entity class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGTest2Entity class >> metamodel [

	<generated>
	^ (self class environment at: #FmxNGTest2Generator) metamodel
]

{ #category : #meta }
FmxNGTest2Entity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FmxNGTest2Entity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest2Entity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest2Entity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest2Entity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest2Entity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest2Entity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest2Entity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest2Entity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest2Entity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest2Entity >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest2Entity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FmxNGTest2Entity >> isType [

	<generated>
	^ false
]
