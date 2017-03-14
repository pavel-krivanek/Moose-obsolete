actions
importFromMSEStream: aStream filteredBy: anImportingContext
	
	| repository |
	repository := self class importFrom: aStream filteredBy: anImportingContext.
	repository elements do: [ :e | self add: e ].
	self entityStorage forRuntime