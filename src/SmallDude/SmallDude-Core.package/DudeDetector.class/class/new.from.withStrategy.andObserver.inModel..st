initialize-release
new: entitySpecie from: entities withStrategy: strategyBlock andObserver: anObserver inModel: aModel
	| result |
	result := (self new
		mooseModel: aModel;
		compareStrategy: strategyBlock;
		observer: anObserver;
		yourself) initialize: entitySpecie from: entities.
	^ result