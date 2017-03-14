accessing
configuration
	^ configuration ifNil: [
		self configuration: self configurationClass new.
		configuration]