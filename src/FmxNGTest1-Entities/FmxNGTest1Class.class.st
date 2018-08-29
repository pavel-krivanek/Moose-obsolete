Class {
	#name : #FmxNGTest1Class,
	#superclass : #FmxNGTest1NamedEntity,
	#traits : 'FmxNGTClass + FmxNGTLCOMMetrics + FmxNGTWithMethods',
	#classTraits : 'FmxNGTClass classTrait + FmxNGTLCOMMetrics classTrait + FmxNGTWithMethods classTrait',
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1Class class >> annotation [

	<MSEClass: #Class super: #FmxNGTest1NamedEntity>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1Class class >> generatedSlotNames [
	<generated>
	'FmxNGTest1Class class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1Class class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTClass FmxNGTLCOMMetrics FmxNGTWithMethods)
]

{ #category : #meta }
FmxNGTest1Class class >> requirements [

	<generated>
	^ {  }
]
