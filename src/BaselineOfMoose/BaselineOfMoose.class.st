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
		
		self baselineAthens: spec.
		self baselineBitmapCharacterSet: spec.
		self baselineCollectionExtensions: spec.
		self baselineDeepTraverser: spec.
		self baselineFame: spec.
		self baselineFamixNG: spec.
		self baselineGeometry: spec.
		self baselineGhost: spec.
		self baselineGlamour: spec.
		self baselineGrease: spec. 
		self baselineGToolkitExamples: spec.
		self baselineHashtable: spec.
		self baselineMagritte3: spec.
		self baselineMetamodelBuilder: spec.
		self baselineMetanool: spec.
		self baselineMocketry: spec.
		self baselineMoose: spec.
		self baselineMooseAlgos: spec.
		self baselineOrderPreservingDictionary: spec.
		self baselinePhexample: spec.
		self baselineRing2: spec.
		self baselineRoassal2: spec.
		self baselineStateSpecs: spec.
		self baselineXMLParser: spec.

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
BaselineOfMoose >> baselineBitmapCharacterSet: spec [ 
    
	#(
		'Collections-BitmapCharacterSet'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #BitmapCharacterSet) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineCollectionExtensions: spec [ 
    
	self defineGroup: #'CollectionExtensions-Group' in: spec locatedIn: #CollectionExtensions with: #(
		'CollectionExtensions'
	) 
]

{ #category : #baseline }
BaselineOfMoose >> baselineDeepTraverser: spec [ 
    
	self defineGroup: #'DeepTraverser-Base' in: spec locatedIn: #DeepTraverser with: #(
		 'DeepTraverser'
	).
	
	self defineGroup: #'DeepTraverser-Tests-Group' in: spec locatedIn: #DeepTraverser with: #(
		 'DeepTraverser-Tests'
	).
]

{ #category : #baseline }
BaselineOfMoose >> baselineFame: spec [ 
    
	self defineGroup: #'Fame' in: spec locatedIn: #Fame with: #(
		'Fame-Core'
		'Fame-Util'
		'Fame-ImportExport'
		'Fame-SmalltalkBinding'
		'Fame-Example'
		'Fame-Tests-Core'
	) 
]

{ #category : #baseline }
BaselineOfMoose >> baselineFamixNG: spec [ 
    
	#(
		'FamixNG-MetamodelGeneration'
		'FmxNG-Traits'	
		'FmxNG-BasicInfrastructure'
		'FmxNGCompatibility-Generator' 
		'FmxNGCompatibility-Entities'
		'FmxNGCompatibility-Groups'	
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
BaselineOfMoose >> baselineGToolkitExamples: spec [ 
    
	#(
		'GToolkit-Examples' 
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #GToolkitExamples) ]].


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
    
	self defineGroup: #Ghost in: spec locatedIn: #Ghost with: #(
		'Ghost-ObjectGhost'
		'Ghost-ClassGhost'
		'Ghost-ObjectMutation'
		'Ghost-ObjectGhost-Tests'
		'Ghost-GTSupport'
		'Ghost-StateSpecsSupport'
		'Ghost-StateSpecsSupport-Tests'
		'Ghost-ClassGhost-Tests'
		'Ghost-ObjectMutation-Tests'
	)
	


]

{ #category : #baseline }
BaselineOfMoose >> baselineGlamour: spec [ 
    
	#(
		'Glamour-Tools'
		'Glamour-Magritte-Presentations'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #GToolkitExamples) ]].


]

{ #category : #baseline }
BaselineOfMoose >> baselineGrease: spec [ 
   
	self defineGroup: #Grease in: spec locatedIn: #Grease with: #(
		'Grease-Core'
		'Grease-Pharo30-Core' 
	).

]

{ #category : #baseline }
BaselineOfMoose >> baselineHashtable: spec [ 
    
	self defineGroup: #'HashTable-Group' in: spec locatedIn: #HashTable with: #(
		'Hashtable'
	) 
]

{ #category : #baseline }
BaselineOfMoose >> baselineMagritte3: spec [ 
    
	#(
		'Magritte-Model'
		'Magritte-Pharo3-Model'
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
    
	self defineGroup: #Mocketry in: spec locatedIn: #Mocketry with: #(
		'Mocketry-Specs'
		'Mocketry-Domain'
		'Mocketry-Help'
		'Mocketry-Specs-Tests'
		'Mocketry-Domain-Tests'
	)
]

{ #category : #baseline }
BaselineOfMoose >> baselineMoose: spec [ 
    
	#(	
		'Moose-PharoOverrides'

		'Moose-Core'
		'Moose-Query'
		'Moose-Query-Extensions'
		'Famix-MetamodelBuilder-Core'
		'Famix-MetamodelBuilder-Tests'
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
		'Moose-Help'
		'Moose-Finder'
		'Moose-RoassalPaintings'
		'Moose-Tests-Finder'
		'Moose-Tests-RoassalPaintings'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Moose) ]].

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
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #MooseAlgos) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineMooseTestResources: spec [ 
    
	self defineGroup: #MooseTestResources in: spec locatedIn: #Moose with: #(
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
	).

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
BaselineOfMoose >> baselinePhexample: spec [ 
    
	spec package: 'Phexample'.
	#(
		 'Phexample'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #Phexample) ]]

]

{ #category : #baseline }
BaselineOfMoose >> baselineRing2: spec [ 
    
	self defineGroup: #Ring2 in: spec locatedIn: #Ring2 with: #(
		'Ring2-Core' 
		'Ring2-TraitsV2Support'
		'Ring2-Monticello' 
		'Ring2-ChunkImporter'
		'Ring2-Tests-Core' 
		'Ring2-Tests-Monticello' 
		'Ring2-Tests-ChunkImporter' 
		'Ring2-RuntimeSupport' 
		'Calypso-Ring2').

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
BaselineOfMoose >> baselineStateSpecs: spec [ 
    
	self defineGroup: #'StateSpecs-Base' in: spec locatedIn: #StateSpecs with: #(
		'StateSpecs-Specs'
		'StateSpecs-DSL-ShouldExpressions'
	).

	self defineGroup: #'StateSpecs-Additional' in: spec locatedIn: #StateSpecs with: #(
		'StateSpecs-DSL-ClassWords'
		'StateSpecs-Help'
		'StateSpecs-Specs-Tests'
		'StateSpecs-DSL-ShouldExpressions-Tests'
		'StateSpecs-DSL-ClassWords-Tests'
	)
]

{ #category : #baseline }
BaselineOfMoose >> baselineXMLParser: spec [ 
    
	#(
		'XML-Parser'
	) do: [ :packageName | 
		spec package: packageName with: [ spec repository: (self url: #XMLParser) ]]

]

{ #category : #private }
BaselineOfMoose >> defineGroup: groupName in: spec locatedIn: location with: packages [
    
	packages do: [ :packageName | 
			spec package: packageName with: [ spec repository: (self url: location) ]].
		
	spec group: groupName with: packages.

]

{ #category : #baseline }
BaselineOfMoose >> groups: spec [ 
    
	spec group: 'BasicMetamodelling' with: #(
		'Moose-PharoOverrides'

		'Ring2' 
		'Grease' 
		'CollectionExtensions-Group'
		'HashTable-Group'
		'StateSpecs-Base'
		'Fame'
		'DeepTraverser-Base'

		'Moose-Query'
		'Moose-Core'
			
		'Famix-MetamodelBuilder-Core'

		'FmxNG-BasicInfrastructure'
		'Famix-Compatibility'

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

		'StateSpecs-Additional'
		'Ghost'
		'Mocketry'
			
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
		'DeepTraverser-Tests-Group'
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

]

{ #category : #actions }
BaselineOfMoose >> preload: loader package: packageSpec [

	

]

{ #category : #private }
BaselineOfMoose >> url: aDirectoryName [
    
	"UGLY HACK"

	^ self class package mcWorkingCopy repositoryGroup repositories last description
]
