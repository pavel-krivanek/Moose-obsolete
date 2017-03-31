examples
shouldExecuteExampleMethod
	| class testcase hasRun result |
	class := factory newSubclassOf: Phexample
		instanceVariableNames: 'action'
		classVariableNames: ''.
	class compile: 'shouldRun action value'.
	class compile: 'action: aBlock action := aBlock'.
	testcase := class selector: #shouldRun.
	testcase action: [ hasRun := true ].
	result := testcase run.
	result tests size should equal: 1.
	result passed size should equal: 1.
	hasRun should be: true