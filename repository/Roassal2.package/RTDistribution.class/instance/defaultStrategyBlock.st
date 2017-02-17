public
defaultStrategyBlock
	"This block define which bucket to store in, a given number"
	self strategyBlock: 
		[ :obj |
			|number|
			number := (self metric rtValue: obj).
			number = self numberMax
				ifTrue: self nbOfIntervals
				ifFalse: [ ((number - self numberMin) / self interval) floor + 1] 
				].