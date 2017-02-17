validating
validateWith: aValidator
	"revalidate against a custom DTD or other validator"

	self document ifNotNil: [:document | document validateWith: aValidator]