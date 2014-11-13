#!/usr/bin/env python
# -*- coding: utf-8 -*-
#导入smtplib和MIMEText
import smtplib
import os 
import time
from email.mime.text import MIMEText
#############
#要发给谁，这里发给2个人
mailto_list=["297002565@qq.com",]
#####################
#设置服务器，用户名、口令以及邮箱的后缀
mail_host="smtp.163.com"
mail_user="runner"
mail_pass="test"
mail_postfix="163.com"
prev_ip="193.23.324.3"
######################
def send_mail(to_list,sub,content):
    '''
    to_list:发给谁
    sub:主题
    content:内容
    send_mail("aaa@126.com","我的标题","这是我的内容")
    '''
    me="系统管理员"+"<"+mail_user+"@"+mail_postfix+">"
    os.system('curl ifconfig.me > ~/.externalAddr')
    content = os.popen('cat ~/.externalAddr').readlines()
    global prev_ip
    print "prev_ip", prev_ip
    print "cur_ip", str(content)

    if prev_ip == str(content):
        return True
    msg = MIMEText(str(content))
    prev_ip = str(content)
    msg['Subject'] = sub
    msg['From'] = "系统管理员<Sender@qq.com>"
    msg['To'] = ";".join(to_list)
    try:
        s = smtplib.SMTP()
        s.connect(mail_host)
        s.login(mail_user,mail_pass)
        s.sendmail(me, to_list, msg.as_string())
        print "send complete"
        s.close()
        return True
    except Exception, e:
        print str(e)
        return False

if __name__ == '__main__':
    while True:
        if send_mail(mailto_list,"新的IP地址" ,"这是我的内容"):
            print "Email 发送成功"
        else:
            print "Eamil 发送失败"
        time.sleep(1800)

