"
I describe collections which include specific item.

	#(1 2 3) should include: 2

I can be created by: 

	SpecOfCollectionContents requiredItem: 2
	
Internal Representation and Key Implementation Points.

    Instance Variables
	requiredItem:		<Object>
"
Class {
	#name : #SpecOfCollectionContents,
	#superclass : #SpecOfCollection,
	#instVars : [
		'requiredItem'
	],
	#category : 'StateSpecs-Specs'
}

{ #category : #'instance creation' }
SpecOfCollectionContents class >> requiredItem: anObject [ 
	^self new requiredItem: anObject
]

{ #category : #testing }
SpecOfCollectionContents >> basicMatches: aCollection [ 
	^aCollection includes: requiredItem
]

{ #category : #displaying }
SpecOfCollectionContents >> defaultTitle [
	^'include ' , requiredItem stringForSpecTitle
]

{ #category : #accessing }
SpecOfCollectionContents >> requiredItem [
	^requiredItem
]

{ #category : #accessing }
SpecOfCollectionContents >> requiredItem: anObject [
	requiredItem := anObject
]
