operations - stubs
contextStub
	"A Behavior that is directly owned as a nestedClassifier does not have a context. Otherwise, to determine the context of a Behavior, find the first BehavioredClassifier reached by following the chain of owner relationships from the Behavior, if any. If there is such a BehavioredClassifier, then it is the context, unless it is itself a Behavior with a non-empty context, in which case that is also the context for the original Behavior. "
	
	"{OCL} result = (if nestingClass <> null then
    null
else
    let b:BehavioredClassifier = self.behavioredClassifier(self.owner) in
    if b.oclIsKindOf(Behavior) and b.oclAsType(Behavior)._'context' <> null then 
        b.oclAsType(Behavior)._'context'
    else 
        b 
    endif
endif
        )"
	
	self notYetImplemented
