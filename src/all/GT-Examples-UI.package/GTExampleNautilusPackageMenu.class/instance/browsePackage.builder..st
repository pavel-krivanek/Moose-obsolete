private
browsePackage: aPackage builder: aBuilder
	(lastItem := aBuilder item: #'Browse all examples of package "' ,  aPackage packageName , '"')
		parent: #gte;
		action: [ GTExampleNavigation browseExamplesOfPackage: aPackage ]