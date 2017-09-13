operations - stubs
isConsistentWithStub
	"The query isConsistentWith() specifies, for any two Operations in a context in which redefinition is possible, whether redefinition would be consistent. A redefining operation is consistent with a redefined operation if
it has the same number of owned parameters, and for each parameter the following holds:

- Direction, ordering and uniqueness are the same.
- The corresponding types are covariant, contravariant or invariant.
- The multiplicities are compatible, depending on the parameter direction."
	
	"pre: {OCL} redefiningElement.isRedefinitionContextValid(self)"
	"{OCL} result = (redefiningElement.oclIsKindOf(Operation) and
let op : Operation = redefiningElement.oclAsType(Operation) in
	self.ownedParameter->size() = op.ownedParameter->size() and
	Sequence{1..self.ownedParameter->size()}->
		forAll(i |  
		  let redefiningParam : Parameter = op.ownedParameter->at(i),
               redefinedParam : Parameter = self.ownedParameter->at(i) in
                 (redefiningParam.isUnique = redefinedParam.isUnique) and
                 (redefiningParam.isOrdered = redefinedParam. isOrdered) and
                 (redefiningParam.direction = redefinedParam.direction) and
                 (redefiningParam.type.conformsTo(redefinedParam.type) or
                     redefinedParam.type.conformsTo(redefiningParam.type)) and
                 (redefiningParam.direction = ParameterDirectionKind::inout implies
                         (redefinedParam.compatibleWith(redefiningParam) and
                         redefiningParam.compatibleWith(redefinedParam))) and
                 (redefiningParam.direction = ParameterDirectionKind::_'in' implies
                         redefinedParam.compatibleWith(redefiningParam)) and
                 ((redefiningParam.direction = ParameterDirectionKind::out or
                      redefiningParam.direction = ParameterDirectionKind::return) implies
                         redefiningParam.compatibleWith(redefinedParam))
		))"
	
	self notYetImplemented
