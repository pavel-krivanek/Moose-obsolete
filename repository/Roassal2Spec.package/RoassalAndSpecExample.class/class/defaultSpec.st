specs
defaultSpec 
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :tcol|
					tcol
						add: #label height: self toolbarHeight;
						add: #button1 height: self toolbarHeight;
						add: #button2 height: self toolbarHeight;
						add: #diagram ]