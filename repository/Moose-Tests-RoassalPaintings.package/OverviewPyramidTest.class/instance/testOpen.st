tests
testOpen

	| model |
	model := self prepareAnyMooseModel.
	self shouldnt: (OverviewPyramid on: model) open delete raise: Error.