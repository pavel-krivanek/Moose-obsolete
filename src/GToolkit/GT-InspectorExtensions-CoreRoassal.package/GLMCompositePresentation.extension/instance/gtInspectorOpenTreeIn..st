*GT-InspectorExtensions-CoreRoassal
gtInspectorOpenTreeIn: composite
	<gtInspectorPresentationOrder: 30>  
	^ composite roassal2
		title: 'Tree';
		painting: [:view :b | 
			self viewTreeOn: view ]