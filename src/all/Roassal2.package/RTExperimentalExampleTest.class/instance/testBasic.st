tests
testBasic
	"Should not raise an error"
	| view |
	view := RTExperimentalExample new exampleClusterBezierAndSlider.
	view canvas buildMorph drawOnMockCanvas