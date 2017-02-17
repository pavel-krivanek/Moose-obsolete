actions
exportToMSEStream: aStream 
	"Benchmarks on Network packages
		Time millisecondsToRun: [ self exportToMSEStream: (StandardFileStream forceNewFileNamed: 'network.mse') ]
		34408ms -> simon.denier 9/11/2009 11:12 - initial run
		35527ms -> simon.denier 9/11/2009 11:51 - IdentityHashSet in FMRepository#elements, worse?
		rewind
		32236ms -> simon.denier 9/11/2009 17:46 - IdentityHashTable in FMRepositoryVisitor, a bit better but not much
		30963ms -> simon.denier 9/15/2009 12:28 - cache for roots (UI process)
		24661ms -> simon_denier 9/21/2009 22:32 - removing metrics from MSE
	"
	self class 
		export: self
		to: aStream