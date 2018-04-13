"
FAMIXParameterizedType represents a type with arguments. So, it is an instantiation for the use of FAMIXParameterizableClass. It can appear as a type of an attribute, a type of a local variable, a parameter of a method, a return of a method, etc.
Example:

...
public Map<String,Collection> anAttribute;
...

Where Map<String,Collection> is the FAMIXParameterizedType of anAttribute. String and Collection are arguments. Map is the parameterizableClass.
"
Class {
	#name : #FmxNGTParameterizedType,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parameterizableClass => FMOne type: #FmxNGTWithParameterizedTypes opposite: #parameterizedTypes'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTParameterizedType class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TParameterizedType super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTParameterizedType >> parameterizableClass [

	<generated>
	<MSEComment: 'Base type of this parameterized type.'>
	^ parameterizableClass
]

{ #category : #accessing }
FmxNGTParameterizedType >> parameterizableClass: anObject [

	<generated>
	parameterizableClass := anObject

]
