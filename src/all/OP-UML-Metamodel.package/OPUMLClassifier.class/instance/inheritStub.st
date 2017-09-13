operations - stubs
inheritStub
	"The query inherit() defines how to inherit a set of elements passed as its argument.  It excludes redefined elements from the result."
	
	"{OCL} result = (inhs->reject(inh |
  inh.oclIsKindOf(RedefinableElement) and
  ownedMember->select(oclIsKindOf(RedefinableElement))->
    select(redefinedElement->includes(inh.oclAsType(RedefinableElement)))
       ->notEmpty()))"
	
	self notYetImplemented
