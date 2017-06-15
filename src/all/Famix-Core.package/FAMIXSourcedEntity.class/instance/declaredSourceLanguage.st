accessing
declaredSourceLanguage
	"VBU - Put in private state because it is not used and so take place in the memory"

	<MSEProperty: #declaredSourceLanguage type: #FAMIXSourceLanguage opposite: #sourcedEntities>
	<MSEComment: 'The declared SourceLanguage for the source code of this entity'>
	^ self privateState attributeAt: #declaredSourceLanguage ifAbsent: [  ]