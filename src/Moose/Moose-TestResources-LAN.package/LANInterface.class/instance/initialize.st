initialize-release
initialize 
	 
	| selectionHolder | 
	super initialize. 
	self flag: #commentedForSq.
	"self nodeList list: DependentList new. 
	selectionHolder := self nodeList selectionHolder. 
	nodeName := (AspectAdaptor forAspect: #name) subjectChannel: 
			selectionHolder. 
	nextNode := (AspectAdaptor forAspect: #nextNode) 
		subjectChannel: selectionHolder; 
		subjectSendsUpdates: true"