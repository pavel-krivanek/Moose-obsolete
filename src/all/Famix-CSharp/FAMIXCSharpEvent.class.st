"
Represents a CSharp Event.
"
Class {
	#name : #FAMIXCSharpEvent,
	#superclass : #FAMIXMethod,
	#instVars : [
		'subscribedMethods',
		'addMethod',
		'removeMethod'
	],
	#category : #'Famix-CSharp'
}

{ #category : #meta }
FAMIXCSharpEvent class >> annotation [
	<MSEClass: #CSharpEvent super: #FAMIXMethod>
	<package: #CSharp>

]

{ #category : #initialization }
FAMIXCSharpEvent >> addMethod [
	<MSEProperty: #addMethod type: #FAMIXMethod>
	<MSEComment: 'Add method of a CSharp Event'>
	^ addMethod
]

{ #category : #initialization }
FAMIXCSharpEvent >> addMethod: aMethod [
	addMethod := aMethod
]

{ #category : #initialization }
FAMIXCSharpEvent >> initialize [
	super initialize.
	subscribedMethods := OrderedCollection new.
	
]

{ #category : #initialization }
FAMIXCSharpEvent >> removeMethod [
	<MSEProperty: #removeMethod type: #FAMIXMethod>
	<MSEComment: 'Add method of a CSharp Event'>
	^ removeMethod
	
]

{ #category : #initialization }
FAMIXCSharpEvent >> removeMethod: aMethod [
	removeMethod := aMethod
]
