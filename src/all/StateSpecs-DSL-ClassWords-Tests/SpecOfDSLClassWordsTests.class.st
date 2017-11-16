Class {
	#name : #SpecOfDSLClassWordsTests,
	#superclass : #TestCase,
	#category : 'StateSpecs-DSL-ClassWords-Tests'
}

{ #category : #tests }
SpecOfDSLClassWordsTests >> testContainingItem [
	| spec |
	spec := Containing item: #collectionItem.
	self assert: spec class = SpecOfCollectionContents.
	self assert: spec requiredItem == #collectionItem
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testContainingItemAtKey [
	| spec |
	spec := Containing item: #item at: #key.
	self assert: spec class = SpecOfCollectionItem.
	self assert: spec containingKey == #key.
	self assert: spec requiredItem class = #item asStateSpec class.
	self assert: spec requiredItem requiredValue = #item.
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testContainingKey [
	| spec |
	spec := Containing key: #collectionKey.
	self assert: spec class = SpecOfDictionaryKeys.
	self assert: spec requiredKey == #collectionKey
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testEqual [
	| spec |
	spec := Equal to: #some.
	self assert: spec class = SpecOfEquality.
	self assert: spec requiredValue == #some
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testEqualInSameOrder [
	| spec |
	spec := Equal inSameOrderTo: #(1 2 3).
	self assert: spec class = SpecOfCollectionOrderedEquality.
	self assert: spec requiredValue == #(1 2 3)
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testEqualWithin [
	| spec |
	spec := Equal to: #someValue within: #accuracy.
	self assert: spec class = SpecOfApproxEquality.
	self assert: spec requiredValue == #someValue.
	self assert: spec accuracy == #accuracy
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testGreaterThan [ 
	| spec |
	spec := Greater than: #number.
	self assert: spec class = SpecOfGreaterMagnitude.
	self assert: spec requiredValue == #number.
	self assert: spec isStrong
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testHasEmptyItems [
	| spec |
	spec := Has emptyItems.
	self assert: spec class = SpecOfCollectionSize.
	self assert: spec requiredSize = 0
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testHasSize [
	| spec |
	spec := Has size: #number.
	self assert: spec class = SpecOfCollectionSize.
	self assert: spec requiredSize == #number
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testIdentical [
	| spec |
	spec := Identical to: #some.
	self assert: spec class = SpecOfIdentity.
	self assert: spec requiredValue == #some
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testInstance [
	| spec |
	spec := Instance of: #someClass.
	self assert: spec class = SpecOfObjectClass.
	self assert: spec requiredClass == #someClass
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testKind [
	| spec |
	spec := Kind of: #someClass.
	self assert: spec class = SpecOfObjectSuperclass.
	self assert: spec requiredClass == #someClass
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testLessThan [ 
	| spec |
	spec := Less than: #number.
	self assert: spec class = SpecOfLesserMagnitude.
	self assert: spec requiredValue == #number.
	self assert: spec isStrong
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testRespond [
	| spec |
	spec := Respond to: #selector.
	self assert: spec class = SpecOfObjectResponsibility.
	self assert: spec requiredMessage == #selector
]

{ #category : #tests }
SpecOfDSLClassWordsTests >> testSatisfying [
	| spec |
	spec := Satisfying for: #block.
	self assert: spec class = SpecOfObjectStateByPredicate.
	self assert: spec predicate == #block
]
