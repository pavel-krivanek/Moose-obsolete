running
setUp
	super setUp.
	emptyExporter := RTPNGExporter new.
	
	view := RTView new.
	exporter := RTPNGExporter new.
	exporter builder: view.