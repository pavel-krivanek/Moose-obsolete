tests
testAsMooseDescriptionAttributes
	| fc ft |
	fc := FAMIXClass asMooseDescription.
	ft := FAMIXType asMooseDescription.
	self assert: (ft attributes anySatisfy: [:each | each name = #methods]).
	self assert: (fc allAttributes anySatisfy: [:each | each name = #methods])