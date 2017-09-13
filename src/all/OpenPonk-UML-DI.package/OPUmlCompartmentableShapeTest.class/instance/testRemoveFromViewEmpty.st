tests
testRemoveFromViewEmpty
	| view |
	view := RTView new.
	element renderIn: view.
	element remove.
	self assert: view elements asArray equals: #()