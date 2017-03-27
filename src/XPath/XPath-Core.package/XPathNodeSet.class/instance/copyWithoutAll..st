copying
copyWithoutAll: aCollection
	"copies that don't add or replace keep sort order"
	^ (super copyWithoutAll: aCollection) sortOrder: self sortOrder