tests
shouldNotAllowSelectorsWithArguments
	(Phexample isTest: #shouldFoo:) should be: false.
	(Phexample isTest: #fooShould:NotBeAllowed:) should be: false.