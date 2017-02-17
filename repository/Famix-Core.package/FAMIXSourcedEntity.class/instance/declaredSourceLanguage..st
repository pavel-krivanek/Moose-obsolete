accessing
declaredSourceLanguage: aSourceLanguage
	declaredSourceLanguage := FMMultivalueLink 
		on: self
		update: #sourcedEntities
		from: self declaredSourceLanguage
		to: aSourceLanguage 