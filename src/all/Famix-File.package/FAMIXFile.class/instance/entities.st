accessing
entities
	"a file such as a C file or a Java file contain one or more conceptual entities.
	For a C file the entity will be an implementation entity containing all the C functions.
	For a Java file, the entities are classes defined in a file.
	any container entity can be added to the list of entities
"

	<MSEProperty: #entities type: #FAMIXSourcedEntity opposite: #containerFiles>
	<multivalued>
	<MSEComment: 'List of entities defined in the file'>
	^ entities