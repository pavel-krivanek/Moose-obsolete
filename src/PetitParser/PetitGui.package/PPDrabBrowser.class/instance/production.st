accessing-view
production
	| parser |
	^ (parser := self selectedClass new)
		productionAt: (self selectedSelector
			ifNil: [ ^ parser ])