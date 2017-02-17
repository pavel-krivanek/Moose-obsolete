examples
exportAll
	"
	self new exportAll
	"
	| examples index stream views name exporter st blacklist v view |
	(self confirm: 'Are you sure to run this example? Warning: Several files are created') ifFalse: [ ^ self ].
blacklist := OrderedCollection new
	add: RTOpenStreetMapExample;
	add: RTAnimatedScatterPlotExample;
	add: RTAnimationExample;
	add: RTConstraintExample;
	add: RTExploraBuilderExample;
	add: RTLineDecorationExample;
	add: RTDynamicStackerGrapherExample.
examples := ((RTAbstractExample subclasses select: [ :cls | (blacklist includes: cls) not ] )collect: #new) sortedAs: #label.
index := TRPlatform current workingDirectory / 'index.html'.
index exists ifTrue: [ index delete ].
stream := index writeStream.
views := Dictionary new.
examples doWithIndex: [ :ex :i | | link |
	v := RTView new.
	v @ RTDraggableView @ RTZoomableView .
	ex gtOpenOn: v.
	name := views size printStringHex.
	views at: ex put: name.
	
	v elements copy do: [ :e| |n |
		n := views size printStringHex.
		views at: e model put: n.
		(e model method = (RTSpectrographExample >> #exampleRoassalVisualization)) ifTrue: [ 
			v canvas removeShape: (e attributes at: #RTLabelledLabel).
			v removeElement: e. ]
		ifFalse: [ 
			view := e model returnValue.
			[ (view isKindOf: RTBuilder) ifTrue: [ view build. view := view view ].
			view @ RTDraggableView @ RTZoomableView.
			exporter := RTHTML5Exporter new 
				fileName: n, '.html';
				shouldCreateJS: false.
			exporter createStream.
			st := exporter stream.
			exporter export: view toStream: st ] on: Error do: [
				st close.
				v canvas removeShape: (e attributes at: #RTLabelledLabel).
				v removeElement: e ].
		].
	].
	
	RTGridLayout new
		gapSize: 50;
		on: v elements.
	link := RTLinkView new name: [:e | views at: e ].
	v elements @ link.
	
	RTHTML5Exporter new 
		fileName: name, '.html';
		shouldCreateJS: i = 1;
		export: v.
	].

[
	stream 
		nextPutAll: '
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Example Browser</title>
        <meta name="description" content="simple example browser">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/demo.css">
        <link rel="stylesheet" href="css/default.css">
        <!-- Pushy CSS -->
        <link rel="stylesheet" href="css/pushy.css">
        
        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="js/highlight.pack.js"></script>
    </head>
    <body class="pushy-open-left">
        <header class="site-header push">
            <div class="menu-btn">&#9776; Menu</div><div id="title">Simple example</div>
            <div class="objectprofile"><a href="http://objectprofile.com"><img src="../img/opsmall.png"/>Object Profile</a></div></header>
        <nav class="pushy pushy-left">
            <ul>'.
		examples do: [ :ex |
			stream 
				nextPutAll: '
                <li id="';
				nextPutAll: (views at: ex);
				nextPutAll: '"></li>.'
			 ].
		stream nextPutAll: '
            </ul>
        </nav>
        <div id="container">
            <iframe id="frame"></iframe>
            <pre><code class="html" id="source"></code></pre>
        </div>
        <script>
            var titles = [];'.
		examples do: [ :ex | 
			stream 
				nextPutAll: '
            titles[''';
				nextPutAll: (views at: ex);
				nextPutAll: '''] = ''';
				nextPutAll: ex label;
				nextPutAll: ''';'. ].
		stream nextPutAll: '
				var sources = [];'.
		examples do: [ :ex | 
			ex gtExamples do: [ :examp| 
				stream 
					nextPutAll: '
				sources[''';
				 	nextPutAll: (views at: examp);
					nextPutAll: '''] = ''';
					nextPutAll: (TRPlatform current mimeEncode: examp method asString readStream multiLine: false);
					nextPutAll: ''';'. ] ].
		stream nextPutAll: '
        </script>
        <script src="js/pushy.js"></script>
        <script src="js/examples.js"></script>
    </body>
</html>
'
	] ensure: [ stream close ].
views