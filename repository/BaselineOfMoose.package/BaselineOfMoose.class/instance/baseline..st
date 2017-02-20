baseline
baseline: spec 
    
	<baseline>
       
	spec for: #common do: [
		spec preLoadDoIt: #'preload:package:'.
		spec postLoadDoIt: #'postload:package:'.
		
		spec package: 'Grease-Core'.
		spec package: 'Grease-Pharo30-Core'.
		spec package: 'Magritte-Model'.
		spec package: 'Magritte-Pharo3-Model'.
		spec package: 'Magritte-Tests-Model'.
		spec package: 'Magritte-Tests-Pharo-Model'.
		spec package: 'Magritte-Morph'.
		spec package: 'Hashtable'.
		spec package: 'StateSpecs-Specs'.
		spec package: 'StateSpecs-DSL-ShouldExpressions'.
		spec package: 'StateSpecs-DSL-ClassWords'.
		spec package: 'StateSpecs-Help'.
		spec package: 'StateSpecs-Specs-Tests'.
		spec package: 'StateSpecs-DSL-ShouldExpressions-Tests'.
		spec package: 'StateSpecs-DSL-ClassWords-Tests'.
		spec package: 'Phexample'.
		spec package: 'Fame-Core'.
		spec package: 'Fame-Util'.
		spec package: 'Fame-ImportExport'.
		spec package: 'Fame-SmalltalkBinding'.
		spec package: 'Fame-Tests-Core'.
		"spec package: 'Moose-Tests-Algos-Graph'."
		spec package: 'GT-Examples'.
		spec package: 'GT-Examples-UI'.
		spec package: 'GT-Examples-Dummies'.
		spec package: 'GT-Examples-Examples'.
		spec package: 'GT-Tests-Examples'.
		spec package: 'DeepTraverser'.
		spec package: 'RoelTyper'.
		spec package: 'Moose-Query'.
		spec package: 'Moose-Core'.
		spec package: 'Famix-Core'.
		spec package: 'Moose-Hismo'.
		spec package: 'Moose-HismoImporter'.
		spec package: 'Moose-Test-HismoImporter'.
		spec package: 'Famix-Extensions'.
		spec package: 'Famix-SourceAnchor'.
		
		"removed because of Smalltalk subset"
		"spec package: 'Famix-File'."
		
		spec package: 'Moose-GenericImporter'.
		
		"removed because of Smalltalk subset"
		"spec package: 'Famix-C'."
		
		spec package: 'Famix-Tests-C'.
		spec package: 'Famix-Implementation'.

		"removed because of Smalltalk subset"
		"spec package: 'Famix-Java'."
		
		spec package: 'Famix-Smalltalk'.
		spec package: 'Moose-Query-Extensions'.
		spec package: 'Moose-SmalltalkImporter'.
		spec package: 'Moose-MonticelloImporter'.
		spec package: 'Moose-Tests-Core'.
		spec package: 'Famix-Tests-Java'.
		spec package: 'Moose-Tests-SmalltalkImporter-LAN'.
		spec package: 'Moose-Tests-SmalltalkImporter-Core'.
		spec package: 'Moose-Tests-SmalltalkImporter-KGB'.
		spec package: 'Famix-Tests-Core'.
		spec package: 'Famix-Tests-Extensions'.
		spec package: 'Moose-TestResources-Reference-Core'.
		spec package: 'Moose-TestResources-Reference-PackageOne'.
		spec package: 'Moose-TestResources-Reference-PackageTwo'.
		spec package: 'Moose-TestResources-LAN'.
		spec package: 'Moose-TestResources-LCOM'.
		spec package: 'Moose-TestResources-KGB-P4FullInteracted'.
		spec package: 'Moose-TestResources-KGB-P6InteractedReferee'.
		spec package: 'Moose-TestResources-KGB-P5FullReferee'.
		spec package: 'Moose-TestResources-KGB-P1FullReferencer'.
		spec package: 'Moose-TestResources-KGB-P2InteractedReferencerReferee'.
		spec package: 'Moose-TestResources-KGB-P3InteractedReferencer'.
		spec package: 'Moose-TestResources-KGB-P7ReferencerReferee'.
		spec package: 'Moose-TestResources-KGB-P8FullReferencer'.
		spec package: 'Moose-TestResources-KGB-P9FullReferencer'.
		spec package: 'Moose-TestResources-KGB-P10InteractedReferee'.
		spec package: 'Moose-TestResources-KGB-P11FullReferee'.
		spec package: 'Moose-TestResources-KGB-P12FullReferencer'.
		spec package: 'Moose-TestResources-KGB-P13FullReferencer'.
		spec package: 'Moose-TestResources-KGB-P14FullReferee'.
		spec package: 'Moose-TestResources-KGB-PExtensions'.
		spec package: 'Moose-TestResources-PackageBlueprint-P1'.
		spec package: 'Moose-TestResources-PackageBlueprint-P2'.
		spec package: 'Moose-TestResources-PackageBlueprint-P3'.
		spec package: 'Moose-TestResources-PackageBlueprint-P4'.
		spec package: 'Moose-Tests-MonticelloImporter'.
		spec package: 'Moose-Query-Test'.
		spec package: 'PetitParser'.
		spec package: 'Glamour-Presentations'.
		spec package: 'Glamour-Morphic-Brick'.
		spec package: 'Glamour-Morphic-Widgets'.
		spec package: 'Glamour-Morphic-Renderer'.
		spec package: 'Glamour-Morphic-Pager'.
		spec package: 'Glamour-Tests-Morphic'.
		spec package: 'Morphic-Widgets-FastTable'.
		spec package: 'Glamour-FastTable'.
		spec package: 'Glamour-Magritte-Presentations'.
		spec package: 'PetitParser2'.
		spec package: 'PetitParser2-Tests'.
		spec package: 'PetitParser2-Backtracking'.
		spec package: 'PetitParser2-Tutorial'.
		spec package: 'PetitParser2-Validation'.
		spec package: 'PetitParser2-Backtracking-Tests'.
		spec package: 'PetitParser2-Validation-Tests'.
		spec package: 'PetitParser2-Benchmarks'.
		spec package: 'PetitParser2-Smalltalk'.
		spec package: 'PetitParser2-Smalltalk-Tests'.
		spec package: 'PetitParser2-Html'.
		spec package: 'PetitParser2-Html-Tests'.
		spec package: 'PetitParser2-CSV'.
		spec package: 'PetitParser2-JSON'.
		spec package: 'PetitParser2-MSE'.
		spec package: 'PetitParser2-ManifestMf'.
		spec package: 'Geometry'.
		spec package: 'Neo-JSON-Core'.
		spec package: 'Neo-JSON-Tests'.
		spec package: 'Athens-SVG'.
		spec package: 'Trachel'.
		spec package: 'Roassal2'.
		spec package: 'Roassal2Spec'.
		spec package: 'Roassal2GT'.
		spec package: 'Roassal2-Rules'.
		spec package: 'GT-Setup'.
		spec package: 'GT-Inspector'.
		"spec package: 'GT-InspectorExtensions-Core'."
		spec package: 'GT-Debugger'.
		spec package: 'GT-DebuggerExtensions'.
		spec package: 'GT-InspectorExtensions-CoreRoassal'.
		spec package: 'GT-GlamourDebugger'.
		spec package: 'GT-EventRecorder'.
		spec package: 'GT-Window-EventRecorder'.
		spec package: 'Beacon-Core'.
		spec package: 'Beacon-Core-GT'.
		spec package: 'Beacon-Core-Tests'.
		spec package: 'PetitParser2-GUI'.
		spec package: 'PetitParser2-GUI-Tests'.
		spec package: 'PetitParser2-Benchmarks-GUI'.
		
		spec 
			package: 'Moose-Algos-Graph' ;
			package: 'Moose-Tests-Algos-Graph' ;
			package: 'Moose-Algos-HierarchicalGraph';
			package: 'Moose-Tests-Algos-HierarchicalGraph' ;
			package: 'Moose-Tests-Algos-InformationRetrieval' ;
			package: 'Moose-Algos-FormalConceptAnalysis';
			package: 'Moose-Tests-Algos-FormalConceptAnalysis';
			package: 'Moose-Algos-Lattice';
			package: 'Moose-Tests-Algos-Lattice';
			package: 'Moose-Algos-LinearAlgebra';
			package: 'Moose-Tests-Algos-LinearAlgebra' ;
			package: 'Moose-Algos-Clustering';
			package: 'Moose-Algos-InformationRetrieval';
			package: 'Moose-Tests-Algos-Clustering';
			package: 'Moose-Algos-Kontractor';
			package: 'Moose-Tests-Algos-Kontractor' ;
			package: 'Moose-Algos-GraphObjectTraverser'.
		
		spec package: 'SmallDude-Utils'.
		spec package: 'PetitSQLite-Parser'.
		spec package: 'Collections-OrderPreservingDictionary'.
		spec package: 'Collections-OrderPreservingDictionary-GTExtensions'.
		spec package: 'XML-Writer-Core'.
		spec package: 'XML-Writer-Tests'.
		spec package: 'Collections-BitmapCharacterSet'.
		spec package: 'XML-Parser'.
		spec package: 'XML-Tests-Parser'.
		spec package: 'XML-Parser-GTExtensions'.
		spec package: 'XPath-Core'.
		spec package: 'XPath-SqueakCommonCompatibility'.
		spec package: 'XPath-Tests'.
		spec package: 'Merlin'.
		spec package: 'Glamour-Tools'.
		spec package: 'Arki-Reporter-Core'.
		spec package: 'Arki-Reporter-Browser'.
		spec package: 'Arki-Tests-Reporter'.
		spec package: 'OnMoose-Report'.
		
		"removed because of Smalltalk subset"
		"spec package: 'Dynamix-Core'.
		spec package: 'Dynamix-Tests-Core'."
		
		
		"spec package: 'PetitJava'."
		spec package: 'SmaCC_Runtime'.
		spec package: 'SmaCC_Line_Parser'.
		spec package: 'SmaCC_GLR_Runtime'.
		spec package: 'SmaCC_Javascript_Parser'.
		spec package: 'SmaCC_Java'.
		spec package: 'SmaCC_Generic_Smalltalk_Parser'.
		spec package: 'SmaCC_CSharp'.
		spec package: 'SmaCC_Delphi'.
		spec package: 'SmaCC_Delphi_Forms'.
		spec package: 'SmaCC_C_Parser'.
		spec package: 'SmaCC_CSV_Parser'.
		spec package: 'SmaCC_Smalltalk_Parser'.
		spec package: 'SmaCC_Source_Editing'.
		spec package: 'SmaCC_Rewrite_Engine'.
		spec package: 'SmaCC_Rewrite_Engine_Tests'.
		spec package: 'SmaCC_Swift'.
		spec package: 'SmaCC_Debugging_Support'.
		spec package: 'SmaCC_Development'.
		spec package: 'SmaCC_Development_UI'.
		spec package: 'SmaCC_Parse_Tree_Comparison'.
		spec package: 'SmaCC_Rewrite_Engine_Command_Line'.
		spec package: 'SmaCC_Rewrite_Engine_UI'.
		spec package: 'SmaCC_Rewrite_Server'.
		spec package: 'SmaCC_Rewrite_Server_Worker'.
		spec package: 'SmaCC_Tests'.
		spec package: 'ZeroConf'.
		spec package: 'Moose-Help'.

		spec package: 'ACD-Model'.
		spec package: 'ACD-Glamour-Interface'.
		spec package: 'CollectionExtensions'.
		spec package: 'Factorial-Language'.
		spec package: 'Fame-Example'.
		spec package: 'GT-Debugger-EventRecorder'.
		spec package: 'GT-Tests-Release'.
		spec package: 'Glamour-Examples-Extras'.
		spec package: 'Metanool-Core'.
		spec package: 'Metanool-Tests-Core'.
		spec package: 'Moose-Development-Tools'.
		spec package: 'Moose-DistributionMap'.
		spec package: 'Moose-Finder'.
		spec package: 'Moose-RoassalPaintings'.
		spec package: 'Moose-Settings'.
		spec package: 'Moose-Tests-DistributionMap'.
		spec package: 'Moose-Tests-Finder'.
		spec package: 'Moose-Tests-RoassalPaintings'.
		spec package: 'Moose-Wizard'.
		spec package: 'PetitTests'.
		spec package: 'PetitAnalyzer'.
		spec package: 'PetitCSV'.
		spec package: 'PetitGui'.
		spec package: 'PetitIndent'.
		spec package: 'PetitIslands'.
		spec package: 'PetitJson'.
		spec package: 'PetitMSE'.
		spec package: 'PetitManifestMf'.
		spec package: 'PetitRegex'.
		spec package: 'PetitSQLite-AST'.
		"spec package: 'PetitSQLite-Tests-Parser'."
		spec package: 'PetitSmalltalk'.
		spec package: 'PetitXml'.
		spec package: 'PetitXPath'.
		spec package: 'PetitYAML'.
		"spec package: 'SmallDude-Core'.
		spec package: 'SmallDude-Moose'.
		spec package: 'SmallDude-Species'.
		spec package: 'SmallDude-Tests-Core'.
		spec package: 'SmallDude-Tests-Text'.
		spec package: 'SmallDude-Text'."
		spec package: 'GT-PetitParserDebugger'.

	   self groups: spec.
	].