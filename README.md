ubuntu is based on Debian, 14-10 Desktop, 32-bit
---------------------------------------------------------

Ruby installation (ruby1.9.3p551, rails 4.2.0)

1. make sure rvm (Ruby Version Manager) installed and work properly.
http://rvm.io/rvm/install

source ~/.rvm/scripts/rvm #to load up
type rvm | head -n 1 # to see if it is working
rvm is a function # if you can see this, rvm is working

2. rvm list known # What version of Ruby are there ready to install

3. rvm install 1.9.3

4. Start from step 1 after rebooting.

5. How to automatically load up source ~/.rvm/scripts/rvm after rebooting?

sudo gedit etc/profile, insert source ~/.rvm/scripts/rvm

now, rvm is automatically loaded up after rebooting
-------------------------------------------------------------

Git initialization

1. Create a new repository at http://www.github.com by clicking plus sign on the right of my user name.

2. rails new demo_app, under workspace folder in GNOME Terminal, for creating a brand new app called demo_app

3. Then,
git init
git add -A
git commit -m "first commit"
git remote add origin https://github.com/danlideng/demo_app.git
git push -u origin master

4. You can create, rails new demo_app, locally first, then github.com website second. But the folder name, demo_app must be exactly the same.

5. git push -u https://github.com/danlideng/depot.git master
# if you set up the master incorrectly at first, then you can correct it. 

Switch to git.oschina.net due to support a team of 1000 developers privately.

git add -A
git commit -m "first commit"
git remote add origin https://git.oschina.net/danlideng/depot_42.git
User Name: myformalfullname
password: dog
git push -u origin master
-----------------------------------------------------

Phussion Passenger, 

https://www.phusionpassenger.com/documentation/Users%20guide%20Apache.html#install_add_apt_repo

gem install passenger --version 4.0.58
----------------------------------------------------------


notiffany 0.0.6 was corrupted and pre-existed.

delete or remove it from local folder.

then gem install notiffany again,

then bundle install everything else.

follow the instruction on screen.
-----------------------------------------------------

All above created before Aug 25, 2016
----------------------------------------------------
====================================================

locate -i "filename" # to find a file.

click on "computer" to root directory
----------------------------------------------------------

dpkg --get-selections | grep -v deinstall 
# to see the list of all installed packages, but how to see those on top?

dpkg --get-selections | grep postgresql
# to find if one particular package is installed, in this case, it is postgresql. However, there is no message if it cannot find anything, or an error.

dpkg --get-selections | grep -v deinstall > ~/Desktop/packages
# to save a list of all installed packages in a file called, packages on Desktop. The strange thing is that I don't see ruby package in the list. Why?

dpkg -l > ~/Desktop/againss
# to save a list of all installed packages in a file called, againss on Desktop with description and version number. Now I can original ruby 1.9.1 in there.

---------------------------------------------------------------------------

postgres=# \c weus
You are now connected to database "weus" as user "postgres".
weus=# \d
No relations found.
weus=# create table department(id int primary key not null, dept char(50) not null);
CREATE TABLE
weus=# \d
           List of relations
 Schema |    Name    | Type  |  Owner   
--------+------------+-------+----------
 public | department | table | postgres
(1 row)

postgres=# select * from pg_user;
postgres=# ALTER USER danli CREATEDB;
ALTER ROLE
# this would allow user danli to create databases and tables in pgAdmin III.

postgres=# ALTER USER danli WITH SUPERUSER;
ALTER ROLE
# How come danli not allowed to create role for others?

-------------------------------------------------
danli@danli-HP:~$ sudo -i
[sudo] password for danli: 
-bash: /root/.rvm/scripts/rvm: No such file or directory
root@danli-HP:~# su - postgres
-su: /var/lib/postgresql/.rvm/scripts/rvm: No such file or directory

postgres@danli-HP:~$ psql
psql (9.3.14)
Type "help" for help.

postgres=# \l
-----------------------------------------------

DATABASE BACKUP AND RESTORE

c:\PostgreSQL\9.3\bin>pg_dumpall > xiao6
#In windows 10, back up all databases into a file called xiao6

#in ubuntu, xiao6 is in Documents directory and copied from windows 10,
danli@danli-HP:~/Documents$ sudo cp -i xiao6 /usr

danli@danli-HP:~$ sudo -i
[sudo] password for danli: 
-bash: /root/.rvm/scripts/rvm: No such file or directory
root@danli-HP:~# su - postgres
-su: /var/lib/postgresql/.rvm/scripts/rvm: No such file or directory

postgres@danli-HP:~$ psql -f /usr/xiao6 postgres
# to reload or restore database from backup file, xiao6
----------------------------------------------------------------------------

/usr/xiao6
/usr/lib/postgresql/9.3/bin/xiao6pg_backup
root@danli-HP:/usr# locate 'inroot.txt'
root@danli-HP:/usr# ls
bin  games  include  inroot.txt  lib  local  sbin  share  src  var  xiao6
root@danli-HP:/usr# 
---------------------------------------------------------------------------

rails new -d postgresql cablechat -T

rails db:migrate
---------------------------------------------------------------

sudo lshw | less
# for showing hardware info

------------------------------------------------------------

Database backup in heroku

root@danli-HP:/home/danli/workspace/xiao7pg-ruby231# heroku pg:backups
# to check if there is a backup

root@danli-HP:/home/danli/workspace/xiao7pg-ruby231# heroku pg:backups delete b001
# to delete a backup file called b001

root@danli-HP:/home/danli/workspace/xiao7pg-ruby231# heroku pg:backups capture
# to backup a database for xiao7pg-ruby231

root@danli-HP:/home/danli/workspace/xiao7pg-ruby231# heroku pg:backups public-url b002 | cat
# to give b002 a downloadable url for one hour. file name of b002 would be changed to c4578a93-ac43-4a51-87d9-423e4179ee18

danli@danli-HP:~/workspace/xiao7pg-ruby231$ pg_restore --verbose --clean --no-acl --no-owner -h localhost -U danli -d xiao7pg-ruby231_development c4578a93-ac43-4a51-87d9-423e4179ee18

# c4578a93-ac43-4a51-87d9-423e4179ee18 is the name of a database backup file which got downloaded and copyed to local /xiao7pg-ruby231 folder. However, OLD records would be deleted by newly restored data.
-------------------------------------------------------
351906071@qq.com

danli@danli-HP:~/workspace/ywh$ heroku apps:rename ywh
Renaming murmuring-fjord-14451 to ywh... done
https://ywh.herokuapp.com/ | https://git.heroku.com/ywh.git
Git remote heroku updated

------------------------------------------------

danli@danli-HP:~/workspace/ywh$ heroku pg:psql
---> Connecting to DATABASE_URL
psql (9.3.14, server 9.5.4)
WARNING: psql major version 9.3, server major version 9.5.
         Some psql features might not work.
SSL connection (cipher: ECDHE-RSA-AES256-GCM-SHA384, bits: 256)
Type "help" for help.

ywh::DATABASE=> select * from securities;

-----------------------------------------------------

danli@danli-HP:~/workspace/ywh$ git add -A
danli@danli-HP:~/workspace/ywh$ git commit -m 'changed region us standard, and save img to s3'
[master 9bdc992] changed region us standard, and save img to s3
 2 files changed, 2 insertions(+), 3 deletions(-)
danli@danli-HP:~/workspace/ywh$ heroku config:set S3_BUCKET=bigbean1234
Setting S3_BUCKET and restarting ⬢ ywh... done, v30
S3_BUCKET: bigbean1234
danli@danli-HP:~/workspace/ywh$ heroku config:set S3_ACCESS_KEY=AKIAJOWASAH5VHQY4AQA
Setting S3_ACCESS_KEY and restarting ⬢ ywh... done, v30
S3_ACCESS_KEY: AKIAJOWASAH5VHQY4AQA
danli@danli-HP:~/workspace/ywh$ heroku config:set S3_SECRET_KEY=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
Setting S3_SECRET_KEY and restarting ⬢ ywh... done, v30
S3_SECRET_KEY: W1Xkw7nrOgiyyWg/eYbyRL8aaIAF/ebn8sUC0d4y
danli@danli-HP:~/workspace/ywh$ heroku config:set S3_BUCKET=bigbean1234
Setting S3_BUCKET and restarting ⬢ ywh... done, v30
S3_BUCKET: bigbean1234
danli@danli-HP:~/workspace/ywh$ git push heroku master

# BUCKET bigbean1234 is us standard region, then worked. ywh1234 is in Seoul region did not work.

--------------------------------------------------------------
class PictureUploader < CarrierWave::Uploader::Base

include CarrierWave::MiniMagick

version :thumb do
     process :resize_to_fit => [50, 50]
end
 
#carrierwave has uploaded the original copy of picture and created a thumb version in the same folder.

<%= image_tag painting.image.url(:thumb).to_s %> or <%= image_tag(painting.image.url(:thumb).to_s) %>

------------------------------------------------------------------

remake the entire app as xq234_version3

