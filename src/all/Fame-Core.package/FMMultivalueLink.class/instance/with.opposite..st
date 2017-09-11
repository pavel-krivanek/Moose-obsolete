private
with: element opposite: oppositeSelector
	self assert: oppositeSelector numArgs = 1.
	values := OrderedCollection new.
	owner := element.
	opposite := oppositeSelector