operations
opposite
	"If this property is a memberEnd of a binary association, then opposite gives the other end."
	
	"{OCL} result = (if association <> null and association.memberEnd->size() = 2
then
    association.memberEnd->any(e | e <> self)
else
    null
endif)"
	
	^ (association isNotNil and: [ association memberEnds size = 2 ])
		ifTrue: [ association memberEnds detect: [ :each | (each = self) not ] ]
