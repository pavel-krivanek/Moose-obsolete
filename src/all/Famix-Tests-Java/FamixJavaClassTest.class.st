Class {
	#name : #FamixJavaClassTest,
	#superclass : #TestCase,
	#category : #'Famix-Tests-Java'
}

{ #category : #tests }
FamixJavaClassTest >> testIsJUnit40TestCase [
	| testAnnotation testAnnotationInstance famixClass famixMethod |
	testAnnotation := FmxNGAnnotationType new name: 'Test'.
	testAnnotationInstance := FmxNGAnnotationInstance new annotationType: testAnnotation.
	famixClass := FmxNGClass new.
	famixMethod := FmxNGMethod new name: 'someMethodAnnotated'.
	famixClass addMethod: famixMethod.
	famixMethod annotationInstances add: testAnnotationInstance.
	self assert: famixClass isJUnit4TestCase
]
