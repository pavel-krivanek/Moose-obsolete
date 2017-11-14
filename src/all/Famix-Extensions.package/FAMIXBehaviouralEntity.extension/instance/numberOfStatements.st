*Famix-Extensions
numberOfStatements
	<MSEProperty: #numberOfStatements type: #Number>
	<MSEComment: 'The number of statements in a method'>
	^ self
		lookUpPropertyNamed: #numberOfStatements
		computedAs: [ self mooseModel isSmalltalk
				ifTrue: [ | parser |
					parser := RBVisitorForFAMIXMetrics new.
					parser processMethod: self usingImporter: nil inModel: nil.
					parser numberOfStatements ]
				ifFalse: [ self notExistentMetricValue ] ]