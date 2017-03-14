tests
testZoomingActionsWorkForView
	| composite |
	composite := GLMCompositePresentation new.
	composite roassal2.
	window := composite openOn: 42.
	self assert: composite first actions notEmpty.
	"these are the zooming actions"
	self shouldnt: (composite first actions first actOn: composite first) raise: Error.
	self shouldnt: (composite first actions second actOn: composite first) raise: Error.
	self shouldnt: (composite first actions third actOn: composite first) raise: Error
