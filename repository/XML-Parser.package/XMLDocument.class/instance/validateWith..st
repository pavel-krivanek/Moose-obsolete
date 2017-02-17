validating
validateWith: aValidator
	"revalidate against a custom DTD or other validator"

	(XMLValidatingNodeVisitor validator: aValidator) visitDocument: self