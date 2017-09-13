operations - stubs
enclosingFragmentStub
	"This query returns a set including the enclosing InteractionFragment this MessageEnd is enclosed within."
	
	"{OCL} result = (if self->select(oclIsKindOf(Gate))->notEmpty() 
then -- it is a Gate
let endGate : Gate = 
  self->select(oclIsKindOf(Gate)).oclAsType(Gate)->asOrderedSet()->first()
  in
  if endGate.isOutsideCF() 
  then endGate.combinedFragment.enclosingInteraction.oclAsType(InteractionFragment)->asSet()->
     union(endGate.combinedFragment.enclosingOperand.oclAsType(InteractionFragment)->asSet())
  else if endGate.isInsideCF() 
    then endGate.combinedFragment.oclAsType(InteractionFragment)->asSet()
    else if endGate.isFormal() 
      then endGate.interaction.oclAsType(InteractionFragment)->asSet()
      else if endGate.isActual() 
        then endGate.interactionUse.enclosingInteraction.oclAsType(InteractionFragment)->asSet()->
     union(endGate.interactionUse.enclosingOperand.oclAsType(InteractionFragment)->asSet())
        else null
        endif
      endif
    endif
  endif
else -- it is a MessageOccurrenceSpecification
let endMOS : MessageOccurrenceSpecification  = 
  self->select(oclIsKindOf(MessageOccurrenceSpecification)).oclAsType(MessageOccurrenceSpecification)->asOrderedSet()->first() 
  in
  if endMOS.enclosingInteraction->notEmpty() 
  then endMOS.enclosingInteraction.oclAsType(InteractionFragment)->asSet()
  else endMOS.enclosingOperand.oclAsType(InteractionFragment)->asSet()
  endif
endif)"
	
	self notYetImplemented
