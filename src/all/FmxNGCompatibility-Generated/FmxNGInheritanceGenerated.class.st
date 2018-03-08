Class {
	#name : #FmxNGInheritanceGenerated,
	#superclass : #FmxNGAssociation,
	#instVars : [
		'#subclass => FMOne type: #FmxNGTWithSubInheritances opposite: #superInheritances',
		'#superclass => FMOne type: #FmxNGTWithSuperInheritances opposite: #subInheritances'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGInheritanceGenerated class >> annotation [

	<MSEClass: #InheritanceGenerated super: #FmxNGAssociation>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGInheritanceGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGInheritanceGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTSubInheritance. FmxNGTSuperInheritance}
]
