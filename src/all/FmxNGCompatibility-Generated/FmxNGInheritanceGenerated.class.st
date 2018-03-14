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

{ #category : #'_fromTrait_FmxNGTSubInheritanceGenerated' }
FmxNGInheritanceGenerated >> subclass [

	<source>

	^ subclass
]

{ #category : #'_fromTrait_FmxNGTSubInheritanceGenerated' }
FmxNGInheritanceGenerated >> subclass: anObject [

	subclass := anObject

]

{ #category : #'_fromTrait_FmxNGTSuperInheritanceGenerated' }
FmxNGInheritanceGenerated >> superclass [

	<target>

	^ superclass
]

{ #category : #'_fromTrait_FmxNGTSuperInheritanceGenerated' }
FmxNGInheritanceGenerated >> superclass: anObject [

	superclass := anObject

]
