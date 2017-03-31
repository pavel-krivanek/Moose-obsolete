private
freshID 
	"Answer a fresh ID, which is unique within Moose." 
	 
	nil == MooseID ifTrue: [MooseID := 0]. 
	MooseID := 1 + MooseID. 
	MooseID > SmallInteger maxVal
		ifTrue: 
			[Notification 
				signal: 
					('Moose''s internal element IDs are exceeding the range of SmallInteger, ' 
						, 
							'this may cause system slow down.<n> Please contact <1s> for more information.' 
						expandMacrosWith: self mooseDev)]. 
	^MooseID