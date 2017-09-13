operations - stubs
isRedefinitionContextValidStub
	"The query isRedefinitionContextValid() specifies whether the redefinition contexts of a State are properly related to the redefinition contexts of the specified State to allow this element to redefine the other. This means that the containing Region of a redefining State must redefine the containing Region of the redefined State."
	
	"{OCL} result = (if redefinedElement.oclIsKindOf(State) then
  let redefinedState : State = redefinedElement.oclAsType(State) in
    container.redefinedElement.oclAsType(Region)->exists(r:Region |
      r.subvertex->includes(redefinedState))
else
  false
endif)"
	
	self notYetImplemented
