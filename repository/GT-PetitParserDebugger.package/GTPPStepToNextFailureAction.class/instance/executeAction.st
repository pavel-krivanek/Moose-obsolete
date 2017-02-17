actions
executeAction

	self session
		stepUntil: (self isPPFailureFollowingPredicate) from: self startContext.
	(self session isActive and: [ 
		self isPPFailureFollowingPredicate matches: self session context ]) ifTrue: [ 
			self session 
				stepOver;
				stepOver;
				stepOver ]