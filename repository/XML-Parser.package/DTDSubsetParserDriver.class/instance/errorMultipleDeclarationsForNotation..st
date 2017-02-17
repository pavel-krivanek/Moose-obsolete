private
errorMultipleDeclarationsForNotation: aName
	"Unlike redundant entity declarations which are just ignored,
	redundant notation declarations are invalid"
	XMLValidationException
		formatSignal: 'Multiple declarations for notation "{1}"'
		with: aName