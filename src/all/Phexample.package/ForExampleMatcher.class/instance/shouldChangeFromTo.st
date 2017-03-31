examples-expecting-change
shouldChangeFromTo
	| list |
	list := OrderedCollection new add: nil; add: nil; yourself.
	[ list add: nil ] should change: [ list size ] from: 2 to: 3.