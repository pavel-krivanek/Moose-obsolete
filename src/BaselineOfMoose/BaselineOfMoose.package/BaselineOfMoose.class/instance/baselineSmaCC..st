baseline
baselineSmaCC: spec 
    
	#(
		'SmaCC_Runtime'
		'SmaCC_Line_Parser'
		'SmaCC_GLR_Runtime'
		'SmaCC_Javascript_Parser'
		'SmaCC_Java'
		'SmaCC_Generic_Smalltalk_Parser'
		'SmaCC_CSharp'
		'SmaCC_Delphi'
		'SmaCC_Delphi_Forms'
		'SmaCC_C_Parser'
		'SmaCC_CSV_Parser'
		'SmaCC_Smalltalk_Parser'
		'SmaCC_Source_Editing'
		'SmaCC_Rewrite_Engine'
		'SmaCC_Rewrite_Engine_Tests'
		'SmaCC_Swift'
		'SmaCC_Debugging_Support'
		'SmaCC_Development'
		'SmaCC_Development_UI'
		'SmaCC_Parse_Tree_Comparison'
		'SmaCC_Rewrite_Engine_Command_Line'
		'SmaCC_Rewrite_Engine_UI'
		'SmaCC_Rewrite_Server'
		'SmaCC_Rewrite_Server_Worker'
		'SmaCC_Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #SmaCC) ]]
