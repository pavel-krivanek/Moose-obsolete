Class {
	#name : #FamixMetamodelBuilderTypedProperty,
	#superclass : #FamixMetamodelBuilderProperty,
	#instVars : [
		'propertyType'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #generating }
FamixMetamodelBuilderTypedProperty >> asSlot [

	self propertyType 
		ifNil: [ FamixMetamodelBuilderIncompletePropertyDefiniton signal ].

	^ self builder environment 
		slotNamed: self name asSymbol 

]

{ #category : #generating }
FamixMetamodelBuilderTypedProperty >> generateGetterIn: aClassOrTrait [

	| methodSource propertyDefinition commentDefinition |

	propertyDefinition := '<MSEProperty: #{1} type: #{2}>' 
		format: { self name. self propertyType }.

	commentDefinition := self comment
		ifNotEmpty: [ '<MSEComment: ''{1}''>' format: { self comment } ].

	methodSource := String streamContents: [ :s |
		s nextPutAll: self name; cr; cr.
		s tab; nextPutAll: propertyDefinition; cr.
		commentDefinition  
			ifNotEmpty: [ s tab; nextPutAll: commentDefinition; cr].
		s tab; nextPutAll: '^ ';
			nextPutAll: self name.].
		
	self builder environment compile: methodSource in: aClassOrTrait classified: 'accessing'.	
	

	
]

{ #category : #generating }
FamixMetamodelBuilderTypedProperty >> generateSetterIn: aClassOrTrait [

	| methodSource |
	
	methodSource := String streamContents: [ :s |
		s nextPutAll: self name; nextPutAll: ': anObject'; cr; cr.
		s tab; nextPutAll: self name, ' := anObject'; cr 	].
		
	self builder environment compile: methodSource in: aClassOrTrait classified: 'accessing'.
]

{ #category : #accessing }
FamixMetamodelBuilderTypedProperty >> propertyType [
	^ propertyType
]

{ #category : #accessing }
FamixMetamodelBuilderTypedProperty >> propertyType: anObject [
	propertyType := anObject
]
