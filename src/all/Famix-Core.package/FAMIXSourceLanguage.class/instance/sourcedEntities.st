accessing
sourcedEntities
	"Returns the list of entities associated to the source language. Useful when you have multiple languages projects and need to query them."
	
	<MSEProperty: #sourcedEntities type: #FAMIXSourcedEntity opposite: #declaredSourceLanguage> <multivalued> <derived>
	<MSEComment: 'References to the entities saying explicitly that are written in this language.'>

	^ sourcedEntities