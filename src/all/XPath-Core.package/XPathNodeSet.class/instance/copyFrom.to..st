copying
copyFrom: aStartIndex to: anEndIndex
	"copies that don't add or replace keep sort order"
	^ (super
		copyFrom: aStartIndex
		to: anEndIndex) sortOrder: self sortOrder