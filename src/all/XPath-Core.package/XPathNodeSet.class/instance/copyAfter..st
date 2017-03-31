copying
copyAfter: anObject
	"copies that don't add or replace keep sort order"
	^ (super copyAfter: anObject) sortOrder: self sortOrder