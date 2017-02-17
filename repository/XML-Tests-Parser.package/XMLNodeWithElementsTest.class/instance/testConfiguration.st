tests
testConfiguration
	| nodeWithElements configuration newConfiguration |

	nodeWithElements := self newNodeWithElements.
	configuration := nodeWithElements configuration.
	self assert: configuration class == self configurationClass.
	nodeWithElements allElementsDo: [:element |
		self assert: element configuration == configuration.
		element attributeNodes do: [:each |
			self assert: each configuration == configuration]].

	"ensure descendants inherit the new config when it's set"
	newConfiguration := self configurationClass new.
	nodeWithElements configuration: newConfiguration.
	self assert: nodeWithElements configuration == newConfiguration.
	nodeWithElements allElementsDo: [:element |
		self assert: element configuration == newConfiguration.
		element attributeNodes do: [:each |
			self assert: each configuration == newConfiguration]].