operations - stubs
isInsideCFStub
	"This query returns true if this Gate is attached to the boundary of a CombinedFragment, and its other end (if present) is inside of an InteractionOperator of the same CombinedFragment."
	
	"{OCL} result = (self.oppositeEnd()-> notEmpty() and combinedFragment->notEmpty() implies
let oppEnd : MessageEnd = self.oppositeEnd()->asOrderedSet()->first() in
if oppEnd.oclIsKindOf(MessageOccurrenceSpecification)
then let oppMOS : MessageOccurrenceSpecification
= oppEnd.oclAsType(MessageOccurrenceSpecification)
in combinedFragment = oppMOS.enclosingOperand.combinedFragment
else let oppGate : Gate = oppEnd.oclAsType(Gate)
in combinedFragment = oppGate.combinedFragment.enclosingOperand.combinedFragment
endif)"
	
	self notYetImplemented
