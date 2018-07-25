Class {
	#name : #FmxNGStInheritance,
	#superclass : #FmxNGStAssociation,
	#traits : 'FmxNGTInheritanceGlue + FmxNGTSubInheritance + FmxNGTSuperInheritance',
	#classTraits : 'FmxNGTInheritanceGlue classTrait + FmxNGTSubInheritance classTrait + FmxNGTSuperInheritance classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStInheritance class >> annotation [

	<MSEClass: #Inheritance super: #FmxNGStAssociation>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStInheritance class >> generatedSlotNames [
	<generated>
	'FmxNGStInheritance class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStInheritance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTInheritanceGlue FmxNGTSubInheritance FmxNGTSuperInheritance)
]

{ #category : #meta }
FmxNGStInheritance class >> requirements [

	<generated>
	^ {  }
]
