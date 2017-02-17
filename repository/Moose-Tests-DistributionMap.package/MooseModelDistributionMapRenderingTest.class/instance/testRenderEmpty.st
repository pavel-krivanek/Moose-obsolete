tests
testRenderEmpty

	| dm |
	dm := DistributionMap new.
	self shouldnt: [ window := dm open ] raise: Error 