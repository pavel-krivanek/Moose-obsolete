buidling-models
buildRPG

	| builder |
	
	builder := FMPragmaProcessor new.
	builder queue: (OrderedCollection new
		add: RPGDragon;
		add: RPGHero;
		add: RPGTreasure;
		yourself).
	builder run.
	^ builder asMetamodel 