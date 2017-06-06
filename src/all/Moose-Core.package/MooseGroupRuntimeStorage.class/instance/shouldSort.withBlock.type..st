private
shouldSort: aCollection withBlock: aBlockClosure type: aMooseClass
	| isSorted |
	isSorted := self sortedCollectionList at: aMooseClass ifAbsentPut: [ false ].
	^ isSorted
		ifTrue: [ aCollection ]
		ifFalse: [ self sortedCollectionList at: aMooseClass put: true.
			aCollection sort: aBlockClosure ]