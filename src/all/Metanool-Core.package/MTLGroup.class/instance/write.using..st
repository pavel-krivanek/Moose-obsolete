model
write: anObject using: aDescription
	"it traverses all entities and writes the value with description for each in the group"

	self group do: [ :each | each write: anObject using: aDescription ]