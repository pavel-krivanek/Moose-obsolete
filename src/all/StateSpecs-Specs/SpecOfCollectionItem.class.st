"
I describe collection item. 

	#(one two) should include: #one at: 1

My instance can be created by:

	SpecOfCollectionItem at: 1 requiredItem: #one.
	
I support using specifications for required item:

	#(one two) should include: (Kind of: String ) at: 1		
			 
Internal Representation and Key Implementation Points.

    Instance Variables
	containingKey:		<Object>
	requiredItem:		<SpecOfObjectState>
"
Class {
	#name : #SpecOfCollectionItem,
	#superclass : #SpecOfCollection,
	#instVars : [
		'containingKey',
		'requiredItem'
	],
	#category : 'StateSpecs-Specs'
}

{ #category : #'instance creation' }
SpecOfCollectionItem class >> at: keyObject requiredItem: itemObject [
	^self new
		containingKey: keyObject;
		requiredItem: itemObject 
]

{ #category : #testing }
SpecOfCollectionItem >> basicMatches: aCollection [
	| actualItem |
	actualItem := aCollection at: containingKey ifAbsent: [^false].

	^requiredItem matches: actualItem
]

{ #category : #accessing }
SpecOfCollectionItem >> containingKey [
	^ containingKey
]

{ #category : #accessing }
SpecOfCollectionItem >> containingKey: anObject [
	containingKey := anObject
]

{ #category : #accessing }
SpecOfCollectionItem >> defaultTitle [
	^'include ', requiredItem stringForSpecTitle, ' at ' , containingKey stringForSpecTitle
]

{ #category : #accessing }
SpecOfCollectionItem >> invertChildren [
	super invertChildren.
	
	requiredItem invert
]

{ #category : #printing }
SpecOfCollectionItem >> itemDescription [
	^requiredItem description
]

{ #category : #accessing }
SpecOfCollectionItem >> requiredItem [
	^ requiredItem
]

{ #category : #accessing }
SpecOfCollectionItem >> requiredItem: anObject [
	requiredItem := anObject asStateSpec
]

{ #category : #validation }
SpecOfCollectionItem >> validate: aCollection [
	| actualItem result |
	
	actualItem := aCollection at: containingKey ifAbsent: [
		^SpecOfCollectionItemValidationFailure noItemIn: aCollection butShouldBe: self ].
	
	result := requiredItem validate: actualItem.
	^result isSuccess 
		ifTrue: [ result ] 
		ifFalse: [ ^SpecOfCollectionItemValidationFailure unexpectedItem: actualItem in: aCollection butShouldBe: self ] 
]
