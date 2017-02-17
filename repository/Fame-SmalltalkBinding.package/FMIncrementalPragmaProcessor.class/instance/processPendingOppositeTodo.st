private
processPendingOppositeTodo
	
	todoOpposite copy do: [ :each |
			todoOpposite remove: each.
			self processInstanceMethod: each ]