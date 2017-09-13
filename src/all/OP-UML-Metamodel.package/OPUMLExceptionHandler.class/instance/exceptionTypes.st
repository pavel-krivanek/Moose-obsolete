accessing
exceptionTypes
	"The Classifiers whose instances the ExceptionHandler catches as exceptions. If an exception occurs whose type is any exceptionType, the ExceptionHandler catches the exception and executes the handlerBody."
	^ exceptionTypes ifNil: [ exceptionTypes := OrderedCollection new ]