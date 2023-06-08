Feature: Json Feature testing

Scenario: Json reader parser
    * def jsonObject = 
    """
        [
            {
                "firstName" : "Arghajit",
                "lastName" : "Singha",
                "company" : "ZemosoLabs Pvt. Ltd.",
                "age" : "24",
                "position" : "QA Engineer"
            },
            {
                "firstName" : "Shaket",
                "lastName" : "Tandon",
                "company" : "ZemosoLabs Pvt. Ltd.",
                "age" : "28",
                "position" : "Tech Lead Engineer"
            }
        ]
    """
    * print jsonObject
    * print jsonObject[0]
    * print jsonObject[0].firstName
    * print jsonObject[1].position
    * print jsonObject[0].firstName + " " + jsonObject[0].lastName + ", age " + jsonObject[0].age + ", works in " + jsonObject[0].company + " as a " + jsonObject[0].position

Scenario: Complex Json reader parser
    * def ComplexJsonObject = 
    """
        [
            {
    "glossary": {
        "title": "example glossary",
		"GlossDiv": {
            "title": "S",
			"GlossList": {
                "GlossEntry": {
                    "ID": "SGML",
					"SortAs": "SGML",
					"GlossTerm": "Standard Generalized Markup Language",
					"Acronym": "SGML",
					"Abbrev": "ISO 8879:1986",
					"GlossDef": {
                        "para": "A meta-markup language, used to create markup languages such as DocBook.",
						"GlossSeeAlso": ["GML", "XML"]
                    },
					"GlossSee": "markup"
                }
            }
        }
    }
}
        ]
    """
        * print "Inside this json, there are " + (ComplexJsonObject[0].glossary.GlossDiv.GlossList.GlossEntry.GlossDef.GlossSeeAlso).length + " type(s) of GlossSeeAlso, they are : " + ComplexJsonObject[0].glossary.GlossDiv.GlossList.GlossEntry.GlossDef.GlossSeeAlso[0] + " and " + ComplexJsonObject[0].glossary.GlossDiv.GlossList.GlossEntry.GlossDef.GlossSeeAlso[1]