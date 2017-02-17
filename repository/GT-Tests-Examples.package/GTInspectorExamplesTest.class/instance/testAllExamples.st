tests
testAllExamples
	| examples |
	(examples := self allExamples)
		do: [ :exampleToTest | self checkAllPresentationsOf: exampleToTest returnValue ]
		displayingProgress: 'Running ', examples size asString, ' Examples for Inspector-Presentations'