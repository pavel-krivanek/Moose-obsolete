hooks
doExportToFull: fileName
	RTPNGExporter new
		withScale;
		builder: self roassalView;
		fileName: fileName fullName;
		exportToFile.