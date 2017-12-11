Class {
	#name : #EQOperator,
	#superclass : #Object,
	#instVars : [
		'symbol'
	],
	#category : #'Fame-Example'
}

{ #category : #'As yet unclassified' }
EQOperator class >> annotation [
	<MSEClass: #Operator super: #Object>
	<package: #EQ>
]

{ #category : #printing }
EQOperator >> printOn: stream [

	stream nextPutAll: symbol
]

{ #category : #accessing }
EQOperator >> symbol [
	<MSEProperty: #symbol type: #String>
	^symbol
]

{ #category : #accessing }
EQOperator >> symbol: anObject [
	symbol := anObject
]
