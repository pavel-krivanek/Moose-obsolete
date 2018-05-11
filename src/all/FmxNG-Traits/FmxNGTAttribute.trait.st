"
FAMIXAttribute represents a field of a class. It is an attribute of the parent type.

"
Trait {
	#name : #FmxNGTAttribute,
	#instVars : [
		'#parentType => FMOne type: #FmxNGTWithAttributes opposite: #attributes'
	],
	#category : #'FmxNG-Traits-Attribute'
}

{ #category : #meta }
FmxNGTAttribute classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TAttribute super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTAttribute classSide >> generatedSlotNames [
	<generated>
	^ #(parentType)
]

{ #category : #generator }
FmxNGTAttribute classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTAttribute >> parentType [

	<generated>
	<MSEComment: 'Type declaring the attribute. belongsTo implementation'>
	<container>

	^ parentType
]

{ #category : #accessing }
FmxNGTAttribute >> parentType: anObject [

	<generated>
	parentType := anObject

]
