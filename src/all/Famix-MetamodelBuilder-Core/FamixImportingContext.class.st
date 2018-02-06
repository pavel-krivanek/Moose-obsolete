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
	
	self import: aClass traversed: Set new
	
]

{ #category : #accessing }
FamixImportingContext >> import: aClass traversed: traversedClasses [

	(traversedClasses includes: aClass)
		ifTrue: [ ^ self ].
		
	self imports add: aClass.
	traversedClasses add: aClass.
		
	aClass requirements do: [ :each |
		self import: each traversed: traversedClasses ].
	
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
