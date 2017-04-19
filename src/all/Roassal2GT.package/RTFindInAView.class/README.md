Useful interaction to let one search for elements contained in a view

[[[
| b |			
b := RTMondrian new.
b shape box.
b nodes: Collection withAllSubclasses.
b normalizer normalizeWidth: #numberOfVariables; normalizeHeight: #numberOfMethods.
b layout flow.
b view @ RTFindInAView.
b
]]]			