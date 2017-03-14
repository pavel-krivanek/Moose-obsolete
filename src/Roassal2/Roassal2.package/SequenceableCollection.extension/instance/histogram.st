*roassal2-core
histogram
	"Plot the histrogram (distribution) of the numerical values given the metric block or symbol on my elements.
	#('yes' 'no' 'no' 'yes' 'yes' 'maybe' 'maybe' 'yes') histogram
	#(5 6 5 6 4 2 10 10 10 10) histogram
	(RTShape withAllSubclasses) histogram: #numberOfMethods
	"
	^ self histogram: #yourself.
