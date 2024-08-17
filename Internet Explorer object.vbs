' Call Internet Explorer 
set ie = CreateObject("InternetExplorer.Application")

' Configure Internet Explorer
ie.Navigate "about:blank"
ie.ToolBar = False
ie.StatusBar = False

' Writings on the wall
ie.Document.Write "<h1>Web Document created using VBS</h1>"
ie.Document.Write "<p>Name=" & ie.Name & "</p>"
ie.Document.Write "<p>Full Name=" & ie.FullName & "</p>"
ie.Document.Write "<p>Type=" & ie.Type & "</p>"

' Show Window
ie.Visible = 1
