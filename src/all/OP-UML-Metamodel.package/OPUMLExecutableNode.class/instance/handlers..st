accessing
handlers: anExceptionHandler
	"A set of ExceptionHandlers that are examined if an exception propagates out of the ExceptionNode."
	self handlers
		removeAll;
		addAll: anExceptionHandler