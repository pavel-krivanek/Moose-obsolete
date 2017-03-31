notifying
renamedAttribute: anAttribute from: anOldName to: aNewName
	self
		removeDuplicateOf: anAttribute
		notAt: (self indexOf: anAttribute)