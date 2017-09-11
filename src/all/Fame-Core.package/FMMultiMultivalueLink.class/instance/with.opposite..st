private
with: element opposite: oppositeSelector
	self assert: oppositeSelector numArgs = 0.
	values := OrderedCollection new.
	owner := element.
	opposite := oppositeSelector