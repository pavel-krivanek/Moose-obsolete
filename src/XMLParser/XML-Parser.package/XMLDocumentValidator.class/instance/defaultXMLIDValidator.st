private
defaultXMLIDValidator
	"used to validate xml:id attributes if there's no DTD or other validators"
	^ defaultXMLIDValidator
		ifNil: [
			defaultXMLIDValidator :=
				XMLXMLIDAttributeValidator
					element: ''
					attribute: 'xml:id'
					defaultValidator:
						(XMLAttributeImpliedDefaultValidator attribute: 'xml:id').
			defaultXMLIDValidator
				elementIDValidator: XMLElementIDValidator new;
				yourself]