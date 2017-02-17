copying
copyAfterLast: anObject
	"copies that don't add or replace keep sort order"
	^ (super copyAfterLast: anObject) sortOrderFrom: self