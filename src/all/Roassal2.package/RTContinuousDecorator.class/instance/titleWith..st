public
titleWith: labelShape
	self popupDo: [ :popup |
		self defaultsForPopup: popup.
		
		popup background: Color white group: [ :group  :evt | | x |
			x := self xFor: evt.
			labelShape
				ifNotNil: [ group add: (labelShape elementOn: x) ].
			self buildLegendFor: x in: group ].
		
		popup pointers: [ :g :evt | | x |
			x := self xFor: evt.
			self buildPointerFor: x in: g.
			 ]
		 ].