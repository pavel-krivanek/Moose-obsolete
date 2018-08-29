Class {
	#name : #FamixTest2Inheritance,
	#superclass : #FamixTest2Association,
	#traits : 'FamixTInheritanceGlue + FamixTSubInheritance + FamixTSuperInheritance',
	#classTraits : 'FamixTInheritanceGlue classTrait + FamixTSubInheritance classTrait + FamixTSuperInheritance classTrait',
	#category : #'FamixTest2-Entities-Entities'
}

{ #category : #meta }
FamixTest2Inheritance class >> annotation [

	<MSEClass: #Inheritance super: #FamixTest2Association>
	<package: #'FamixTest2-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixTest2Inheritance class >> generatedSlotNames [
	<generated>
	'FamixTest2Inheritance class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixTest2Inheritance class >> generatedTraitNames [
	<generated>
	^ #(FamixTInheritanceGlue FamixTSubInheritance FamixTSuperInheritance)
]

{ #category : #meta }
FamixTest2Inheritance class >> requirements [

	<generated>
	^ {  }
]
