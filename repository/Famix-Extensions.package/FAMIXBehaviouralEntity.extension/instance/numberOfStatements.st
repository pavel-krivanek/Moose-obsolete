*Famix-Extensions
numberOfStatements
	<MSEProperty: #numberOfStatements type: #Number>
	<MSEComment: 'The number of statements in a method'>
	^ self
		lookUpPropertyNamed: #numberOfStatements
		computedAs: [ 
			"This is needed for providing backward compatibility to exporters that 
			use NOS as a property name"
			self
				lookUpPropertyNamed: #NOS
				computedAs: [ 
					self mooseModel isSmalltalk
						ifTrue: [ 
							| parser |
							parser := RBVisitorForFAMIXMetrics new.
							parser processMethod: self usingImporter: nil inModel: nil.
							parser numberOfStatements ]
						ifFalse: [ self notExistentMetricValue ] ] ]