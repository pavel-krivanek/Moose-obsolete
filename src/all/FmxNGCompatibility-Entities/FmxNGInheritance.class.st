Class {
	#name : #FmxNGInheritance,
	#superclass : #FmxNGAssociation,
	#traits : 'FmxNGTSubInheritance + FmxNGTSuperInheritance',
	#classTraits : 'FmxNGTSubInheritance classTrait + FmxNGTSuperInheritance classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGInheritance class >> annotation [

	<generated>
	<MSEClass: #Inheritance super: #FmxNGAssociation>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGInheritance class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGInheritance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSubInheritance FmxNGTSuperInheritance)
]

{ #category : #meta }
FmxNGInheritance class >> requirements [

	<generated>
	^ {  }
]
