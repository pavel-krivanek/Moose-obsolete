baseline
baselineOpenPonkClassEditor: spec 
    
	#(
		'FileDialog'
		'FileDialog-Tests'
		
		'OpenPonk-Model'
		'OpenPonk-Core'
		'OpenPonk-Trachel'
		'OpenPonk-Roassal2'
		'OpenPonk-Spec'

		'OpenPonk-UML-DI'
		
		'OP-UML-Meta'
		'OP-UML-Metamodel'

		'OpenPonk-ClassEditor'

		'Moose-MetamodeEditor'
		
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #all) ]]
