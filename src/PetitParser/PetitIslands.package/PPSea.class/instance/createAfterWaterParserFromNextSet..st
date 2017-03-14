parsing
createAfterWaterParserFromNextSet: nextSet
	| set p |
	set := nextSet copy.
	set := self filterOutNextSet: set.

	(set anySatisfy: [ :e | e acceptsEpsilon  ]) ifTrue: [ 
		set := set collect: [ :e | e acceptsEpsilon ifTrue: [ e nonEmpty ] ifFalse: [ e ]].
		set add: PPEndOfFileParser new.
	].
	
	set := set reject: [ :e | e class = PPFailingParser ].
		
	p := (PPChoiceParser withAll: set) and.
	^ PPWater on: p waterToken: water