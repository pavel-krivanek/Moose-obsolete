accessing
after: anOccurrenceSpecification
	"The OccurrenceSpecification referenced comes after the OccurrenceSpecification referenced by before."
	after := OPUMLToOneLink
		on: self identity
		update: #toBefores
		from: after
		to: anOccurrenceSpecification