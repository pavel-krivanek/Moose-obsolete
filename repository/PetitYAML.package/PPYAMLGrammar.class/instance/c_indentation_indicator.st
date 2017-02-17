spec
c_indentation_indicator 
	^ #digit asParser >=> [ :context :cc |
		| digit |
		digit := cc value.
		digit isPetitFailure ifTrue: [ 
			digit := self autoDetect: context blockHeader: true.
		] ifFalse: [
			digit := digit asString asInteger.
		].
		context YAMLM: digit.
		digit
	]