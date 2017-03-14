*Famix-Extensions-private
computeNumberOfLinesOfCodeIfSmalltalk
	| parser |
	
	parser := RBVisitorForFAMIXMetrics new.
	parser processMethod: self usingImporter: nil inModel: nil.
	^ parser numberOfLinesOfCode