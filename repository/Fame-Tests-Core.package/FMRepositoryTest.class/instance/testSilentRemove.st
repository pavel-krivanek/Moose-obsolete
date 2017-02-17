running
testSilentRemove
	self shouldnt: [ t metamodel remove: nil ] raise: Exception.
	t metamodel isEmpty should beTrue