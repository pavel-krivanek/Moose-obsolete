exporting
run
	nb := 0.
	UIManager default
		displayProgress: 'Writing ' , printer stream localName
		from: 0
		to: self roots size
		during: [ :bar | 
			progBar := bar.
			lastUpdate := 0.
			self basicRun ]