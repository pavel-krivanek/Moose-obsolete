adding
addUnparsedEntity: aName publicID: aPublicID systemID: aSystemID ndata: aNotation
	(self generalEntities includesKey: aName)
		ifTrue: [^ nil].
	^ self generalEntities
		at: aName
		put:
			(self unparsedEntities
				at: aName
				put:
					(DTDUnparsedEntity
						name: aName
						publicID: aPublicID
						systemID: aSystemID
						ndata: aNotation)).