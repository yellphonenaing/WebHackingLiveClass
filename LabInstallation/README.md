## Install Labs Via Docker
> Nova Web Sec Labs ကို Docker အသုံးပြုပြီး Install လုပ်သွားမှာဖြစ်ပါတယ်။<br>

**Install Docker**
```
sudo apt install docker
sudo apt install docker.io
```

**Start Docker**
```
sudo systemctl start docker
sudo systemctl enable docker
```
**Install and Start Nova Web Sec Labs**
```
cd ~ && wget https://raw.githubusercontent.com/yellphonenaing/WebHackingLiveClass/main/LabInstallation/novawebseclab.sh #Only for first time installation
sudo bash ~/novawebseclab.sh start
```

**Start DVWA Labs**
```
sudo docker run -p 80:80 vulnerables/web-dvwa
```

**Start bWAPP**
```
sudo docker run -d -p 8008:80 raesene/bwapp
```

