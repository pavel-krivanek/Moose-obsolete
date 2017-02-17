initialize-release
initialize: entitySpecie from: entityList and: strategyBlock andObserver: anObserver inModel: aModel 
	 
	self compareStrategy: strategyBlock. 
	self observer: anObserver. 
	^self initialize: entitySpecie from: entityList