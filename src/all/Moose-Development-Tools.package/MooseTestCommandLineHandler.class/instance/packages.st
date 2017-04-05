private
packages
	"| packages |
	packages := Set new.
	self addTestPackagesFrom: self mooseDevelopmentVersion to: packages.
	(self mooseDevelopmentVersion projects reject: [:each | each name = 'OSProcess']) 
		do: [ :each | 
			self addTestPackagesFrom: each version to: packages ].
	^ packages"
	
	 ^ #(#'Famix-Tests-Core' #'PetitParser2-Smalltalk-Tests' #'Roassal2-Rules' #'Moose-TestResources-KGB-P1FullReferencer' #'Moose-Tests-SmalltalkImporter-LAN' #'Moose-TestResources-KGB-P14FullReferee' #'Moose-TestResources-KGB-P5FullReferee' #'PetitParser2-Tests' #'PetitParser2-Html-Tests' #'PetitSQLite-Tests-Parser' #PetitSmalltalk #'Moose-TestResources-LAN' #SmaCC_Tests #'Moose-Tests-RoassalPaintings' #'SmallDude-Tests-Core' #'Moose-Tests-SmalltalkImporter-KGB' #'Moose-TestResources-KGB-P7ReferencerReferee' #'GT-Tests-Release' #'SmallDude-Tests-Text' #SmaCC_Rewrite_Engine_Tests #'Moose-Query-Test' #'Moose-TestResources-KGB-P13FullReferencer' #'Moose-TestResources-KGB-P10InteractedReferee' #'Moose-Tests-Finder' #'Moose-TestResources-KGB-P2InteractedReferencerReferee' #'Moose-TestResources-Reference-PackageOne' #Roassal2 #Trachel #'Famix-Tests-Extensions' #'Moose-TestResources-KGB-P11FullReferee' #PetitMSE #'Moose-TestResources-PackageBlueprint-P1' #'Moose-TestResources-KGB-P8FullReferencer' #'Moose-TestResources-PackageBlueprint-P2' #'Moose-Tests-MonticelloImporter' #'Moose-TestResources-Reference-Core' #'Moose-Test-HismoImporter' #'Moose-Tests-Core' #'Moose-TestResources-PackageBlueprint-P3' #'PetitParser2-Validation-Tests' #'Metanool-Tests-Core' #'Moose-TestResources-PackageBlueprint-P4' #PetitJava #Roassal2GT #PetitTests #'XML-Tests-Parser' #'Famix-Tests-Java' #'Moose-Tests-SmalltalkImporter-Core' #'Arki-Tests-Reporter' #'Moose-TestResources-KGB-PExtensions' #Roassal2Spec #'Famix-Tests-C' #'Moose-TestResources-KGB-P6InteractedReferee' #'Dynamix-Tests-Core' #'Moose-TestResources-KGB-P12FullReferencer' #'XPath-Tests' #'Moose-Tests-DistributionMap' #'Moose-TestResources-KGB-P9FullReferencer' #'Moose-TestResources-KGB-P4FullInteracted' #'Moose-TestResources-Reference-PackageTwo' #'Moose-TestResources-KGB-P3InteractedReferencer')
