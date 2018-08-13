initialization
initializeUnresolved

	self propertyNamed: #resolved put: false. 
	name := self unresolvedValue: self unresolvedName.
	

