benchmarking
bench03
	"Exercizing force layout"
	"
	self new bench03
	" 

	^ [ | b |
		b := RTMondrian new.
		b nodes: (1 to: 800).
		b edges connectFrom: [ :v | v // 2 ].
		b layout force.
		b build ] timeToRun