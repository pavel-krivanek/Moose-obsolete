running
timedCopyModel: aMooseModel
	"
	self new timedCopyModel: MooseModel root second 
	"
	
	^ Time millisecondsToRun: [ (self copyModel: aMooseModel) inspect ]