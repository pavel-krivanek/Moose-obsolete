operations - stubs
getOperandStub
	"If the Gate is an inside Combined Fragment Gate, this operation returns the InteractionOperand that the opposite end of this Gate is included within."
	
	"{OCL} result = (if isInsideCF() then
  let oppEnd : MessageEnd = self.oppositeEnd()->asOrderedSet()->first() in
    if oppEnd.oclIsKindOf(MessageOccurrenceSpecification)
    then let oppMOS : MessageOccurrenceSpecification = oppEnd.oclAsType(MessageOccurrenceSpecification)
        in oppMOS.enclosingOperand->asOrderedSet()->first()
    else let oppGate : Gate = oppEnd.oclAsType(Gate)
        in oppGate.combinedFragment.enclosingOperand->asOrderedSet()->first()
    endif
  else null
endif)"
	
	self notYetImplemented
