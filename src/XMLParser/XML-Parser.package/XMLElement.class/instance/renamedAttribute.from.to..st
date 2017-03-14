notifying
renamedAttribute: anAttribute from: anOldName to: aNewName
	self attributeNodes	
		renamedAttribute: anAttribute
		from: anOldName
		to: aNewName.
	self validateAttributeNamespacePrefixes.