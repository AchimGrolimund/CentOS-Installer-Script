# Linux Commands

**Add User**

```bash
adduser <username>
```

**Add Pass to User**

```bash
passwd <username>
```

**Kernelupdate**

```bash
yum update kernel
```

**Gruppe erstellen**
```bash
groupadd grpname -g1900 (grp id)
```

**User beim erstellen in eine Sekundär Gruppe stecken**
```bash
useradd -G grpname username -u1900 (uid)
```

**User beim erstellen in eine Primär Gruppe stecken**
```bash
useradd -g grpname username -u1900 (uid)
```
**Steckt user in grupe wheel**
```bash
usermod -aG wheel username
```

**Chronejob anlegen**
```bash
cronetab -e
(Vim I drücken für INSERT)
(ESC drücken für exit & :wq für writequite )
```
**crontab aufbau anschauen**
```bash
cat /etc/crontab
```
**auflisten der crontabs**
```bash
crontab -l
```
**cronetrab mit nano bearbeiten**
```bash
nano /var/spool/cron/root
```
**SSH anpassen**
```bash
nano /etc/ssh/sshd_config
(PermitRootLogin Kommentar entfernen)
```

**ssh service neustarten**
```bash
service sshd restart
ssh localhost (alles bestätigen)
```

**File von Server laden**

```bash
curl -o script.sh http://138.197.185.209/installscript.sh
```

**file rechte geben**

```bash
chmod +x script.sh
```

**File in unix format speichern (im fehlerfall)**

```xml
yum install dos2unix
dos2unix script.sh
-- oder --
Open file /usr/local/bin/brew with vi (vi /usr/local/bin/brew)
While on vi issue this commad (via esc or :) :set fileformat=unix
Close file on vi via :wq!
```

**userliste anzeigen**

```bash
cat /etc/passwd
```

**User löschen**

```bash
userdel [-r] ⟨Benutzername⟩ (-r löscht auch sein homeverzeichniss und mail)
```

