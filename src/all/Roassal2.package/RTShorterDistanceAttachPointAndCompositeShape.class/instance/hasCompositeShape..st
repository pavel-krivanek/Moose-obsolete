public - hooks
hasCompositeShape: anElement
	"A bit ugly here... But it greatly simplify the code"
	^ anElement trachelShape isKindOf: TRCompositeShape