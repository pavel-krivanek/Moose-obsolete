tests
testAssertion

	"Package names"
	self shouldnt: [ importer assertPackageName: 'Mondrian' ] raise: AssertionFailure.
	self shouldnt: [ importer assertPackageName: 'Mondrian-Core' ] raise: AssertionFailure.
	
	self should: [ importer assertPackageName: 'mondrian-Core' ] raise: AssertionFailure.
	self should: [ importer assertPackageName: 'Mondrian-Core.mcz' ] raise: AssertionFailure.
	
	"MCZfile name"

	self should: [ importer assertMCZFileName: 'Mondrian' ] raise: AssertionFailure.
	self should: [ importer assertMCZFileName: 'Mondrian-Core' ] raise: AssertionFailure.
	self should: [ importer assertMCZFileName: 'mondrian-Core-ab.mcz' ] raise: AssertionFailure.
	
	self shouldnt: [ importer assertMCZFileName: 'Mondrian-Core-AB.mcz' ] raise: AssertionFailure.
	self shouldnt: [ importer assertMCZFileName: 'Mondrian-AB.mcz' ] raise: AssertionFailure.
	