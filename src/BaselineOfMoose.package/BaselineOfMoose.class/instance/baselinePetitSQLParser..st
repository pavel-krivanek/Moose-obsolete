baseline
baselinePetitSQLParser: spec 
    
	#(
		'PetitSQLite-AST'
 		"'PetitSQLite-Tests-Parser'"
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #PetitSQLParser) ]]
