hooks
normalizer
	"
	:: Void->RTMetricNormalizer
	
	This metric normalizer assumes that elements have been already created. Which may not be the case...
	"
	^ super normalizer elements: addedElements; yourself