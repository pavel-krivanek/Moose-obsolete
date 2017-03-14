private
processPendingClassTodo
	
	todoClass copy do: [ :each |
			todoClass remove: each.
			self processClassMethod: each. 
			self processInstanceMethod: each ]