copying
copyWithout: anObject
	"copies that don't add or replace keep sort order"
	^ (super copyWithout: anObject) sortOrder: self sortOrder