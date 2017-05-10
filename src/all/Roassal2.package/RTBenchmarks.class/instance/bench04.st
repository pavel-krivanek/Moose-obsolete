benchmarking
bench04
	"Exercizing force layout"
	"
	self new bench04
	" 

	^ [ | b ds |
		b := RTGrapher new.
		ds := RTData new.
		ds points: (1 to: 20000).
		ds y: #yourself.
		b add: ds.
		b build ] timeToRun