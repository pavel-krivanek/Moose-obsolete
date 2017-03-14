grammar-literals-string
primaryWithselectors 
	^ super primaryWithselectors ==> [:node |
		"JK: I have no idea, what this fold is supposed to do, 
		 but #object: causes DNU, so I commented it out
		"
		node first ]
		"(node second asOrderedCollection addFirst: node first; yourself) fold: [:inner :outer | outer object: inner]]
		"