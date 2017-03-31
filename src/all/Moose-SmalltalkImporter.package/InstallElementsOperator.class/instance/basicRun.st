running
basicRun 
	 
	model entityStorage forSetup. 
	self container 
		do: 
			[:each |  
			model add: each. 
			self increment]. 
	model entityStorage forRuntime