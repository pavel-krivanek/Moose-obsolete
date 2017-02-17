*Famix-Extensions
allPrimitiveTypes
	
	<navigation: 'All primitive types'>
	^(self allWithType: FAMIXPrimitiveType) sorted: [:a :b | a name < b name]; yourself