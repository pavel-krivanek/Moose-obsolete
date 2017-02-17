private-utilities
createImportingContext
	<lint: 'String concatenation instead of streams' rationale: 'few concatenations' author: 'cyrille.delaunay'>
	"return an object ImportingContext coorresponding to the context selected by the user and the choice of merging or not classes and metaclasses "
	| tmpImportingContext importingContextClass contextSelected |
	importingContextClass := wizardInformations at: #importingContextClass.
	tmpImportingContext := importingContextClass  new.
	contextSelected := (wizardInformations at: #contextSelected).
	
	tmpImportingContext importAll: contextSelected .
	
	^ tmpImportingContext