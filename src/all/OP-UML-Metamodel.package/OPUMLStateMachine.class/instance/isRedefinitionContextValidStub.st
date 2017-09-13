operations - stubs
isRedefinitionContextValidStub
	"The query isRedefinitionContextValid() specifies whether the redefinition context of a StateMachine is properly related to the redefinition contexts of the specified StateMachine to allow this element to redefine the other. The context Classifier of a redefining StateMachine must redefine the context Classifier of the redefined StateMachine."
	
	"{OCL} result = (if redefinedElement.oclIsKindOf(StateMachine) then
  let redefinedStateMachine : StateMachine = redefinedElement.oclAsType(StateMachine) in
    self._'context'().oclAsType(BehavioredClassifier).redefinedClassifier->
      includes(redefinedStateMachine._'context'())
else
  false
endif)"
	
	self notYetImplemented
