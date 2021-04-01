At the terminal, run the following commands to configure the AWS CLI credential helper for HTTPS connections:

git config --global credential.helper '!aws codecommit credential-helper $@'
git config --global credential.UseHttpPath true

******************************************************
From the terminal on your local machine, run the ssh-keygen command, 
and follow the directions to save the file to the .ssh directory for your profile.
$ ssh-keygen

Generating public/private rsa key pair.
Enter file in which to save the key (/home/user-name/.ssh/id_rsa): Type /home/your-user-name/.ssh/ and a file name here, for example /home/your-user-name/.ssh/codecommit_rsa

Enter passphrase (empty for no passphrase): <Type a passphrase, and then press Enter>
Enter same passphrase again: <Type the passphrase again, and then press Enter>

Your identification has been saved in /home/user-name/.ssh/codecommit_rsa.
Your public key has been saved in /home/user-name/.ssh/codecommit_rsa.pub.
The key fingerprint is:
45:63:d5:99:0e:99:73:50:5e:d4:b3:2d:86:4a:2c:14 user-name@client-name
The key's randomart image is:
+--[ RSA 2048]----+
|        E.+.o*.++|
|        .o .=.=o.|
|       . ..  *. +|
|        ..o . +..|
|        So . . . |
|          .      |
|                 |
|                 |
|                 |
+-----------------+
2. Run the following command to display the value of the public key file (codecommit_rsa.pub):

cat ~/.ssh/codecommit_rsa.pub
3. Sign in to the AWS Management Console and open the IAM console 
4. In the IAM console, in the navigation pane, choose Users, and from the list of users, choose your IAM user.

5. On the user details page, choose the Security Credentials tab, and then choose Upload SSH public key.

6. Paste the contents of your SSH public key into the field, and then choose Upload SSH public key.

7. Copy or save the information in SSH Key ID (for example, APKAEIBAERJR2EXAMPLE).
8. On your local machine, use a text editor to create a config file in the ~/.ssh directory, and then add the following lines to the file, where the value for User is the SSH key ID you copied earlier:

Host git-codecommit.*.amazonaws.com
  User APKAQPPUYRNLAM734KUN
  IdentityFile ~/.ssh/id_rsa
 name the file config
9. From the terminal, run the following command to change the permissions for the config file:

chmod 600 config
