tests
testError
	| label |
	self should: [ label := lg searchMin: -98.0 max: 18.0 desired: 1. ] raise: Error description: 'entry to short'.
	self should: [ label := lg searchMin: -98.0 max: 18.0 desired: 0. ] raise: Error description: 'entry to short'