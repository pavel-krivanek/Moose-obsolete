*Famix-Extensions
numberOfMessageSends
	<MSEProperty: #numberOfMessageSends type: #Number>
	<derived>
	<MSEComment: 'The number of message from a method'>
	^ self
		lookUpPropertyNamed: #numberOfMessageSends
		computedAs: [ 
			self mooseModel isSmalltalk
				ifTrue: [ 
					| parser |
					parser := RBVisitorForFAMIXMetrics new.
					parser processMethod: self usingImporter: nil inModel: nil.
					parser numberOfMessageSends ]
				ifFalse: [ self notExistentMetricValue ] ]