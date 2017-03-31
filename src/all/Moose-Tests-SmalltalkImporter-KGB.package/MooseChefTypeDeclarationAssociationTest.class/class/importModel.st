setup
importModel 
	 
	| p1 p2 c1 c2 c3 m1 m2 m3 m4 a1 a2 |
	
	p1 := FAMIXPackage new name: 'p1' ; yourself.
	p2 := FAMIXPackage new name: 'p2' ; yourself.
	
	c1 := FAMIXClass new
			name: 'c1' ;
			container: p1 ;
			yourself.
	c2 := FAMIXClass new
			name: 'c2' ;
			container: p1 ;
			yourself.
	c3 := FAMIXClass new
			name: 'c3' ;
			container: p2 ;
			yourself.

	m1 := FAMIXMethod new
			name: 'm1' ;
			signature: 'm1()' ;
			container: c1 ;
			declaredType: c2 ;
			yourself.
	m2 := FAMIXMethod new
			name: 'm2' ;
			signature: 'm2()' ;
			container: c2 ;
			declaredType: c3 ;
			yourself.
	m3 := FAMIXMethod new
			name: 'm3' ;
			signature: 'm3()' ;
			container: c2 ;
			declaredType: c1 ;
			yourself.
	m4 := FAMIXMethod new
			name: 'm4' ;
			signature: 'm4()' ;
			container: c3 ;
			declaredType: c3 ;
			yourself.
			
	self model
		add: p1 ;
		add: p2 ;
		add: c1 ;
		add: c2 ;
		add: c3 ;
		add: m1 ;
		add: m2 ;
		add: m3 ;
		add: m4.