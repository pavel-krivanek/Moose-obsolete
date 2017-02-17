accessing
computeResult
	| explicitBrowser referencingMethods showOn a |
	explicitBrowser := self model allModelClasses entityNamed: #'Smalltalk::GLMExplicitBrowser'.
	showOn := explicitBrowser methods detect: [:each | each name = #'showOn:'].
	referencingMethods := showOn incomingInvocations collectAsSet: [:each | each from].
	^ referencingMethods asMooseGroup