*Famix-Extensions
cyclomaticComplexity
	"	<property: #CYCLO longName: 'Cyclomatic complexity' description:
			'The number of linear-independent paths through a method.'>"

	<MSEProperty: #cyclomaticComplexity type: #Number>
	<MSEComment: 'The number of linear-independent paths through a method.'>
	^ self
		lookUpPropertyNamed: #cyclomaticComplexity
		computedAs: [ 
			"This is needed for providing backward compatibility to exporters that 
			use CYCLO as a property name"
			self
				lookUpPropertyNamed: #CYCLO
				computedAs: [ 
					self mooseModel isSmalltalk
						ifTrue: [ 
							| parser |
							parser := RBVisitorForFAMIXMetrics new.
							parser processMethod: self usingImporter: nil inModel: nil.
							parser cyclomaticNumber2 ]
						ifFalse: [ self notExistentMetricValue ] ] ]