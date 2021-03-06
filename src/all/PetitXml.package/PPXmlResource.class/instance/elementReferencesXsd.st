accessing-xsd
elementReferencesXsd
	<xml: #xsdXsd>
	<xsd>
	
	^ '<?xml version="1.0" encoding="UTF-8"?>
<schema
        xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:xsd="http://www.w3.org/2001/XMLSchema"
        xmlns:tns="http://soapinterop.org/types"
        targetNamespace="http://soapinterop.org/types">

    <complexType name="Struct">
        <sequence>
            <element name="varString" type="xsd:string"/>
            <element name="varInt" type="xsd:int"/>
            <element name="varFloat" type="xsd:float"/>
            <element name="varStruct" type="tns:Struct"/>
        </sequence>
    </complexType>

    <element name="attrTest" type="tns:Struct"/>

    <element name="attTests">
        <complexType>
            <sequence>
                <element ref="tns:attrTest" maxOccurs="5"></element>
            </sequence>
        </complexType>
    </element>



</schema>'