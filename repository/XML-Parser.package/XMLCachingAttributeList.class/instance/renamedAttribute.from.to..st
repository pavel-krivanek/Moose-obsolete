notifying
renamedAttribute: anAttribute from: anOldName to: aNewName
	self attributeNodesByName
		removeKey: anOldName;
		at: aNewName ifPresent: [:duplicate |
			self
				removeDuplicateOf: anAttribute
				notAt: (self indexOf: anAttribute)];
		at: aNewName put: anAttribute