adding
addPoint: geoPoint value: aValue

	| el |
	el := self elementOn: aValue.
	el translateTo: (self translateGeoPositionToPixels: geoPoint).
	el @ RTPopup.
	view add: el.
	
	"We keep track of the added elements"
	addedElements add: el