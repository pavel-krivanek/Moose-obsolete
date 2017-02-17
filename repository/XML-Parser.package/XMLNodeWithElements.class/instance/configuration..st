accessing
configuration: aConfiguration
	configuration := aConfiguration.
	self hasChildren
		ifTrue: [
			self elementsDo: [:each |
				each configuration: aConfiguration]].