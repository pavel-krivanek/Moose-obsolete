"
FAMIXSourceAnchor is an abstract class representing a pointer to a source. The source can be identified in multiple ways as specified by the subclasses.  The famix entity that this class is a source pointer for, is accessible via element property.
"
Trait {
	#name : #FmxNGTSourceAnchor,
	#instVars : [
		'#element => FMOne type: #FmxNGTWithSourceAnchor opposite: #sourceAnchor'
	],
	#category : #'FmxNG-Traits-SourceAnchor'
}

{ #category : #meta }
FmxNGTSourceAnchor classSide >> annotation [

	<MSEClass: #TSourceAnchor super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTSourceAnchor classSide >> generatedSlotNames [
	<generated>
	'FmxNGTSourceAnchor class>>#generatedSlotNames'.
	^ #(element)
]

{ #category : #generator }
FmxNGTSourceAnchor classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTSourceAnchor >> element [

	<generated>
	<MSEComment: 'Enable the accessibility to the famix entity that this class is a source pointer for'>
	^ element
]

{ #category : #accessing }
FmxNGTSourceAnchor >> element: anObject [

	<generated>
	element := anObject

]

{ #category : #metrics }
FmxNGTSourceAnchor >> lineCount [

	<MSEProperty: #lineCount type: #Number>
	<derived>
	<MSEComment: 'The number of lines in the source text'>

	^ self sourceText ifNotNil: #lineCount ifNil: [ self notExistentMetricValue ]
]

{ #category : #accessing }
FmxNGTSourceAnchor >> sourceText [

	"I should be overriden in my users"
	^ nil
]
