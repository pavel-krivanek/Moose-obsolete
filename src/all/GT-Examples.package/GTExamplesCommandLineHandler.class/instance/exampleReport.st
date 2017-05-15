private
exampleReport
	(self hasOption: 'junit-xml-output') ifTrue: [ ^ GTExamplesHDReport ].
	^ self error: 'only works for now for junit for now'