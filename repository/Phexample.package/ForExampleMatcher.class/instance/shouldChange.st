examples-expecting-change
shouldChange
	| list |
	list := OrderedCollection new.
	[ list add: nil ] should change: [ list size ]