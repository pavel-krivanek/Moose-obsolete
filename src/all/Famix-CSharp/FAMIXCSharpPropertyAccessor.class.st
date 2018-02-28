"
Represents a getter or setter method for C# properties
"
Class {
	#name : #FAMIXCSharpPropertyAccessor,
	#superclass : #FAMIXMethod,
	#instVars : [
		'property'
	],
	#category : #'Famix-CSharp'
}

{ #category : #meta }
FAMIXCSharpPropertyAccessor class >> annotation [
	<MSEClass: #CSharpPropertyAccessor super: #FAMIXMethod>
	<package: #CSharp>

]

{ #category : #accessing }
FAMIXCSharpPropertyAccessor >> property [
	<MSEProperty: #property type: #FAMIXCSharpProperty>
	<MSEComment: 'The CSharp Property this accessor is defined for'>
	<source>
	^ property 
]

{ #category : #accessing }
FAMIXCSharpPropertyAccessor >> property: parentProperty [
	property := parentProperty 
]
