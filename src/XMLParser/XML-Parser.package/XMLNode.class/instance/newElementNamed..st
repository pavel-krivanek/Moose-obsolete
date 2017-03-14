instance creation
newElementNamed: aName
	^ (self nodeFactory classForElement: aName) new
		configuration: self configuration;
		name: aName