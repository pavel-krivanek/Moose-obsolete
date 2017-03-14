enumerating
orphans
	| allNodes diff nonEmptyDescendants nonOrphans |
	nonOrphans := OrderedCollection new.
	allNodes := self nodes asSet.
	nonEmptyDescendants := self nodes reject: [ :node | node descendants isEmpty ].
	nonOrphans := (nonEmptyDescendants flatCollect: [ :each | each descendants ]) asSet.
	diff := allNodes difference: nonOrphans.
	^ diff