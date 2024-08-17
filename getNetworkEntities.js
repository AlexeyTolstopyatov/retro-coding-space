// JScript was an JavaScript edition by Microsoft, for Internet Explorer
// Made in 1990s, as I remember, for more browser functionality
// 
// Through the WScript/CScript engines JScript documents
// have access to Windows API, (for exapmle): 
function initNet() {
    var WshNetwork, str; 
    
    WshNetwork = WScript.CreateObject("WScript.Network");
    
    str = "<h1>Network Information list</h1>\n\n";
    
    str += "<p>Page initialized from JScript document</p>";
    str += "<table><thead><tr><th>Key</th><th>Value</th></tr></thead>"
    str += "<tbody>"

    str += "<tr><td>NetBIOS</td><td>" + WshNetwork.ComputerName + "</td></tr>\n";
    str += "<tr><td>Session</td><td>" + WshNetwork.UserName + "</td></tr>\n";
    str += "<tr><td>Domain</td><td>" + WshNetwork.UserDomain + "</td></tr>\n\n";
    
    NetDisk = WshNetwork.EnumNetworkDrives();
    
    
    for (i = 0; i <= NetDisk.Count() - 1; i = i + 2) {  
        if (NetDisk(i)==''){
            continue;
        }  
        else {
             str += "<tr><td>" + i + "</td><td>" + NetDisk(i) + "  " + NetDisk(i+1) + "</td></tr>\n";
        }
    }
    
    Printers = WshNetwork.EnumPrinterConnections();
    for (i = 0; i <= Printers.Count() - 1; i++) {  
        if (Printers(i)==''){
            continue;
        }  
        else {
            str += "<tr><td>" + i + "</td><td>" + Printers(i) + "</td></tr>\n";
        }
    }

    if (NetDisk.Count() == 0) {
        str += "<tr><td>No Network drives</td></tr>";
    }

    if (Printers.Count() == 0) {
        str += "<tr><td>No Network printers</td></tr>";
    }

    str += "</tbody></table>";

    initPage(str);  
}

// JScript documents execution supports only by Internet Explorer,
// JavaScript support has an any browser
function initPage(info) 
{
    var ie;
    ie = WScript.CreateObject("InternetExplorer.Application");
    ie.navigate("about:blank");
    ie.ToolBar = false;
    ie.StatusBar = false;

    ie.Document.write(info + "");
    ie.Visible = 1
}

initNet();