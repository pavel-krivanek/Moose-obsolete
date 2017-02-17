examples
shouldNicelyHandleNotifications
	"Checks whether notifications are properly ignored, both immediately and in dependent tests."
	| class   result suite |
	class := factory newSubclassOf: Phexample
		instanceVariableNames: ''
		classVariableNames: ''.
	class compile: 'throwNotification Notification  signal:''Waa!'''.
	class compile: 'consumeNotification   self given: #throwNotification. '.
	suite := TestSuite new.
	suite 
		addTest: (class selector: #throwNotification);
		addTest: (class selector: #consumeNotification).
	result := suite run.
	result passedCount should equal: 2 .
	result failureCount should equal: 0.
	result errorCount should equal: 0 .
	result unexpectedPassCount should equal: 0.
	result unexpectedErrorCount should equal: 0.
	result unexpectedFailureCount should equal: 0.
			