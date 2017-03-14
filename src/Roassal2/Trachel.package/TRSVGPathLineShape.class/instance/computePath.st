private
computePath
	path := self athensCanvas
		createPath: [ :builder | 
			pathCommands
				do: [ :each | builder perform: each first withArguments: each second ] ]