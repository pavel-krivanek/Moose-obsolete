enumerating by reference version
selectBornLaterThanOrIn: aVersion
	
	^self
		selectBornIn: aVersion
		where: [:v1 :v2 | v1 >= v2]
		andLastSeenIn: aVersion
		where: [:v1 :v2 | v1 >= v2]