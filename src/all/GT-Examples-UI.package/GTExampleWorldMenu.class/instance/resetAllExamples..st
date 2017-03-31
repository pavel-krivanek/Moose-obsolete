private
resetAllExamples: aBuilder
	(lastItem := aBuilder item: 'Reset all examples')
		parent: #gte;
		action: [ self resetAllExamples ]