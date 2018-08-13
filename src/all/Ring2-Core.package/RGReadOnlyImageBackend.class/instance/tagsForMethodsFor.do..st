method
tagsForMethodsFor: anRGBehavior do: aBlock

	(self realBehaviorFor: anRGBehavior) protocols do: aBlock
