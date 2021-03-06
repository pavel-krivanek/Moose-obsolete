sources
exampleColoredAfrica03

	|b countries countriesName max cn|	
			b := RTMapBuilder new.	
		
	countries := RTMapBuilder africanPopulation.
	countriesName := countries collect: #first.
	max := (countries collect: [ :c | c at: 2 ]) max.
	
	cn := RTMultiLinearColor new
		colors: (RTColorPalette sequential colors: 8 scheme: 'GnBu');
		command: [ :aCountry | (countries detect: [ :c | c first = aCountry ]) second / max ].
	
	b countries: countriesName.
	b color: cn.
	b scale: 2.
	b build.
	^ b view