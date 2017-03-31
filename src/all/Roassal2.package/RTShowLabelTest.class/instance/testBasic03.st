tests
testBasic03
	view := RTView new.
	box := RTBox new size: 30; elementOn: 'Hi'.
	view add: box.
	self assert: view canvas shapes size equals: 1.

	box @ RTShowLabel.
	self assert: view canvas shapes size equals: 1.

	box announce: TRMouseEnter.
	box announce: TRMouseEnter.
	self assert: view canvas shapes size equals: 2.
	
	box announce: TRMouseLeave.
	self assert: view canvas shapes size equals: 1.
