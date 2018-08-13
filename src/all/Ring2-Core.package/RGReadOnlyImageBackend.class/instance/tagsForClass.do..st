behavior
tagsForClass: anRGBehavior do: aBlock

	| realClass |
	
	realClass := self realBehaviorFor: anRGBehavior.
	realClass tags do: [:tag | aBlock value: tag ]
