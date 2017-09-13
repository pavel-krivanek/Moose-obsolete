operations - stubs
behaviorStub
	"If the type of the object InputPin is a Behavior, then that Behavior. Otherwise, if the type of the object InputPin is a BehavioredClassifier, then the classifierBehavior of that BehavioredClassifier."
	
	"{OCL} result = (if object.type.oclIsKindOf(Behavior) then
  object.type.oclAsType(Behavior)
else if object.type.oclIsKindOf(BehavioredClassifier) then
  object.type.oclAsType(BehavioredClassifier).classifierBehavior
else
  null
endif
endif)"
	
	self notYetImplemented
