private
start
	stream := StandardFileStream forceNewFileNamed: spec root label, '.html'.
	stream ascii.
	stream nextPutAll: '<html>'; lf.
	stream nextPutAll: '<head>
<style>
body { font-family:"Arial" }
pre {color: gray; font-size: 8pt;}
h3 { margin-top: 40px; }
ul { list-style: none; margin-top: 20px; }
li { margin-top: 5px; }

</style>
</head>'.
	stream 
		nextPutAll: '<body>'; 
			nextPutAll: '<h1>';
			nextPutAll: (self encode: spec root label); 
			nextPutAll: '</h1>';
			lf