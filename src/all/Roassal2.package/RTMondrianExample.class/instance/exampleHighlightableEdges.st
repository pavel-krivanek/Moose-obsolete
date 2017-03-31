sources
exampleHighlightableEdges

| b edges |
b := RTMondrian new.
b shape circle size: 10; color: Color red.
b nodes: (1 to: 20).

edges := b edges moveBehind; connectFrom: [ :v | v // 2 ].
edges @ RTHighlightable.
edges @ (RTPopup text: [ :association | 'An edge from ', association key asString, ' to ', association value asString ]).
b layout cluster.
^ b