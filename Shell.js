// ** retro-coding space **
// Microsoft JScript using

function CreateFolder()
{
    var fso, fldr;
    fso = new ActiveXObject("Scripting.FileSystemObject");
    fldr = fso.CreateFolder("C:\\MyTest");
}
function ConvertDate(offsetDays)
{
    if (typeof (offsetDays) == "undefined")
    {
        offsetDays = 0;
    }

    dateObj.setDate(dateObj.getDate() + offsetDays);

    var s = dateObj.getYear() + "-";     //Year
    s += (dateObj.getMonth() + 1) + "-"; //Month (zero-based)
    s += dateObj.getDate();              //Day

    return (s);
}

CreateFolder();

