```
adduser montecamo
```

```
usermod -aG sudo montecamo
```

```
ssh-copy-id montecamo@ip
```

```
sudo apt-get install git -y
```

ssh-keygen && add key to githab & gitlab

```
git clone --recurse-submodules git@github.com:montecamo/home-page.git
```

```
bash scripts/initialize.sh {{CLOUDFLARE_TOKEN}} {{DOMAIN}}
```