operations - stubs
allActionsStub
	"Return only this LoopNode. This prevents Actions within the LoopNode from having their OutputPins used as bodyOutputs or decider Pins in containing LoopNodes or ConditionalNodes."
	
	"{OCL} result = (self->asSet())"
	
	self notYetImplemented
