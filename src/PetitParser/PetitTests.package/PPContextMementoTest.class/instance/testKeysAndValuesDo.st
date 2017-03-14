tests
testKeysAndValuesDo
	|   |
	memento keysAndValuesDo: [ :key :value |
		self signalFailure: 'Should not be called'
	].