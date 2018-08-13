accessing - backend
cleanLocalMethods

	| oldMethods |
	
	oldMethods := self localMethods.

	self backend forBehavior cleanLocalMethodsFor: self.

	self cleanProtocols.
	
	oldMethods do: [ :each |
		self announcer methodRemoved: each ]
