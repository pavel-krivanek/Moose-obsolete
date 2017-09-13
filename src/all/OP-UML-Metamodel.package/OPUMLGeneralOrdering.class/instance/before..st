accessing
before: anOccurrenceSpecification
	"The OccurrenceSpecification referenced comes before the OccurrenceSpecification referenced by after."
	before := OPUMLToOneLink
		on: self identity
		update: #toAfters
		from: before
		to: anOccurrenceSpecification