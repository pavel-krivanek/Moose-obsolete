copying
copyUpTo: anObject
	"copies that don't add or replace keep sort order"
	^ (super copyUpTo: anObject) sortOrderFrom: self