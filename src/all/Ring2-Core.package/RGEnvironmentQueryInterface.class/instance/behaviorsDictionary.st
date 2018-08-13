caching
behaviorsDictionary

	^ behaviorsDictionary ifNil: [ 
		behaviorsDictionary := IdentityDictionary new.
		self behaviorsDo: [:each |
			behaviorsDictionary at: each name put: each ]. 
		behaviorsDictionary
		]