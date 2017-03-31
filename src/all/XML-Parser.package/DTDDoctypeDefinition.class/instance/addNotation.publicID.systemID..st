adding
addNotation: aName publicID: aPublicID systemID: aSystemID
	(self notations includesKey: aName)
		ifTrue: [^ nil].
	^ self notations
		at: aName
		put:
			(DTDNotation
				name: aName
				publicID: aPublicID
				systemID: aSystemID).