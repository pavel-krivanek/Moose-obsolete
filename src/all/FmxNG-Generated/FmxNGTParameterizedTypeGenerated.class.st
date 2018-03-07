"
FAMIXParameterizedType represents a type with arguments. So, it is an instantiation for the use of FAMIXParameterizableClass. It can appear as a type of an attribute, a type of a local variable, a parameter of a method, a return of a method, etc.
Example:

...
public Map<String,Collection> anAttribute;
...

Where Map<String,Collection> is the FAMIXParameterizedType of anAttribute. String and Collection are arguments. Map is the parameterizableClass.
"
Class {
	#name : #FmxNGTParameterizedTypeGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parameterizableClass => FMOne type: #FmxNGTWithParameterizedTypes opposite: #parameterizedTypes'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTParameterizedTypeGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TParameterizedTypeGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTParameterizedTypeGenerated >> parameterizableClass [

	<MSEComment: 'Base type of this parameterized type.'>
	^ parameterizableClass
]

{ #category : #accessing }
FmxNGTParameterizedTypeGenerated >> parameterizableClass: anObject [

	parameterizableClass := anObject

]
