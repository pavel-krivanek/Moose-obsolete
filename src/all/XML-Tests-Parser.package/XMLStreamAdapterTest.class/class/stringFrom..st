converting
stringFrom: aCollection
	"avoid asString for portability"
	^ String withAll: (aCollection collect: [:each | each asCharacter])