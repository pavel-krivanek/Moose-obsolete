adding removing shapes
addShape: shape
	shape addedIn: self.
	shape triggerCallbacksForAddition