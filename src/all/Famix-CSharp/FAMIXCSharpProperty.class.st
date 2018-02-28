"
Represents a C# Property
"
Class {
	#name : #FAMIXCSharpProperty,
	#superclass : #FAMIXAttribute,
	#instVars : [
		'setter',
		'getter'
	],
	#category : #'Famix-CSharp'
}

{ #category : #meta }
FAMIXCSharpProperty class >> annotation [
	<MSEClass: #CSharpProperty super: #FAMIXAttribute>
	<package: #CSharp>

]

{ #category : #accessing }
FAMIXCSharpProperty >> getter [
	<MSEProperty: #getter type: #FAMIXCSharpPropertyAccessor>
	<MSEComment: 'Getter method of a CSharp Property'>
	^ getter 
]

{ #category : #accessing }
FAMIXCSharpProperty >> getter: aGetter [
	getter := aGetter
]

{ #category : #accessing }
FAMIXCSharpProperty >> setter [
	<MSEProperty: #setter type: #FAMIXCSharpPropertyAccessor>
	<MSEComment: 'Setter method of a CSharp Property'>
	^ setter 
]

{ #category : #accessing }
FAMIXCSharpProperty >> setter: aSetter [
	setter := aSetter
]
