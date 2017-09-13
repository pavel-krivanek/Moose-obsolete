operations - stubs
allIncludedUseCasesStub
	"The query allIncludedUseCases() returns the transitive closure of all UseCases (directly or indirectly) included by this UseCase."
	
	"{OCL} result = (self.include.addition->union(self.include.addition->collect(uc | uc.allIncludedUseCases()))->asSet())"
	
	self notYetImplemented
