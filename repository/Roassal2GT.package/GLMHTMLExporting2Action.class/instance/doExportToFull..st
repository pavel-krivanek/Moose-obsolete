hooks
doExportToFull: fileName
	RTHTML5Exporter new 
		directory: fileName parent;
		fileName: fileName basename; 
		export: self roassalView.
