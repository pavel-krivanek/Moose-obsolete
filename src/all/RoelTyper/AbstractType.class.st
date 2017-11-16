Class {
	#name : #AbstractType,
	#superclass : #Object,
	#instVars : [
		'ivarClass',
		'ivarName',
		'tag',
		'nbOfCorrectTypes',
		'nbOfIncorrectTypes'
	],
	#category : #RoelTyper-Core
}

{ #category : #'instance creation' }
AbstractType class >> forInstvar: iv inClass: aClass [
	^(self basicNew initialize)
		ivarName: iv;
		ivarClass: aClass;
		yourself
]

{ #category : #'instance creation' }
AbstractType class >> new [
	^self shouldNotImplement
]

{ #category : #private }
AbstractType >> conflictingAssignmentsWith: anExtractedType [
	| conflictingAssignments |
	conflictingAssignments := anExtractedType assignments
		select: [:assignment | (self types includes: assignment) not].
	^conflictingAssignments
]

{ #category : #private }
AbstractType >> conflictingSelectorsWith: anExtractedType [
	| conflictingSelectors |
	conflictingSelectors := Dictionary new.
	anExtractedType interface
		do:
			[:selector | 
			self types
				do:
					[:aType | 
					(aType canUnderstand: selector)
						ifFalse:
							[(conflictingSelectors
								at: selector
								ifAbsentPut: [OrderedCollection new]) add: aType]]].
	^conflictingSelectors
]

{ #category : #initialize-release }
AbstractType >> initialize [
	"Do nothing, but give subclasses the chance to override."

	
]

{ #category : #testing }
AbstractType >> is: aClass [
	^self isSingularType and: [self types first = aClass]
]

{ #category : #testing }
AbstractType >> isExtractedResult [
	^self subclassResponsibility
]

{ #category : #testing }
AbstractType >> isObjectType [
	^self isSingularType and: [self types includes: Object]
]

{ #category : #testing }
AbstractType >> isSingularType [
	^self types size = 1
]

{ #category : #accessing }
AbstractType >> ivarClass [
	^ivarClass
]

{ #category : #accessing }
AbstractType >> ivarClass: aClass [
	ivarClass := aClass.
	"self triggerEvent: #changed"
]

{ #category : #accessing }
AbstractType >> ivarName [
	^ivarName
]

{ #category : #accessing }
AbstractType >> ivarName: aSymbol [
	ivarName := aSymbol.
	"self triggerEvent: #changed"
]

{ #category : #private }
AbstractType >> liveExtractType [
	^self
]

{ #category : #printing }
AbstractType >> printOn: aStream [
	self printTypesOn: aStream
]

{ #category : #printing }
AbstractType >> printTypesOn: aStream [
	self types
		do: [:each | aStream print: each]
		separatedBy: [aStream nextPutAll: ' , ']
]

{ #category : #accessing }
AbstractType >> types [
	^self subclassResponsibility
]
