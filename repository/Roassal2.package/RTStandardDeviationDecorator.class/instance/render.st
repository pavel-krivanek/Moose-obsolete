drawing-hooks
render
	| values average stdev from to |
	values := self datasetValues.
	"Standard Deviation requires at least two values."
	values size < 2
		ifTrue: [ ^ self ].
	average := values average.
	stdev := values stdev.
	from := builder getPixelPositionOf: builder minX @ (average + stdev).
	to := builder getPixelPositionOf: builder maxX @ (average + stdev).
	self lineFrom: from to: to.
	from := builder getPixelPositionOf: builder minX @ (average - stdev).
	to := builder getPixelPositionOf: builder maxX @ (average - stdev).
	self lineFrom: from to: to.
	shouldHaveLabel
		ifTrue: [ self label: (labelBlock rtValue: average) asString above: to ]