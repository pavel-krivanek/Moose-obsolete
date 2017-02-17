*GT-Examples-Examples
gtExampleWorkingCopy
	<gtExample>
	<label: 'Metacello working-copy'>
	
	^ (RPackageOrganizer default packageOf: GTExample) mcPackage 
		ifNotNil: [ :mcp | mcp workingCopy ]