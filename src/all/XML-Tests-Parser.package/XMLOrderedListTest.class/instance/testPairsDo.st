tests
testPairsDo
	"does not require the receiver to have an even number of items"

	0 to: self listItems size do: [:i | | list odd even |
		list := self listClass newFrom: (self listItems allButLast: i).
		odd := OrderedCollection new.
		even := OrderedCollection new.
		list withIndexDo: [:each :oddOrEven |
			oddOrEven odd
				ifTrue: [
					oddOrEven < list size
						ifTrue: [odd addLast: each]]
				ifFalse: [even addLast: each]].
		self
			should: [:twoArgumentBlock | list pairsDo: twoArgumentBlock]
			enumerate: odd
			and: even]