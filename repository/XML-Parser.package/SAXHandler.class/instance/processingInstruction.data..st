handling - content
processingInstruction: aTargetString data: aDataString
	"Handles processing instructions like '<?name value?>', where 'name' is
	the target and 'value' is the data.
	
	XML declarations may look like PIs but are different and are handled
	with xmlVersion:encoding:standalone: instead."