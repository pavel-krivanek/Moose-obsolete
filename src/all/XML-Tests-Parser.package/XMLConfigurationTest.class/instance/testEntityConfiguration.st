tests
testEntityConfiguration
	| configuration newEntityConfiguration |

	configuration := self newConfiguration.
	self assert: configuration entityConfiguration class == DTDEntityConfiguration.

	newEntityConfiguration := DTDEntityConfiguration new.
	self assert:
		(configuration entityConfiguration: newEntityConfiguration) ==
			configuration.
	self assert: configuration entityConfiguration == newEntityConfiguration.