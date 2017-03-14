building
buildBrowser
	"self openOn: MooseModel root allModels last"

	| invokedNamespaces allInvokedNamespaces source layoutEdges |
	browser := GLMTabulator new.
	browser title: [ :model | 'Dependency Browser on ' , model name ].
	browser
		row: #navigation;
		row: #details.
	browser transmit
		to: #navigation;
		andShow: [ :a | a custom: MooseCodeNavigator new browser ].
	browser transmit
		to: #details;
		from: #outer port: #entity;
		from: #navigation port: #namespace;
		from: #navigation port: #class;
		from: #navigation port: #method;
		andShow: [ :a | self detailsIn: a ].
	browser transmit
		to: #navigation port: #namespaceToSelect;
		from: #details.
	^ browser