Class {
	#name : #FmxNGTest2Class,
	#superclass : #FmxNGTest2NamedEntity,
	#traits : 'FmxNGTClass + FmxNGTWithSubInheritances + FmxNGTWithSuperInheritances',
	#classTraits : 'FmxNGTClass classTrait + FmxNGTWithSubInheritances classTrait + FmxNGTWithSuperInheritances classTrait',
	#category : #'FmxNGTest2-Entities-Entities'
}

{ #category : #meta }
FmxNGTest2Class class >> annotation [

	<MSEClass: #Class super: #FmxNGTest2NamedEntity>
	<package: #'FmxNGTest2-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest2Class class >> generatedSlotNames [
	<generated>
	'FmxNGTest2Class class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest2Class class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTClass FmxNGTWithSubInheritances FmxNGTWithSuperInheritances)
]

{ #category : #meta }
FmxNGTest2Class class >> requirements [

	<generated>
	^ {  }
]
