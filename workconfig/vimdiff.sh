#!/bin/sh
# ������ϲ����diff����·��
DIFF="vimdiff"
# SVN diff����ᴫ�������ļ��Ĳ��� 
LEFT=${6}
RIGHT=${7}
# ƴ�ӳ�diff��������Ҫ�������ʽ
$DIFF $LEFT $RIGHT