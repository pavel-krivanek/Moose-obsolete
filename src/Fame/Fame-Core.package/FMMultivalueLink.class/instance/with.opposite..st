private
with: element opposite: oppositeSelector

	[ oppositeSelector numArgs = 1 ] assert.
	values := OrderedCollection new.
	owner := element.
	opposite := oppositeSelector.