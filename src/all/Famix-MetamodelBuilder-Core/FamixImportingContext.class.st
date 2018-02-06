"
basic class for generated importing contexts
"
Class {
	#name : #FamixImportingContext,
	#superclass : #Object,
	#instVars : [
		'imports'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #accessing }
FamixImportingContext >> import: aClass [
	
	self imports add: aClass
]

{ #category : #accessing }
FamixImportingContext >> imports [
	^ imports
]

{ #category : #accessing }
FamixImportingContext >> imports: anObject [
	imports := anObject
]

{ #category : #initialization }
FamixImportingContext >> initialize [

	super initialize.
	
	imports := Set new.
]

{ #category : #testing }
FamixImportingContext >> shouldImport: aClass [

	^ self imports includes: aClass
]
