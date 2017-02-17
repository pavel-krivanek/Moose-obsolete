UI
addLabelsIfNecessary
	self wantsLabel ifFalse: [ ^ self ].
	self addLabels