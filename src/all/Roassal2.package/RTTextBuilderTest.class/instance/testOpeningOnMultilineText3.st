tests
testOpeningOnMultilineText3
	| text |
	text := (RTTextBuilderTest >> #testOpeningOnMultilineText3)
		sourceCode.
	builder addText: text.
	builder open close