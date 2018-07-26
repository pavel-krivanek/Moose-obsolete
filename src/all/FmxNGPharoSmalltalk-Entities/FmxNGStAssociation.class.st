Class {
	#name : #FmxNGStAssociation,
	#superclass : #FmxNGStSourcedEntity,
	#traits : 'FmxNGTAssociation + TAssociationMetaLevelDependency',
	#classTraits : 'FmxNGTAssociation classTrait + TAssociationMetaLevelDependency classTrait',
	#classInstVars : [
		'#targetTypes',
		'#sourceTypes'
	],
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStAssociation class >> annotation [

	<MSEClass: #Association super: #FmxNGStSourcedEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStAssociation class >> generatedSlotNames [
	<generated>
	'FmxNGStAssociation class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStAssociation class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAssociation TAssociationMetaLevelDependency)
]

{ #category : #meta }
FmxNGStAssociation class >> requirements [

	<generated>
	^ {  }
]
