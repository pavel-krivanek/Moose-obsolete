*petitgui-mondrian
namedParsers
    | result |
    result := OrderedCollection new.
    self namedParsersDo: [ :parser | result addLast: parser ].
    ^ result