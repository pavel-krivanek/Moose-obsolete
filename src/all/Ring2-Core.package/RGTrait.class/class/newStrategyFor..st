instance creation
newStrategyFor: anRGEnvironment

	^ (self strategyClassForVersion: anRGEnvironment version) basicNew
