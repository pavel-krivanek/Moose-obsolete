tests
testView
	self assert: composer view equals: view.
	view := RTView new.
	composer view: view. 
	self assert: composer view equals: view.