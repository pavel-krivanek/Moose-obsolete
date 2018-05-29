"
rce: 22987863
"
Class {
	#name : #BaselineOfMoose,
	#superclass : #BaselineOf,
	#category : #BaselineOfMoose
}

{ #category : #baseline }
BaselineOfMoose >> baseline: spec [ 
    
	<baseline> 
       
	| repository |

	repository := self packageRepositoryURL.

	spec for: #common do: [ 
		spec preLoadDoIt: #'preload:package:'.
		spec postLoadDoIt: #'postload:package:'.
		
		"self baselinePharoOverrides: spec. "
		
		#(	
			'WebBrowser-Core'
		) do: [ :packageName | 
			(SystemVersion current major < 7) ifTrue: [
			  spec package: packageName with: [ spec repository: (self url: #WebBrowser) ]]].
		

		self baselineGrease: spec. 
		self baselineMagritte3: spec.
		self baselineHashtable: spec.
		self baselineStateSpecs: spec.
		self baselinePhexample: spec.
		self baselineStatefulTraits: spec.
		self baselineGhost: spec.
		self baselineMocketry: spec.
		self baselineFame: spec.
		#(
			'GToolkit-Examples' 
			'GToolkit-Examples-Dummies' 
			'GToolkit-Examples-Extensions' 
			'GToolkit-Examples-Roassal2UI' 
			'GToolkit-Examples-UI' 
			'GToolkit-Tests-Examples'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #GToolkitExamples) ]].
		
		self baselineDeepTraverser: spec.
		self baselineRoelTyper: spec.
		self baselineRing2: spec.
		
		#(	
			'Moose-Core'
			'Moose-Query'
			'Moose-Query-Extensions'
			'Famix-MetamodelBuilder-Core'
			'Famix-MetamodelBuilder-Support'
			'Famix-MetamodelBuilder-Support'
			'Famix-MetamodelBuilder-Tests'
			
			'FamixNG-MetamodelGeneration'
			'FmxNG-Traits'	
				
			'FmxNG-BasicInfrastructure'
			
			'FmxNGCompatibility-Generator' 
			'FmxNGCompatibility-Entities'
			'FmxNGCompatibility-Groups'
			
			'CollectionExtensions'
			
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Moose) ]].		

		spec baseline: 'FmxNGCompatibility' with: [spec repository: repository].
		
		#(	
			'Famix-Core'
			'Famix-Compatibility'
			'Moose-Hismo'
			'Moose-HismoImporter'
			'Moose-Test-HismoImporter'
			'Famix-Extensions'
			'Famix-SourceAnchor'
			'Famix-File'
			'Moose-GenericImporter'
			'Famix-C'
			'Famix-Tests-C'
			'Famix-Implementation'
			'Famix-Java'
			'Famix-Smalltalk'
			'Moose-Query-Extensions'
			'Moose-SmalltalkImporter'
			'Moose-MonticelloImporter'
			'Moose-Tests-Core'
			'Famix-Tests-Java'
			'Moose-Tests-Hismo'
			'Moose-Tests-SmalltalkImporter-LAN'
			'Moose-Tests-SmalltalkImporter-Core'
			'Moose-Tests-SmalltalkImporter-KGB'
			'Famix-Tests-Core'
			'Famix-Tests-Extensions'
			'Moose-TestResources-Reference-Core'
			'Moose-TestResources-Reference-PackageOne'
			'Moose-TestResources-Reference-PackageTwo'
			'Moose-TestResources-LAN'
			'Moose-TestResources-LCOM'
			'Moose-TestResources-KGB-P4FullInteracted'
			'Moose-TestResources-KGB-P6InteractedReferee'
			'Moose-TestResources-KGB-P5FullReferee'
			'Moose-TestResources-KGB-P1FullReferencer'
			'Moose-TestResources-KGB-P2InteractedReferencerReferee'
			'Moose-TestResources-KGB-P3InteractedReferencer'
			'Moose-TestResources-KGB-P7ReferencerReferee'
			'Moose-TestResources-KGB-P8FullReferencer'
			'Moose-TestResources-KGB-P9FullReferencer'
			'Moose-TestResources-KGB-P10InteractedReferee'
			'Moose-TestResources-KGB-P12FullReferencer'
			'Moose-TestResources-KGB-P11FullReferee' "dependency"
			'Moose-TestResources-KGB-P13FullReferencer'
			'Moose-TestResources-KGB-P14FullReferee'
			'Moose-TestResources-KGB-PExtensions'
			'Moose-TestResources-PackageBlueprint-P1'
			'Moose-TestResources-PackageBlueprint-P2'
			'Moose-TestResources-PackageBlueprint-P3'
			'Moose-TestResources-PackageBlueprint-P4'
			'Moose-Tests-MonticelloImporter'
			'Moose-Query-Test'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Moose) ]].

		self baselineMetamodelBuilder: spec.
		self baselineFamixNG: spec.

		#(	
			'PetitParser'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #PetitParser) ]].

		#(	
			'Glamour-Presentations'
			'Glamour-Morphic-Brick'
			'Glamour-Morphic-Widgets'
			'Glamour-Morphic-Renderer'
			'Glamour-Morphic-Pager'
			'Glamour-Tests-Morphic'
			"'Morphic-Widgets-FastTable'"
			'Glamour-FastTable'
		) do: [ :packageName |
			(SystemVersion current major < 7) ifTrue: [
			  spec package: packageName with: [ spec repository: (self url: #Glamour) ]]].
		
		self baselinePetitParser2: spec.
		self baselineGeometry: spec.
		self baselineAthens: spec.
		self baselineRoassal2: spec.

		#(
			'GT-Setup'
			'GT-Inspector'
			"'GT-InspectorExtensions-Core'"
			'GT-Debugger'
			'GT-DebuggerExtensions'
			'GT-InspectorExtensions-CoreRoassal'
			'GT-GlamourDebugger'
			'GT-EventRecorder'
			'GT-Window-EventRecorder'
		) do: [ :packageName | 
			(SystemVersion current major < 7) ifTrue: [
			  spec package: packageName with: [ spec repository: (self url: #GToolkit)] ]].

		self baselineBeacon: spec.
		
		#(	
			'FuelBeacon'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #FuelBeacon) ]].
		
		
		self baselinePetitParser2GUI: spec.
		self baselineMooseAlgos: spec.

		#(
			 'SmallDude-Utils'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #SmallDude) ]].
		
		#(	
			'PetitSQLite-Parser'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #PetitSQLParser) ]].		
		
		self baselineOrderPreservingDictionary: spec.
		self baselineCollectionExtensions: spec.
		self baselineXMLWriter: spec.
		self baselineBitmapCharacterSet: spec.
		self baselineXMLParser: spec.
		self baselineXPath: spec.
		self baselineMerlin: spec.	

		#(	
			'Glamour-Tools'
			'Glamour-Magritte-Presentations'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Glamour) ]].

		self baselineArki: spec.
		self baselineDynaMoose: spec.
		self baselinePetitJava: spec.
		self baselineSmaCC: spec.
		self baselineZeroConf: spec.
		
		#(	
			'Moose-Help'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Moose) ]].
	
		self baselineAnnouncerCentricDebugger: spec.

		#(	
			'Factorial-Language'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #PetitParser) ]].

		#(	
			'Fame-Example'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Fame) ]].

		#(	
			'GT-Debugger-EventRecorder'
			'GT-Tests-Release'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #GToolkit) ]].

		#(	
			'Glamour-Examples-Extras'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Glamour) ]].

		self baselineMetanool: spec.
		
		#(	
			'Moose-Development-Tools'
			'Moose-DistributionMap'
			'Moose-Finder'
			'Moose-RoassalPaintings'
			'Moose-Settings'
			'Moose-Tests-DistributionMap'
			'Moose-Tests-Finder'
			'Moose-Tests-RoassalPaintings'
			'Moose-Wizard'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Moose) ]].

		self baselinePetitParser: spec.
		self baselinePetitSQLParser: spec.
		self baselineSmallDude: spec.
		
		#(	
			'GT-PetitParserDebugger'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #GToolkit) ]].


	   self groups: spec.
	]
]

{ #category : #baseline }
BaselineOfMoose >> baselineAnnouncerCentricDebugger: spec [ 
    
	#(	
		'ACD-Model'
		'ACD-Glamour-Interface'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #AnnouncerCentricDebugger) ]].

]

{ #category : #baseline }
BaselineOfMoose >> baselineArki: spec [ 
    
	#(
		'Arki-Reporter-Core'
		'Arki-Reporter-Browser'
		'Arki-Tests-Reporter'
		'OnMoose-Report'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Arki) ]]


]

{ #category : #baseline }
BaselineOfMoose >> baselineAthens: spec [ 
    
		#(
			 'Athens-SVG'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Athens) ]].


]

{ #category : #baseline }
BaselineOfMoose >> baselineBeacon: spec [ 
    
	#(
		'Beacon-Core'
		'Beacon-Core-GT'
		'Beacon-Core-Tests'
		'Beacon-File'
		'Beacon-Syslog'
		'Beacon-Zinc'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Beacon) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineBitmapCharacterSet: spec [ 
    
	#(
		'Collections-BitmapCharacterSet'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #BitmapCharacterSet) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineCollectionExtensions: spec [ 
    
	#(
		'CollectionExtensions'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #CollectionExtensions) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineDeepTraverser: spec [ 
    
	#(
		 'DeepTraverser'
		 'DeepTraverser-Examples'
		 'DeepTraverser-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #DeepTraverser) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineDynaMoose: spec [ 
    
	#(
		'Dynamix-Core'
		'Dynamix-Tests-Core'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #DynaMoose) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineFame: spec [ 
    
	#(
		'Fame-Core'
		'Fame-Util'
		'Fame-ImportExport'
		'Fame-SmalltalkBinding'
		'Fame-Tests-Core'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Fame) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineFamixNG: spec [ 
    
	"#(
		'Famix-General'
		'Famix-SmalltalkModel'
		'Famix-JavaMetamodel'
		'Famix-CppMetamodel'
		'Famix-SQLMetamodel'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #all) ]]"

	#(
		'FmxStImporter'
		'FmxNG-Traits'
		'CMetamodelGenerator'
		'FmxC-Generated'
		'FmxC-Entities'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #all) ]]


]

{ #category : #baseline }
BaselineOfMoose >> baselineGeometry: spec [ 
    
	#(
		'Geometry'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Geometry) ]]


]

{ #category : #baseline }
BaselineOfMoose >> baselineGhost: spec [ 
    
	#(
		'Ghost-ObjectGhost'
		'Ghost-ClassGhost'
		'Ghost-ObjectMutation'
		'Ghost-ObjectGhost-Tests'
		'Ghost-ClassGhost-Tests'
		'Ghost-ObjectMutation-Tests'
		'Ghost-StateSpecsSupport'
		'Ghost-StateSpecsSupport-Tests'
		'Ghost-GTSupport'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Fame) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineGrease: spec [ 
    
	#(
		'Grease-Core'
		'Grease-Pharo30-Core' 
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Grease) ]]
	
]

{ #category : #baseline }
BaselineOfMoose >> baselineHashtable: spec [ 
    
	#(
		'Hashtable'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #HashTable) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineMagritte3: spec [ 
    
	#(
		'Magritte-Model'
		'Magritte-Pharo3-Model'
		"'Magritte-Tests-Model'
		'Magritte-Tests-Pharo-Model'"
		'Magritte-Morph'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Magritte3) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineMerlin: spec [ 
    
	#(
		'Merlin'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Merlin) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineMetamodelBuilder: spec [ 
    
	#(
		'Famix-MetamodelBuilder-Core'
		'Famix-MetamodelBuilder-Support'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #all) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineMetanool: spec [ 
    
	#(
		'Metanool-Core'
		'Metanool-Tests-Core'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Metanool) ]]
	
]

{ #category : #baseline }
BaselineOfMoose >> baselineMocketry: spec [ 
    
	#(
		'Mocketry-Domain'
		'Mocketry-Domain-Tests'
		'Mocketry-Help'
		'Mocketry-Specs'
		'Mocketry-Specs-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Fame) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineMooseAlgos: spec [ 
    
	#(
		'Moose-Tests-Algos-Graph'
		'Moose-Algos-HierarchicalGraph'
		'Moose-Tests-Algos-HierarchicalGraph'
		'Moose-Tests-Algos-InformationRetrieval'
		'Moose-Algos-FormalConceptAnalysis'
		'Moose-Tests-Algos-FormalConceptAnalysis'
		'Moose-Algos-Lattice'
		'Moose-Tests-Algos-Lattice'
		'Moose-Algos-LinearAlgebra'
		'Moose-Tests-Algos-LinearAlgebra'
		'Moose-Algos-Clustering'
		'Moose-Algos-InformationRetrieval'
		'Moose-Tests-Algos-Clustering'
		'Moose-Algos-Kontractor'
		'Moose-Tests-Algos-Kontractor'
		"'Moose-Algos-GraphObjectTraverser'"
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #MooseAlgos) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineOrderPreservingDictionary: spec [ 
    
	#(
		'Collections-OrderPreservingDictionary'
		'Collections-OrderPreservingDictionary-GTExtensions'
		'Collections-Tests-OrderPreservingDictionary'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #OrderPreservingDictionary) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselinePetitJava: spec [
    
	#(
		'PetitJava'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #PetitJava) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselinePetitParser2: spec [ 
    
	#(
		'PetitParser2'
		'PetitParser2-Tests'
		'PetitParser2-Tutorial'
		'PetitParser2-Validation'
		'PetitParser2-Validation-Tests'
		'PetitParser2-Benchmarks'
		'PetitParser2-Smalltalk'
		'PetitParser2-Smalltalk-Tests'
		'PetitParser2-Html'
		'PetitParser2-Html-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #PetitParser2) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselinePetitParser2GUI: spec [ 
    
	#(
		'PetitParser2-GUI'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #PetitParser2) ]]
	
]

{ #category : #baseline }
BaselineOfMoose >> baselinePetitParser: spec [ 
    
	#(
		'PetitTests'
		'PetitAnalyzer'
		'PetitCSV'
		'PetitGui'
		'PetitIndent'
		'PetitIslands'
		'PetitJson'
		'PetitMSE'
		'PetitManifestMf'
		'PetitRegex'
		'PetitSmalltalk'
		'PetitXml'
		'PetitXPath'
		'PetitYAML'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #PetitParser) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselinePetitSQLParser: spec [ 
    
	#(
		'PetitSQLite-AST'
 		'PetitSQLite-Tests-Parser'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #PetitSQLParser) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselinePharoOverrides: spec [ 
    
       #(      
               'GT-Debugger'
               'GT-EventRecorder'
               'GT-InspectorExtensions-Core'
               'GT-Inspector'
               'GT-Playground'
               'GT-Spotter'
               'GT-SpotterExtensions-Core'
       ) do: [ :packageName | 
               spec package: packageName with: [ spec repository: (self url: #GToolkit) ]].

       #(      
               'Glamour-Core'
               'Glamour-FastTable'
               'Glamour-Morphic-Brick'
               'Glamour-Morphic-Pager'
               'Glamour-Morphic-Renderer'
               'Glamour-Morphic-Widgets'
               'Glamour-Morphic-Theme'
               'Glamour-Presentations'
               'Glamour-Tests-Morphic'
       ) do: [ :packageName | 
               spec package: packageName with: [ spec repository: (self url: #Glamour) ]].

       #(      
               'Moose-Algos-Graph'
       ) do: [ :packageName | 
	    (SystemVersion current major < 7) ifTrue: [
               spec package: packageName with: [ spec repository: (self url: #MooseAlgos) ]]].
                       
                               
				

]

{ #category : #baseline }
BaselineOfMoose >> baselinePhexample: spec [ 
    
	spec package: 'Phexample'.
	#(
		 'Phexample'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Phexample) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineRing2: spec [ 
    
	spec baseline: 'Ring2' with: [
		spec 
			repository: 'github://pavel-krivanek/Ring2:changesResolver/src';
			loads: #calypso 	].

]

{ #category : #baseline }
BaselineOfMoose >> baselineRoassal2: spec [ 
    
		#(
			'Trachel'
			'Roassal2'
			'Roassal2Spec'
			'Roassal2GT'
			'Roassal2-Rules'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Roassal2) ]].

]

{ #category : #baseline }
BaselineOfMoose >> baselineRoelTyper: spec [ 
    
	spec package: 'RoelTyper'.
	#(
		 'RoelTyper'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #RoelTyper) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineSmaCC: spec [ 
    
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

]

{ #category : #baseline }
BaselineOfMoose >> baselineSmallDude: spec [ 
    
		#(
			 'SmallDude-Core'
			 'SmallDude-Moose'
			 'SmallDude-Species'
			 'SmallDude-Tests-Core'
			 'SmallDude-Tests-Text'
			 'SmallDude-Text'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #SmallDude) ]].
	
]

{ #category : #baseline }
BaselineOfMoose >> baselineStateSpecs: spec [ 
    
	#(
		'StateSpecs-Specs'
		'StateSpecs-DSL-ShouldExpressions'
		'StateSpecs-DSL-ClassWords'
		'StateSpecs-Help'
		'StateSpecs-Specs-Tests'
		'StateSpecs-DSL-ShouldExpressions-Tests'
		'StateSpecs-DSL-ClassWords-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #StateSpecs) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineStatefulTraits: spec [ 
    
	#(
		'StatefulTraits'
		'StatefulTraits-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #all) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineXMLParser: spec [ 
    
	#(
		'XML-Parser'
		'XML-Tests-Parser'
		'XML-Parser-GTExtensions'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #XMLParser) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineXMLWriter: spec [ 
    
	#(
		'XML-Writer-Core'
		'XML-Writer-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #XMLWriter) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineXPath: spec [ 
    
	#(
		'XPath-Core'
		'XPath-SqueakCommonCompatibility'
		'XPath-Tests'
		'XPath-GTExtensions'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #XPath) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineZeroConf: spec [ 
    
	#(
		 'ZeroConf'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #ZeroConf) ]]

]

{ #category : #baseline }
BaselineOfMoose >> groups: spec [ 
    
	spec group: 'BasicMetamodelling' with: #(

			'Ring2'
			'Grease-Core'
			'Grease-Pharo30-Core' 
			'CollectionExtensions'

			'Hashtable'

			'StateSpecs-Specs'
			'StateSpecs-DSL-ShouldExpressions'

			'Fame-Core'
			'Fame-Util'
			'Fame-ImportExport'
			'Fame-SmalltalkBinding'
			'Fame-Example'
			'Fame-Tests-Core'

			'DeepTraverser'

			'Moose-Query'
			'Moose-Core'
			
			'FmxNG-BasicInfrastructure'
			'Famix-Compatibility'

			'Famix-MetamodelBuilder-Core'
			'Famix-MetamodelBuilder-Support'
			
			'Moose-Query-Extensions'
			'Moose-Query-Test'
			'Moose-GenericImporter'
			'Phexample'
			
			'FamixNG-MetamodelGeneration'
			'FmxNG-Traits'
			
			'FmxNGCompatibility-Generator' 
			'FmxNGCompatibility-Entities'
			'FmxNGCompatibility-Groups'
	).
	
	spec group: 'BasicTests' with: #(
			'Moose-TestResources-LAN'
			'Moose-TestResources-Reference-Core'
			'Moose-TestResources-KGB-P4FullInteracted'
			'Moose-TestResources-KGB-P6InteractedReferee'
			'Moose-TestResources-KGB-P5FullReferee'
			'Moose-TestResources-KGB-P7ReferencerReferee'
			'Moose-Tests-SmalltalkImporter-LAN'
			'Moose-Tests-SmalltalkImporter-KGB'
			'Moose-GenericImporter'
			'Moose-SmalltalkImporter'
			'Moose-Tests-Core'
			'Famix-Tests-Core'
	).	

	spec group: 'BasicMetamodellingWithRoassal' with: #(
			'BasicMetamodelling'
			'Athens-SVG'
			'Trachel'
			'Roassal2'
			'GToolkit-Examples'
			'Roassal2GT'
	).
	
	spec group: 'MooseFinder' with: #(
			'BasicMetamodellingWithRoassal'
			'BasicTests'
			'Glamour-Tools'
			'Magritte-Model'
			'Magritte-Pharo3-Model'
			'Magritte-Morph'
			'Metanool-Core'
			'Metanool-Tests-Core'			
			'Glamour-Magritte-Presentations'
			'Moose-Algos-Lattice'
			'Moose-Tests-Algos-Graph'
			'Moose-Tests-Algos-FormalConceptAnalysis'
			'Moose-RoassalPaintings'
			'Moose-Finder'
	).	
	

]

{ #category : #accessing }
BaselineOfMoose >> packageRepository [

	" Tries to determine a repository from which the baseline is being loaded. Useful for 
	refering other baselines in the same repository. "
	
	^ (self class package mcWorkingCopy repositoryGroup repositories reject: [:each | each = MCCacheRepository uniqueInstance]) 
		ifNotEmpty: [ :repositories | repositories anyOne ]
		ifEmpty: [ nil ]


	
]

{ #category : #accessing }
BaselineOfMoose >> packageRepositoryURL [

	" Tries to determine a repository URL from which the baseline is being loaded. Useful for 
	refering other baselines in the same repository. "

	^ self packageRepository
		ifNotNil: [ :aRepository | aRepository description ]
		ifNil: [ '' ]


	
]

{ #category : #actions }
BaselineOfMoose >> postload: loader package: packageSpec [

	self class environment at: #GTImageSetupCommandLineHandler ifPresent: [:handler |  
		handler new installGTDebuggers.
		handler new setPreferredSettings].
]

{ #category : #actions }
BaselineOfMoose >> preload: loader package: packageSpec [

	

]

{ #category : #private }
BaselineOfMoose >> url: aDirectoryName [
    
	"UGLY HACK"

	"^ self class package mcWorkingCopy repositoryGroup repositories last description, '/', aDirectoryName"
	^ self class package mcWorkingCopy repositoryGroup repositories last description
]
