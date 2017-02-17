accessing
legend
	^ legendBuilder
		ifNil: [ self resetLegend.
			legendBuilder ]