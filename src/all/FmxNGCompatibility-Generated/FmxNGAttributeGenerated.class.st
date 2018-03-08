Class {
	#name : #FmxNGAttributeGenerated,
	#superclass : #FmxNGStructuralEntity,
	#instVars : [
		'#parentType => FMOne type: #FmxNGTWithAttributes opposite: #attributes'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGAttributeGenerated class >> annotation [

	<MSEClass: #AttributeGenerated super: #FmxNGStructuralEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGAttributeGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGAttributeGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTAttribute. FmxNGTWithClassScope}
]
