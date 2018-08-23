Class {
	#name : #FmxNGTest2Inheritance,
	#superclass : #FmxNGTest2Association,
	#traits : 'FmxNGTInheritanceGlue + FmxNGTSubInheritance + FmxNGTSuperInheritance',
	#classTraits : 'FmxNGTInheritanceGlue classTrait + FmxNGTSubInheritance classTrait + FmxNGTSuperInheritance classTrait',
	#category : #'FmxNGTest2-Entities-Entities'
}

{ #category : #meta }
FmxNGTest2Inheritance class >> annotation [

	<MSEClass: #Inheritance super: #FmxNGTest2Association>
	<package: #'FmxNGTest2-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest2Inheritance class >> generatedSlotNames [
	<generated>
	'FmxNGTest2Inheritance class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest2Inheritance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTInheritanceGlue FmxNGTSubInheritance FmxNGTSuperInheritance)
]

{ #category : #meta }
FmxNGTest2Inheritance class >> requirements [

	<generated>
	^ {  }
]
