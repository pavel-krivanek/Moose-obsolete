private
buildAllDependencies: aCollection builder: aBuilder with: aBlock
	^ (aBuilder item: #'Browse all dependencies')
		parent: #gte;
		action: [ GTExampleNavigation browseAllDependenciesOf: aCollection ]