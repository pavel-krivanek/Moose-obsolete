initialize
initializeWith: aMooseModel

	mooseModel := aMooseModel.
	moView := RTMondrian new.
	metrics := aMooseModel overviewPyramidMetrics.
	self treesholdsToUse: (self class treesholdForModel: aMooseModel).
	self initializeRectangles.