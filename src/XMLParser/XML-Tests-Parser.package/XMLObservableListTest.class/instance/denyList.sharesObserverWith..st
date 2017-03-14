assertions
denyList: aFirstList sharesObserverWith: aSecondList
	self deny:
		(aFirstList observer notNil
			and: [aFirstList observer == aSecondList observer])