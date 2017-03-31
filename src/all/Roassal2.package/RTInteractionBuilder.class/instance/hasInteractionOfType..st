public
hasInteractionOfType: cls
	^ interactions
		anySatisfy: [ :anInt | anInt class == cls or: [ anInt class inheritsFrom: cls ] ]