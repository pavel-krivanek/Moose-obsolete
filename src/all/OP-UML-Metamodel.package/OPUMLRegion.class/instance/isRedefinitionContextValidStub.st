operations - stubs
isRedefinitionContextValidStub
	"The query isRedefinitionContextValid() specifies whether the redefinition contexts of a Region are properly related to the redefinition contexts of the specified Region to allow this element to redefine the other. The containing StateMachine or State of a redefining Region must Redefine the containing StateMachine or State of the redefined Region."
	
	"{OCL} result = (if redefinedElement.oclIsKindOf(Region) then
  let redefinedRegion : Region = redefinedElement.oclAsType(Region) in
    if stateMachine->isEmpty() then
    -- the Region is owned by a State
      (state.redefinedState->notEmpty() and state.redefinedState.region->includes(redefinedRegion))
    else -- the region is owned by a StateMachine
      (stateMachine.extendedStateMachine->notEmpty() and
        stateMachine.extendedStateMachine->exists(sm : StateMachine |
          sm.region->includes(redefinedRegion)))
    endif
else
  false
endif)"
	
	self notYetImplemented
