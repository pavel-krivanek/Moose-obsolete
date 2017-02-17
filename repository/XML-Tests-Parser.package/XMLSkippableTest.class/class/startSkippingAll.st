skipping
startSkippingAll
	self startSkipping.
	self allSubclassesDo: [:each | each startSkipping]