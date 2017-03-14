accessing
buildBrowser
	browser := GLMTabulator new.
	browser column: #one.
	browser transmit 
		to: #one; 
		andShow: [:a | a text display: [:sourceAnchor | sourceAnchor completeText ]].
	browser transmit 
		fromOutsidePort: #entity; 
		to: #one port: #selectionInterval; 
		transformed: [:sourceAnchor | sourceAnchor intervalAsCharPos ];
		when: [:sourceAnchor | sourceAnchor notNil ].
	^ browser