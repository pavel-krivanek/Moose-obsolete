accessing
normalizer
	"
	:: Void->RTMetricNormalizer
	
	This metric normalizer assumes that elements have been already created. Which may not be the case...
	"

	metricNormalizer
		ifNil: [ metricNormalizer := self metricNormalizerClass new.
			metricNormalizer view: self view.
			metricNormalizer elements: self view elements ].
	^ metricNormalizer