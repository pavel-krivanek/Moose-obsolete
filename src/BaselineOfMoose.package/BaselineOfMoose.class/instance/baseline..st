baseline
baseline: spec 
    
	<baseline> 
       
	spec for: #common do: [ 
		spec preLoadDoIt: #'preload:package:'.
		spec postLoadDoIt: #'postload:package:'.
		
		self baselinePharoOverrides: spec. 

		self baselineGrease: spec. 
		self baselineMagritte3: spec.
		self baselineHashtable: spec.
		self baselineStateSpecs: spec.
		self baselinePhexample: spec.
		self baselineFame: spec.

		#(
			'GT-Examples'
			'GT-Examples-UI'
			'GT-Examples-Dummies'
			'GT-Examples-Examples'
			'GT-Tests-Examples'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #GToolkit) ]].
		
		self baselineDeepTraverser: spec.
		self baselineRoelTyper: spec.
		
		#(	
			'Moose-Query'
			'Moose-Core'
			'Famix-Core'
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
			'Moose-TestResources-KGB-P11FullReferee'
			'Moose-TestResources-KGB-P12FullReferencer'
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
			'Glamour-Magritte-Presentations'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Glamour) ]].
		
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
			spec package: packageName with: [ spec repository: (self url: #GToolkit) ]].

		self baselineBeacon: spec.
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
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Glamour) ]].

		self baselineArki: spec.
		self baselineDynaMoose: spec.
		"self baselinePetitJava: spec."
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