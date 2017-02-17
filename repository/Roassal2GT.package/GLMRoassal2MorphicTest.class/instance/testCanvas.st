tests
testCanvas
	| composer roassalMorph |
	composer := GLMCompositePresentation new.
	composer roassal2 painting: [:view :input | view add: RTElement new].
	window := composer openOn: 42.

	roassalMorph := self find: TRMorph in: window.
	self assert: (roassalMorph isKindOf: TRMorph)