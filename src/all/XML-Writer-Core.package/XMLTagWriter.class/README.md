This class writes XML tags. You can specifiy the attributes of the start tag using the #attribute* messages, and you can add xmlns: namespace declarations using the #xmlns* messages.

Empty elements will generate self-closed tags like "<empty/>" unless isCanonical is enabled or outputsSelfClosingTags is disabled.

Redundant namespace declarations won't be generated unless omitsRedundantXMLNSDeclarations is disabled.