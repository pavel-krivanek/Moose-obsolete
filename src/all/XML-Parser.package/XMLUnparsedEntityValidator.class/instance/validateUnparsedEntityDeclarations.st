validating
validateUnparsedEntityDeclarations
	"this validation has to be delayed until the entire DTD
	is processed so unparsed entities can be declared before
	the notation they reference are"
	self unparsedEntities valuesDo: [:each |
		(self notations includesKey: each ndata)
			ifFalse: [
				self
					errorUndeclaredNotation: each ndata
					inEntity: each name]]