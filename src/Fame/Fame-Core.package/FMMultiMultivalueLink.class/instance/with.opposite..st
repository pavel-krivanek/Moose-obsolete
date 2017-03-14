private
with: element opposite: oppositeSelector

	[ oppositeSelector numArgs = 0 ] assert.
	values := OrderedCollection new.
	owner := element.
	opposite := oppositeSelector.