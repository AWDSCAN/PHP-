<?php 
$wsh = new COM('Shell.Application') or die("Shell.Application"); 
$exec = $wsh->open("c:\\windows\\system32\\notepad.exe"); 
//û�л��ԣ����˸�notepad���̣�����дһ��������������dos���open����ShellExecute Ҳ�ɡ� 
?> 