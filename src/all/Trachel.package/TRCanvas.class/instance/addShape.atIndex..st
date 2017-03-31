adding removing shapes
addShape: shape atIndex: index
	shape addedIn: self atIndex: index.
	shape triggerCallbacksForAddition