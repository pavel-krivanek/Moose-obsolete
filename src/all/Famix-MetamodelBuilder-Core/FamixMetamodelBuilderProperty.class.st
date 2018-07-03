"
FamixMetamodelBuilderProperty
"
Class {
	#name : #FamixMetamodelBuilderProperty,
	#superclass : #FamixMetamodelBuilderEntity,
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #accessing }
FamixMetamodelBuilderProperty >> asSlot [

	self subclassResponsibility
]

{ #category : #generating }
FamixMetamodelBuilderProperty >> generateAccessorsIn: aClassOrTrait [

	self generateGetterIn: aClassOrTrait.
	self generateSetterIn: aClassOrTrait.
]

{ #category : #accessing }
FamixMetamodelBuilderProperty >> initialize [

	super initialize.	

	comment := String new.

]

{ #category : #printing }
FamixMetamodelBuilderProperty >> isContainer [

	^ false
]

{ #category : #printing }
FamixMetamodelBuilderProperty >> printOn: aStream [

	<ignoreForCoverage>

	super printOn: aStream.
	
	aStream 
		nextPutAll: '(';
		nextPutAll: (self name ifNil: ['']);
		nextPutAll: ')'
]
