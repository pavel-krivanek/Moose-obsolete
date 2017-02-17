initialize-release
new: entitySpecie from: entities withStrategy: strategyBlock inModel: aModel 
	 
	^self 
		new: entitySpecie 
		from: entities 
		withStrategy: strategyBlock 
		andObserver: DudeObserver default 
		inModel: aModel