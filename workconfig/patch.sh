# At the same DIRECTORY PATH.
diff -ruNa win win.mod/ > mypatch
# r �ݹ�
# u Ĭ�ϵ�����������
# N ��ȱ�ٵ��ļ����ɿ��ļ���
# a ȫ�������ı��ļ���
#
patch -p0 < mypatch 
patch -p0 < mypatch 

patch -d directory  �򲹶�ǰ�����ĵ�ǰĿ¼��ָ��Ŀ¼


-p{NUM}


���NUM��ָ�������ļ��е�Ŀ¼��ȥ�꼸���㼶��
��������androidĿ¼�� 
diff  externel/webkit > patch.my

������webkitĿ¼�´򲹶�ʱ�����ڲ����ļ�patch.my���������·���� externel/webkit/����������
�������WebkitĿ¼�򲹶�ʱ��Ҫȥ�������ļ��е�externel/webkit/ ����������Ŀ¼�����
��ʹ��p2�򲹶���

patch -p2 < patch.my




