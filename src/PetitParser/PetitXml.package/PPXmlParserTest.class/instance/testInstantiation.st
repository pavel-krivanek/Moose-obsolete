testing-other
testInstantiation
	self should: [ PPXmlAttribute new ] raise: Error.
	self should: [ PPXmlComment new ] raise: Error.
	self should: [ PPXmlDoctype new ] raise: Error.
	self should: [ PPXmlProcessing new ] raise: Error.
	self should: [ PPXmlText new ] raise: Error.
	self should: [ PPXmlDocument new ] raise: Error.
	self should: [ PPXmlElement new ] raise: Error