public
onGrapher: aGrapher callback: aOneArgBlock
	self setOnView: aGrapher view.
	"We need to make sure that the view knows about the grapher"
	aGrapher view attributeAt: #grapher put: aGrapher.
	aGrapher addDecorator: (RTRangeSelector new callback: aOneArgBlock)