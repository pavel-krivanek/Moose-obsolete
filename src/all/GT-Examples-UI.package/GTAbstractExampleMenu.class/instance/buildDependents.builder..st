private
buildDependents: aCollection builder: aBuilder
	^ (aBuilder item: #'Browse dependents')
		parent: #gte;
		action: [ GTExampleNavigation browseDependentsOf: aCollection ]