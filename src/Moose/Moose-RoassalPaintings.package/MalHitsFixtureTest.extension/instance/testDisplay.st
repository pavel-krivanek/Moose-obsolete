*Moose-RoassalPaintings-Test
testDisplay

	MalGraphFixture complexCycleGraph: hits.
	self shouldnt: [(hits run; display) delete] raise: Error.