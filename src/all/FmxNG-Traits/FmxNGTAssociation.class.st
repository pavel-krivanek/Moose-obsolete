Class {
	#name : #FmxNGTAssociation,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#previous => FMOne type: #FmxNGTAssociation opposite: #next',
		'#next => FMOne type: #FmxNGTAssociation opposite: #previous'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAssociation class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAssociation super: #FmxNGTAssociationGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
