hooks
doExportToFull: fileName

	RTSVGExporter 
		exportBuilderAsSVG: self roassalView
		filename: fileName asAbsolute