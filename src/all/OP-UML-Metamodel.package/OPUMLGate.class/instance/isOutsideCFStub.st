operations - stubs
isOutsideCFStub
	"This query returns true if this Gate is attached to the boundary of a CombinedFragment, and its other end (if present)  is outside of the same CombinedFragment."
	
	"{OCL} result = (self.oppositeEnd()-> notEmpty() and combinedFragment->notEmpty() implies
let oppEnd : MessageEnd = self.oppositeEnd()->asOrderedSet()->first() in
if oppEnd.oclIsKindOf(MessageOccurrenceSpecification) 
then let oppMOS : MessageOccurrenceSpecification = oppEnd.oclAsType(MessageOccurrenceSpecification)
in  self.combinedFragment.enclosingInteraction.oclAsType(InteractionFragment)->asSet()->
     union(self.combinedFragment.enclosingOperand.oclAsType(InteractionFragment)->asSet()) =
     oppMOS.enclosingInteraction.oclAsType(InteractionFragment)->asSet()->
     union(oppMOS.enclosingOperand.oclAsType(InteractionFragment)->asSet())
else let oppGate : Gate = oppEnd.oclAsType(Gate) 
in self.combinedFragment.enclosingInteraction.oclAsType(InteractionFragment)->asSet()->
     union(self.combinedFragment.enclosingOperand.oclAsType(InteractionFragment)->asSet()) =
     oppGate.combinedFragment.enclosingInteraction.oclAsType(InteractionFragment)->asSet()->
     union(oppGate.combinedFragment.enclosingOperand.oclAsType(InteractionFragment)->asSet())
endif)"
	
	self notYetImplemented
