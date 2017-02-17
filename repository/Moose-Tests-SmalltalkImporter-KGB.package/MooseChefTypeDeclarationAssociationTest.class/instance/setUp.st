running
setUp 
	 
	| p1 p2 c1 c2 c3 m1 m2 m3 m4 at1 at2 pr1 pr2 v1 |
		
	p1 := FAMIXPackage new name: 'p1' ; stub: true ; yourself.
	p2 := FAMIXPackage new name: 'p2' ; stub: true ; yourself.

	c1 := FAMIXClass new
			stub: true ;
			name: 'C1' ;
			parentPackage: p1 ;
			yourself.
	c2 := FAMIXClass new
			stub: true ;
			name: 'C2' ;
			parentPackage: p1 ;
			yourself.
	c3 := FAMIXClass new
			stub: true ;
			name: 'C3' ;
			parentPackage: p2 ;
			yourself.

	m1 := FAMIXMethod new
			stub: true ;
			name: 'm1' ;
			signature: 'm1()' ;
			parentType: c1 ;
			parentPackage: p1 ;
			declaredType: c2 ;
			yourself.
	m2 := FAMIXMethod new
			stub: true ;
			name: 'm2' ;
			signature: 'm2()' ;
			parentType: c2 ;
			parentPackage: p1 ;
			declaredType: c3 ;
			yourself.
	m3 := FAMIXMethod new
			stub: true ;
			name: 'm3' ;
			signature: 'm3(C2,C3)' ;
			parentType: c2 ;
			parentPackage: p1 ;
			declaredType: c1 ;
			yourself.
	m4 := FAMIXMethod new
			stub: true ;
			name: 'm4' ;
			signature: 'm4()' ;
			parentType: c3 ;
			parentPackage: p2 ;
			declaredType: c3 ;
			yourself.
		
	v1 := FAMIXLocalVariable new
			stub: true ;
			name: 'v1' ;
			parentBehaviouralEntity: m2 ;
			parentPackage: p1 ;
			declaredType: c1 ;
			yourself.

	pr1 := FAMIXParameter new
			stub: true ;
			name: 'pr1' ;
			parentBehaviouralEntity: m3 ;
			parentPackage: p1 ;
			declaredType: c2 ;
			yourself.
	pr2 := FAMIXParameter new
			stub: true ;
			name: 'pr2' ;
			parentBehaviouralEntity: m3 ;
			parentPackage: p1 ;
			declaredType: c3 ;
			yourself.
		
	at1 := FAMIXAttribute new
			stub: true ;
			name: 'at1' ;
			parentType: c1 ;
			parentPackage: p1 ;
			declaredType: c3 ;
			yourself.
	at2 := FAMIXAttribute new
			stub: true ;
			name: 'at2' ;
			parentType: c3 ;
			parentPackage: p2 ;
			declaredType: c2 ;
			yourself.
	
	self model: (MooseModel new
		add: p1 ;
		add: p2 ;
		add: c1 ;
		add: c2 ;
		add: c3 ;
		add: m1 ;
		add: m2 ;
		add: m3 ;
		add: m4 ;
		add: v1 ;
		add: at1 ;
		add: at2 ;
		add: pr1 ;
		add: pr2 ;
		yourself).
