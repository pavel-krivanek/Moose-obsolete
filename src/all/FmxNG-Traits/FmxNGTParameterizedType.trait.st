"
FAMIXParameterizedType represents a type with arguments. So, it is an instantiation for the use of FAMIXParameterizableClass. It can appear as a type of an attribute, a type of a local variable, a parameter of a method, a return of a method, etc.
Example:

...
public Map<String,Collection> anAttribute;
...

Where Map<String,Collection> is the FAMIXParameterizedType of anAttribute. String and Collection are arguments. Map is the parameterizableClass.
"
Trait {
	#name : #FmxNGTParameterizedType,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTParameterizedType classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TParameterizedType super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTParameterizedType classSide >> generatedSlotNames [
	<generated>
	^ #(parameterizableClass)
]

{ #category : #generator }
FmxNGTParameterizedType classSide >> generatedTraitNames [
	<generated>
	^ #()
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
