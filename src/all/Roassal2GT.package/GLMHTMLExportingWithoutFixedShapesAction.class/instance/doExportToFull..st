hooks
doExportToFull: fileName
	RTHTML5Exporter new 
		directory: fileName parent;
		fileName: fileName basename; 
		exportFixedShapes: false;
		export: self roassalView.
