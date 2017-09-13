accessing
isFinalSpecialization
	"If true, the Classifier cannot be specialized."
	^ isFinalSpecialization ifNil: [ isFinalSpecialization := false ]