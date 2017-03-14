*Famix-Extensions
allMethods
	<navigation: 'All methods'>
	
	^ (self allWithType: FAMIXMethod) "sorted: [:m1 :m2 | m1 signature < m2 signature]; yourself"