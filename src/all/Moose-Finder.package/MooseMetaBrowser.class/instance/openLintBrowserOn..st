private
openLintBrowserOn: aFMMetaRepository

	| classes |
	classes := aFMMetaRepository classes collect: [:meta| meta implementingClass].
	CriticBrowser 
		openOnRule: self metamodelLintRules 
		onEnvironment: (RBBrowserEnvironment new forClasses: classes)