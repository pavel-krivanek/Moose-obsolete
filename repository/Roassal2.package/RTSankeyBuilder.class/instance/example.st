as yet unclassified
example
	"| data sankey nodeAt |
data := ZnClient new 
	url: 'http://bost.ocks.org/mike/sankey/energy.json';
	contentReader: [ :entity | NeoJSONReader fromString: entity contents ];
	get.

nodeAt := [ :v | (data at: 'nodes') at: v + 1 ].
sankey := RTSankeyBuilder new.
sankey shape width: 15.
sankey extent: 960@500;
	nodePadding: 10;
	nodes: (data at: 'nodes');
	links: (data at: 'links');
	linkFrom: [:link | nodeAt value: (link at: 'source') ];
	linkTo: [ :link | nodeAt value: (link at: 'target') ];
	linkValue: [ :link | link at: 'value' ];
	iterations: 32.
sankey build.
^ sankey view."