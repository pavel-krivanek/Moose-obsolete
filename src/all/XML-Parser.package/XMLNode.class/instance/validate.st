validating
validate
	"revalidate against the DTD it was parsed with (if any)"

	self document ifNotNil: [:document | document validate]