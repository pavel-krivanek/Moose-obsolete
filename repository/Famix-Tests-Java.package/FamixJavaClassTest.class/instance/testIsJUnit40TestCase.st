tests
testIsJUnit40TestCase
	| testAnnotation testAnnotationInstance famixClass famixMethod |
	testAnnotation := FAMIXAnnotationType new name: 'Test'.
	testAnnotationInstance := FAMIXAnnotationInstance new annotationType: testAnnotation.
	famixClass := FAMIXClass new.
	famixMethod := FAMIXMethod new name: 'someMethodAnnotated'.
	famixClass addMethod: famixMethod.
	famixMethod annotationInstances add: testAnnotationInstance.
	self assert: famixClass isJUnit4TestCase