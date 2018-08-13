accessing - backend
cleanBehaviors

	| oldBehaviors |
	
	oldBehaviors := self ask behaviors.
	
	self backend forPackage cleanBehaviorsFor: self.
	
	oldBehaviors do: [ :each |
		self announcer behaviorRemoved: each ].
	
	self queryInterface resetBehaviorsDictionary.
