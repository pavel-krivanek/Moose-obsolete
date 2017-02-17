private
viewFameClasses: classes on: view

	^ view
		addObjects: classes;
		classname: #name;
		instanceVariables: #allAttributes;
		methodsNames: {};
		superclass: #superclass;
		treeLayout