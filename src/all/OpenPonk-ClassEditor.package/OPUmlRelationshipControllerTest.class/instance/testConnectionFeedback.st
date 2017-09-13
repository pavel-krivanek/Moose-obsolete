tests - creation
testConnectionFeedback
	| sourceController targetController feedback feedbackLine |
	sourceController := diagramController newControllerFor: (OPUMLClass new name: 'A').
	targetController := diagramController newControllerFor: (OPUMLClass new name: 'B').
	diagramController addController: sourceController.
	diagramController addController: targetController.
	sourceController showInDiagram: diagramController.
	targetController showInDiagram: diagramController.
	sourceController addAsSourceFor: controller.
	feedback := controller connectionFeedback.
	feedback renderIn: diagramController view.
	self assert: diagramController view edges isNotEmpty.
	feedbackLine := diagramController view edges first.
	self assert: feedbackLine from equals: sourceController figure.
	targetController addAsTargetFor: controller.
	feedbackLine remove.
	self deny: (diagramController view edges includes: feedbackLine)