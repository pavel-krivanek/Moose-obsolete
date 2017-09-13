operations - stubs
isDistinguishableFromStub
	"The query isDistinguishableFrom() determines whether two BehavioralFeatures may coexist in the same Namespace. It specifies that they must have different signatures."
	
	"{OCL} result = ((n.oclIsKindOf(BehavioralFeature) and ns.getNamesOfMember(self)->intersection(ns.getNamesOfMember(n))->notEmpty()) implies
  Set{self}->including(n.oclAsType(BehavioralFeature))->isUnique(ownedParameter->collect(p|
  Tuple { name=p.name, type=p.type,effect=p.effect,direction=p.direction,isException=p.isException,
              isStream=p.isStream,isOrdered=p.isOrdered,isUnique=p.isUnique,lower=p.lower, upper=p.upper }))
  )"
	
	self notYetImplemented
