testing
isExternal
	"Definition: An external markup declaration is defined as a markup
	declaration occurring in the external subset or in a parameter entity
	(external or internal, the latter being included because non-validating
	processors are not required to read them)"

	"returning #isParameter instead of 'self currentEntity notNil'
	ensures the correct result when parsing content"
	^ self currentEntity
		ifNil: [false]
		ifNotNil: [:entity | entity isParameter]