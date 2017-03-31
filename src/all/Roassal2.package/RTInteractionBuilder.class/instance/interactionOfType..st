accessing - computed
interactionOfType: cls
	^ interactions
		detect: [ :anInt | anInt class == cls or: [ anInt class inheritsFrom: cls ] ]
		ifNone: [ nil ]