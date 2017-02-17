actions
importFromMSEStream: aStream 
	"Benchmarks
	Time millisecondsToRun: [ MooseModel new importFromMSEStream: (StandardFileStream readOnlyFileNamed: 'network3.mse') ].
	Time millisecondsToRun: [ MooseModel new importFromMSEStream: (StandardFileStream readOnlyFileNamed: 'moose.mse') ]. 178163 simon.denier 9/11/2009 12:29
	 23678 -> simon.denier 9/11/2009 11:36 - initial run
 	 21551 -> simon.denier 9/11/2009 12:18 - IdentityHashSet (reverted)
	 17560 -> simon_denier 9/21/2009 22:34 - removing metrics from MSE
	"
	| repository |
	repository := self class importFrom: aStream.
	self silentlyAddAll: repository elements.
	self entityStorage forRuntime