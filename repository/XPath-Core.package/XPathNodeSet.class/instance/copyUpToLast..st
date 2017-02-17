copying
copyUpToLast: anObject
	"copies that don't add or replace keep sort order"
	^ (super copyUpToLast: anObject) sortOrderFrom: self