operations - stubs
allActionsStub
	"Return only this ConditionalNode. This prevents Actions within the ConditionalNode from having their OutputPins used as bodyOutputs or decider Pins in containing LoopNodes or ConditionalNodes."
	
	"{OCL} result = (self->asSet())"
	
	self notYetImplemented
