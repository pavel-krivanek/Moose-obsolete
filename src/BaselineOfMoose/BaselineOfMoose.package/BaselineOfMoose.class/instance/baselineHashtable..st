baseline
baselineHashtable: spec 
    
	#(
		'Hashtable'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #HashTable) ]]
