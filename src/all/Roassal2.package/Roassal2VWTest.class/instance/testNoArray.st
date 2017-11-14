tests
testNoArray
	| t ex |
	t := Roassal2VW new.
	ex := RoassalExporter new.
	ex packages: t packages.
	ex methods do: [ :met | 
		self deny: (self hasArraySelector: met) 
			description: 'Remove brackets {} from: ',met methodClass name,'>>#', met selector.
	 ] displayingProgress: [:met | 'Processing method: ', met selector ].