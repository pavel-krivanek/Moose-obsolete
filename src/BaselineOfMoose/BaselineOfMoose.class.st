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
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #GToolkitExamples) ]].
		
		self baselineDeepTraverser: spec.
		self baselineRing2: spec.
		
		#(	
			'Moose-Core'
			'Moose-Query'
			'Moose-Query-Extensions'
			'Famix-MetamodelBuilder-Core'
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
			'Famix-Compatibility'
			'Famix-Extensions'
			'Moose-GenericImporter'
			'Famix-Tests-C'
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
		
		"self baselinePetitParser2: spec."
		self baselineGeometry: spec.
		self baselineAthens: spec.
		self baselineRoassal2: spec.

		#(
			'GT-Inspector'
			"'GT-InspectorExtensions-Core'"
			'GT-Debugger'
			'GT-EventRecorder'
		) do: [ :packageName | 
			(SystemVersion current major < 7) ifTrue: [
			  spec package: packageName with: [ spec repository: (self url: #GToolkit)] ]].

		"self baselineBeacon: spec."
		
		"#(	
			'FuelBeacon'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #FuelBeacon) ]]."
		
		
		"self baselinePetitParser2GUI: spec."
		self baselineMooseAlgos: spec.

		self baselineOrderPreservingDictionary: spec.
		self baselineCollectionExtensions: spec.
		self baselineBitmapCharacterSet: spec.
		self baselineXMLParser: spec.

		#(	
			'Glamour-Tools'
			'Glamour-Magritte-Presentations'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Glamour) ]].

		#(	
			'Moose-Help'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Moose) ]].
	
		#(	
			'Fame-Example'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Fame) ]].

		self baselineMetanool: spec.
		
		#(	
			'Moose-Finder'
			'Moose-RoassalPaintings'
			'Moose-Tests-Finder'
			'Moose-Tests-RoassalPaintings'
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Moose) ]].

	   self groups: spec.
	]
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
    
	#(
		'FmxNG-Traits'

		'FmxNGPharoSmalltalk-Generator'
		'FmxNGPharoSmalltalk-Entities'
		'FmxNGPharoSmalltalk-Importer'

		'FmxNG-Support'

		'FmxNGJava-Generator'
		'FmxNGJava-Entities'


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
BaselineOfMoose >> baselineMetamodelBuilder: spec [ 
    
	#(
		'Famix-MetamodelBuilder-Core'
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
    
"	spec
    baseline: 'Mocketry'
    with: [ spec repository: 'github://dionisiydk/Mocketry:v4.0.3' ]"

	#(
			'StateSpecs-Specs'
			'StateSpecs-DSL-ShouldExpressions'
			'StateSpecs-DSL-ClassWords'
			'StateSpecs-Help'
			'StateSpecs-Specs-Tests'
			'StateSpecs-GTTools'
			'StateSpecs-DSL-ShouldExpressions-Tests'
			'StateSpecs-DSL-ClassWords-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #StateSpecs) ]].

	#(
			'Ghost-ObjectGhost'
			'Ghost-ClassGhost'
			'Ghost-ObjectMutation'
			'Ghost-ObjectGhost-Tests'
			'Ghost-GTSupport'
			'Ghost-StateSpecsSupport'
			'Ghost-StateSpecsSupport-Tests'
			'Ghost-ClassGhost-Tests'
			'Ghost-ObjectMutation-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Ghost) ]].
		
	#(
		'Mocketry-Specs'
		'Mocketry-Domain'
		'Mocketry-Help'
		'Mocketry-Specs-Tests'
		'Mocketry-Domain-Tests'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Mocketry) ]].
		
]

{ #category : #baseline }
BaselineOfMoose >> baselineMooseAlgos: spec [ 
    
	#(
		'Moose-Tests-Algos-Graph'
		'Moose-Tests-Algos-InformationRetrieval'
		'Moose-Algos-FormalConceptAnalysis'
		'Moose-Tests-Algos-FormalConceptAnalysis'
		'Moose-Algos-Lattice'
		'Moose-Tests-Algos-Lattice'
		'Moose-Algos-LinearAlgebra'
		'Moose-Tests-Algos-LinearAlgebra'
		'Moose-Algos-InformationRetrieval'
		"'Moose-Algos-GraphObjectTraverser'"
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #MooseAlgos) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineOrderPreservingDictionary: spec [ 
    
	#(
		'Collections-OrderPreservingDictionary'
		"'Collections-Tests-OrderPreservingDictionary'"
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #OrderPreservingDictionary) ]]

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
    
"	spec baseline: 'Ring2' with: [
		spec 
			repository: 'github://pavel-krivanek/Ring2:moose-dev/src';
			loads: #calypso 	].
"
		#(
		'Ring2-Core' 
		'Ring2-TraitsV2Support'
		'Ring2-Monticello' 
		'Ring2-ChunkImporter'
		'Ring2-Tests-Core' 
		'Ring2-Tests-Monticello' 
		'Ring2-Tests-ChunkImporter' 
		'Ring2-RuntimeSupport' 
		'Calypso-Ring2' 
		) do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: #Ring2) ]].

]

{ #category : #baseline }
BaselineOfMoose >> baselineRoassal2: spec [ 
    
		#(
			'Trachel'
			'Roassal2'
			'Roassal2GT'
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
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #XMLParser) ]]

]

{ #category : #baseline }
BaselineOfMoose >> groups: spec [ 
    
	spec group: 'BasicMetamodelling' with: #(


			'Ring2-Core' 
			'Ring2-TraitsV2Support'
			'Ring2-Monticello' 
			'Ring2-ChunkImporter'
			'Ring2-Tests-Core' 
			'Ring2-Tests-Monticello' 
			'Ring2-Tests-ChunkImporter' 
			'Ring2-RuntimeSupport' 
			'Calypso-Ring2' 
	
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
			
			'Moose-Query-Extensions'
			'Moose-Query-Test'
			'Moose-GenericImporter'
			'Phexample'
			
			'FamixNG-MetamodelGeneration'
			'FmxNG-Traits'
			
			'FmxNGCompatibility-Generator' 
			'FmxNGCompatibility-Entities'
			'FmxNGCompatibility-Groups'
			
			'Famix-Extensions'
	).
	
	spec group: 'BasicTests' with: #(
			'Famix-MetamodelBuilder-Tests'

			'StateSpecs-Specs'
			'StateSpecs-DSL-ShouldExpressions'
			'StateSpecs-DSL-ClassWords'
			'StateSpecs-Help'
			'StateSpecs-Specs-Tests'
			'StateSpecs-GTTools'
			'StateSpecs-DSL-ShouldExpressions-Tests'
			'StateSpecs-DSL-ClassWords-Tests'

			'Ghost-ObjectGhost'
			'Ghost-ClassGhost'
			'Ghost-ObjectMutation'
			'Ghost-ObjectGhost-Tests'
			'Ghost-GTSupport'
			'Ghost-StateSpecsSupport'
			'Ghost-StateSpecsSupport-Tests'
			'Ghost-ClassGhost-Tests'
			'Ghost-ObjectMutation-Tests'

			'Mocketry-Specs'
			'Mocketry-Domain'
			'Mocketry-Help'
			'Mocketry-Specs-Tests'
			'Mocketry-Domain-Tests'
			
			'Moose-TestResources-LAN'
			'Moose-TestResources-Reference-Core'
			'Moose-TestResources-KGB-P4FullInteracted'
			'Moose-TestResources-KGB-P6InteractedReferee'
			'Moose-TestResources-KGB-P5FullReferee'
			'Moose-TestResources-KGB-P7ReferencerReferee'
			'Moose-TestResources-KGB-P2InteractedReferencerReferee'
			'Moose-TestResources-KGB-P1FullReferencer'
			'Moose-TestResources-KGB-P3InteractedReferencer'
			'Moose-TestResources-KGB-P8FullReferencer'
			'Moose-TestResources-KGB-P9FullReferencer'
			'Moose-TestResources-KGB-P10InteractedReferee'
			'Moose-TestResources-KGB-P11FullReferee'
			'Moose-TestResources-KGB-P12FullReferencer'
			'Moose-TestResources-KGB-P13FullReferencer'
			'Moose-TestResources-KGB-P14FullReferee'
			'Moose-TestResources-LCOM'
			'Moose-TestResources-PackageBlueprint-P1'
			'Moose-TestResources-PackageBlueprint-P2'
			'Moose-TestResources-PackageBlueprint-P3'
			'Moose-TestResources-PackageBlueprint-P4'
			'Moose-TestResources-Reference-PackageOne'
			'Moose-Tests-SmalltalkImporter-Core'
			'Moose-TestResources-Reference-PackageTwo'
			'Moose-Tests-SmalltalkImporter-LAN'
			'Moose-Tests-SmalltalkImporter-KGB'
			'Moose-TestResources-KGB-PExtensions'
			
			'Moose-GenericImporter'
			'Moose-SmalltalkImporter'
			'Moose-Tests-Core'
			'Famix-Tests-Core'
			'Famix-Tests-C'
			'Famix-Tests-Java'
			'Famix-Tests-Extensions'
			'DeepTraverser-Tests'
	).	

	spec group: 'BasicMetamodellingWithRoassal' with: #(
			'BasicMetamodelling'
			'Collections-OrderPreservingDictionary'
			'Collections-BitmapCharacterSet'
			'XML-Parser'		
			'Athens-SVG'
			'Trachel'
			'Geometry'
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
			'Moose-Algos-FormalConceptAnalysis'
			'Moose-Algos-InformationRetrieval'
			'Moose-Algos-LinearAlgebra'
			'Moose-Tests-Algos-FormalConceptAnalysis'
			'Moose-Tests-Algos-LinearAlgebra'
			'Moose-RoassalPaintings'
			'Moose-Help'
			'Moose-Finder'
			
			'Moose-Tests-RoassalPaintings'
			'Moose-Tests-Finder'
			'Moose-Tests-Algos-Lattice'
			'Moose-Tests-Algos-InformationRetrieval'

			'Moose-MonticelloImporter'
			'Moose-Tests-MonticelloImporter'
			
			'FmxNGPharoSmalltalk-Generator'
			'FmxNGPharoSmalltalk-Entities'
			'FmxNGPharoSmalltalk-Importer'
			
			'FmxNG-Support'

			'FmxNGJava-Generator'
			'FmxNGJava-Entities'
			
	).
	
	spec group: 'default' with: #('MooseFinder').
	

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
