private building
debuggerIn: composite
	composite tree
		title: 'Debugger';
		format: [:resultNode | resultNode formattedText ];
		display: [ :result :sample :stream :parser | {PPParserDebuggerResult parse: sample with: parser } ];
		children: [:resultNode | resultNode children ].