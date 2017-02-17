instance creation
newFrom: aCollection
	"for GS portability"
	^ self new
		addAll: aCollection;
		yourself	