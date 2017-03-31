validating
validate
	"revalidate against the DTD it was parsed with (if any)"

	self hasDoctypeDefinition
		ifTrue: [
			self doctypeDefinition
				removeElementIDReferences;
				removeElementIDs.
			self validateWith: self doctypeDefinition newValidator]