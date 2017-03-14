hook
selectVersion: aVersion

	^ aVersion month >= (lastSelectedVersion month next: self months)