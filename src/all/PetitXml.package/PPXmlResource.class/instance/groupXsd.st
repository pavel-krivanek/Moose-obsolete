accessing-xsd
groupXsd
	<xml: #xsdXsd>
	<xsd>
	
	^ '<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://www.w3.org/2001/XMLSchema"
        xmlns:xsd="http://www.w3.org/2001/XMLSchema"
        xmlns:tns="http://soapinterop.org/types"
        targetNamespace="http://soapinterop.org/types">

  <group name="priceGroup">
    <annotation>
      <documentation xml:lang="en">
                A price is any one of the following:
                    * Full Price (with amount)
                    * Sale Price (with amount and authorization)
                    * Clearance Price (with amount and authorization)
                    * Free (with authorization)
      </documentation>
    </annotation>
    <choice id="pg.choice">
      <element name="fullPrice" type="decimal"/>
      <element name="salePrice" type="decimal"/>
      <element name="clearancePrice" type="decimal"/>
      <element name="freePrice" type="decimal"/>
    </choice>
  </group>

  <element name="price">
    <complexType>
      <group ref="tns:priceGroup" />
    </complexType>
  </element>

</schema>'