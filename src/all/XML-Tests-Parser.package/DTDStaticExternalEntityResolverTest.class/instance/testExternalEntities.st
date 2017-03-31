tests
testExternalEntities
	| resolver replacementAssociation |

	resolver := self newResolver.
	self
		assert: resolver externalEntities class == Dictionary;
		assert: resolver externalEntities isEmpty.

	resolver externalEntities: self entityAssociations.
	self assert: resolver externalEntities = self entityDictionary.

	replacementAssociation := 'new.ent' asXMLURI -> self newEntityReplacement.
	resolver externalEntities: (Array with: replacementAssociation).
	self assert: resolver externalEntities = (Dictionary with: replacementAssociation).

	resolver := self resolverClass externalEntities: self entityAssociations.
	self
		assert: resolver class == self resolverClass;
		assert: resolver externalEntities = self entityDictionary.