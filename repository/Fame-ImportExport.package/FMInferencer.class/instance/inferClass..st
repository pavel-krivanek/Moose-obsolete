inferring
inferClass: anAbstractElement 
	
	builder new: 'FM3.Class' with: [
		builder id: anAbstractElement serial.
		builder add: 'name' with: anAbstractElement simpleName.
		builder add: 'attributes' with: [ 
			self inferProperties: anAbstractElement ]]