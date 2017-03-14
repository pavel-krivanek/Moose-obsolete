moose-chef-scoping-filtering
namespaceScope
	^ self container 
		ifNotNil: [ self container namespaceScope ]