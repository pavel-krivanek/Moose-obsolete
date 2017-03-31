hooks
buildMenu

	| mb |
	mb := RTMenuBuilder new.
	mb view: view.
	
	mb menu: 'scale' submenu: 'linear' background: Color red trans
			callback: [ scale := #yourself. self clearView. self buildMatrix ].
			
	mb menu: 'scale' submenu: 'sqrt' background: Color red trans
			callback: [ scale := #sqrt. self clearView. self buildMatrix ].

	mb menu: 'scale' submenu: 'log' background: Color red trans
			callback: [ scale := [ :value | (value + 1) log * 5 ] . self clearView. self buildMatrix ].

	mb menu: 'sorting' submenu: 'X-Name' background: Color red trans
			callback: [ sortX := [ :assoc | assoc key ]. self clearView. self buildMatrix ].
	mb menu: 'sorting' submenu: 'Y-Name' background: Color red trans
			callback: [ sortY := [ :assoc | assoc key ]. self clearView. self buildMatrix ].

	mb menu: 'sorting' submenu: 'X-amount of connections' background: Color red trans
			callback: [ sortX := [ :assoc | assoc value size ]. self clearView. self buildMatrix ].
	mb menu: 'sorting' submenu: 'Y-amount of connections' background: Color red trans
			callback: [ sortY := [ :assoc | assoc value size ]. self clearView. self buildMatrix ].

	mb menu: 'sorting' submenu: 'X-sum weight' background: Color red trans
			callback: [ sortX := [ :assoc | (assoc value collect: [ :as | as value value ]) sum ]. self clearView. self buildMatrix ].
	mb menu: 'sorting' submenu: 'Y-sum weight' background: Color red trans
			callback: [ sortY := [ :assoc | (assoc value collect: [ :as | as value value ]) sum ]. self clearView. self buildMatrix ].
		
	mb build.