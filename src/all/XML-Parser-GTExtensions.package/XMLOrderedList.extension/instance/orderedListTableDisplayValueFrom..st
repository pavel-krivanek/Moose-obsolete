*XML-Parser-GTExtensions
orderedListTableDisplayValueFrom: aValue
	"this may be overrided in the future in subclasses to return
	highlighted text objects when GT tables support it"
	^ aValue printString