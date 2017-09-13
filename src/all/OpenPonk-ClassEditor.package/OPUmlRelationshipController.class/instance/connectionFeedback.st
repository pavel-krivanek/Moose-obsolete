figures
connectionFeedback
	^ OPInteractiveLine new
		lineBuilder: [ :fromFigure :toFigure | RTLine edgeFrom: fromFigure to: toFigure ];
		from: sourceController figure