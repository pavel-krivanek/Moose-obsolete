Class {
	#name : #StatefulTraitsMergedClassInfoForRing,
	#superclass : #StatefulTraitsMergedClassInfo,
	#category : #'Famix-MetamodelBuilder-Support'
}

{ #category : #merging }
StatefulTraitsMergedClassInfoForRing >> merge [

	self traits do: [ :aTrait | self mergeTrait: aTrait ].

]

{ #category : #merging }
StatefulTraitsMergedClassInfoForRing >> mergeMethodsFrom: aTrait [

	(self traitsToMergeWith: aTrait) do: [ :traitToMerge |
		traitToMerge localMethods do: [ :each | self mergeMethod: each onClassSide: false ].
		traitToMerge classSide localMethods do: [ :each | self mergeMethod: each onClassSide: true ]]
]

{ #category : #merging }
StatefulTraitsMergedClassInfoForRing >> mergeSlot: aSlot [

	| newSlot |

	newSlot := super mergeSlot: aSlot.
	newSlot propertyNamed: #isGenerated put: true.
]
