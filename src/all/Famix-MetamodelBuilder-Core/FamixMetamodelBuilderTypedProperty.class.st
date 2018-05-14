"
FamixMetamodelBuilderTypedProperty
"
Class {
	#name : #FamixMetamodelBuilderTypedProperty,
	#superclass : #FamixMetamodelBuilderProperty,
	#instVars : [
		'propertyType',
		'multivalued'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #visitor }
FamixMetamodelBuilderTypedProperty >> acceptVisitor: aVisitor [

	^ aVisitor visitTypedProperty: self.
]

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
		s tab; nextPutAll: '<generated>'; cr.
		self isMultivalued ifTrue: [ 
			 s tab; nextPutAll: '<multivalued>'; cr. ].
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
		s tab; nextPutAll: '<generated>'; cr.
		s tab; nextPutAll: self name, ' := anObject'; cr 	].
		
	self builder environment compile: methodSource in: aClassOrTrait classified: 'accessing'.
]

{ #category : #initialization }
FamixMetamodelBuilderTypedProperty >> initialize [

	super initialize.
	multivalued := false.

]

{ #category : #accessing }
FamixMetamodelBuilderTypedProperty >> isMultivalued [

	^ multivalued
]

{ #category : #accessing }
FamixMetamodelBuilderTypedProperty >> multivalued [

	multivalued := true.
]

{ #category : #accessing }
FamixMetamodelBuilderTypedProperty >> multivalued: anObject [
	multivalued := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderTypedProperty >> propertyType [
	^ propertyType
]

{ #category : #accessing }
FamixMetamodelBuilderTypedProperty >> propertyType: anObject [
	propertyType := anObject
]
