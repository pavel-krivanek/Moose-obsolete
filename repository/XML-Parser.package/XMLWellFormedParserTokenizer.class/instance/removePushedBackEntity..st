entity replacing
removePushedBackEntity: aPushedBackEntity
	self pushedBackEntities remove: aPushedBackEntity.
	driver currentEntity: self topPushedBackEntity.
	aPushedBackEntity isExternal
		ifTrue: [
			self topPushedBackExternalEntity
				ifNil: [
					driver baseURI: nil]
				ifNotNil: [:pushedBackExternalEntity |
					driver baseURI: pushedBackExternalEntity uri]].
	^ aPushedBackEntity poppedByTokenizer: self.