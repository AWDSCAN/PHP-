<?php
function addFileToZip($path,$zip){
    $handler=opendir($path); //�򿪵�ǰ�ļ�����$pathָ����
    while(($filename=readdir($handler))!==false){
        if($filename != "." && $filename != ".."){//�ļ����ļ�����Ϊ'.'�͡�..������Ҫ�����ǽ��в���
            if(is_dir($path."/".$filename)){// �����ȡ��ĳ���������ļ��У���ݹ�
                addFileToZip($path."/".$filename, $zip);
            }else{ //���ļ�����zip����
                $zip->addFile($path."/".$filename);
            }
        }
    }
    @closedir($path);
}


$zip=new ZipArchive();
if($zip->open('images.zip', ZipArchive::OVERWRITE)=== TRUE){
    addFileToZip('/home/neirongo/lanboke.info/wp-content/themes/wp-Qzero/', $zip); //���÷�������Ҫ����ĸ�Ŀ¼���в���������ZipArchive�Ķ��󴫵ݸ�����
    $zip->close(); //�رմ����zip�ļ�
}
?>