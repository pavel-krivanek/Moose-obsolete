copying
copyReplaceAll: aSearchCollection with: aReplacementCollection
	| copy index size searchCollectionSize |

	"this implementation always returns a copy, even if it doesn't replace"
	(searchCollectionSize := aSearchCollection size) > 0
		ifFalse: [^ self copy].

	copy := self copyEmpty.
	index := 1.
	size := self size.
	[index <= size]
		whileTrue: [
			(self at: index) = (aSearchCollection at: 1)
				ifTrue: [| searchCollectionIndex |
					searchCollectionIndex := 2.
					[searchCollectionIndex <= searchCollectionSize
						and: [
							(self at: index + searchCollectionIndex - 1) =
								(aSearchCollection at: searchCollectionIndex)]]
						whileTrue: [searchCollectionIndex := searchCollectionIndex + 1].
					searchCollectionIndex > searchCollectionSize
						ifTrue: [
							"found a match, add the replacement and skip the replaced"
							copy addAll: aReplacementCollection.
							index := index + searchCollectionSize]
						ifFalse: [
							copy addLast: (self at: index).
							index := index + 1]]
				ifFalse: [ 
					copy addLast: (self at: index).
					index := index + 1]].
	^ copy.