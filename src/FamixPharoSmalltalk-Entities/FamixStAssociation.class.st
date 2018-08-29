Class {
	#name : #FamixStAssociation,
	#superclass : #FamixStSourcedEntity,
	#traits : 'FamixTAssociation + TAssociationMetaLevelDependency',
	#classTraits : 'FamixTAssociation classTrait + TAssociationMetaLevelDependency classTrait',
	#classInstVars : [
		'#targetTypes',
		'#sourceTypes'
	],
	#category : #'FamixPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FamixStAssociation class >> annotation [

	<MSEClass: #Association super: #FamixStSourcedEntity>
	<package: #'FamixPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixStAssociation class >> generatedSlotNames [
	<generated>
	'FamixStAssociation class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixStAssociation class >> generatedTraitNames [
	<generated>
	^ #(FamixTAssociation TAssociationMetaLevelDependency)
]

{ #category : #meta }
FamixStAssociation class >> requirements [

	<generated>
	^ {  }
]
