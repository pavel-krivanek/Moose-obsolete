accessing
declaredSourceLanguage: aSourceLanguage
	self privateState
		attributeAt: #declaredSourceLanguage
		put:
			(FMMultivalueLink
				on: self
				update: #sourcedEntities
				from: self declaredSourceLanguage
				to: aSourceLanguage)