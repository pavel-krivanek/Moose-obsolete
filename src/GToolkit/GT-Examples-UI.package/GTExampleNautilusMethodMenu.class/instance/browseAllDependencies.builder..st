private
browseAllDependencies: aCollection builder: aBuilder
	(lastItem := aBuilder item: #'Browse all dependencies')
		parent: #gte;
		action: [ GTExampleNavigation browseAllDependenciesOf: aCollection ]