Feature: JSON feature testing
  Scenario: JSON reader
    * def jsonObject =
    """
  [
     {
        "name" : "tom",
      "city" : "bangalore",
      "age" : 23
     }
     {
        "name" : "peter",
      "city" : "LA",
      "age" : 24
     }
  ]
  """
    * print jsonObject
    * print jsonObject[0].name
    * print jsonObject[1].name

 Scenario: Complex json reader

   * def jsonObject =
   """
   {"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}}
   """
   * print jsonObject
   * print jsonObject.menu.id
   * print jsonObject.menu.popup
   * print jsonObject.menu.popup.menuitem[0].value