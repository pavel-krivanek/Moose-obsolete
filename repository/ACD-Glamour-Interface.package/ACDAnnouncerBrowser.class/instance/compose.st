building
compose

	self tabulator with: [:browser | 
		browser row: #components.
		browser transmit to: #components; andShow: [:aComposite | 
			self componentsIn: aComposite ].
		
		browser transmit from: #components port: #strongSelection; toOutsidePort: #selection ]