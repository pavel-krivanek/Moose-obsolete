specs
defaultSpec 
	<spec: #default>
	^ SpecLayout composed
		newColumn: [:tcol|
			tcol newRow: [:trow|
				trow newColumn: [:left |
					left
						add: #label height: self toolbarHeight;
						add: #text ;
						add: #button height: self toolbarHeight ] width: 400.
				trow add: #diagram]].