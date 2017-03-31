private
doNodeTraverse
	" the current traversal phase "
	
	" always traverse a scheduled node "
	onNodeTraverse dtTraverse: current using: self.	
