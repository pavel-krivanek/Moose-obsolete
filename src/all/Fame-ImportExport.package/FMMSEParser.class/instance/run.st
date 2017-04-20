running
run
	UIManager default
		displayProgress: 'Parsing ' , self stream localName
		from: 1
		to: self stream size
		during: [ :bar | 
			progBar := bar.
			lastUpdate := 0.
			self basicRun ]