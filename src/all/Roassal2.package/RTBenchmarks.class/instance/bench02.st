benchmarking
bench02
	"Exercizing Mondrian"
	"
	self new bench02
	" 

	^ [ | b |
		b := RTMondrian new.
		b nodes: (1 to: 800) forEach: [ :v |
			b nodes: (1 to: v )].
		b build ] timeToRun