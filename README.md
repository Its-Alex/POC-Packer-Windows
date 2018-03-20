# POC-Packer-Windows
Make windows image with packer

# Hack

Build this image

```
$ packer build --force windows_r2.json
```

After build you can launch this image in vagrant

```
$ vagrant up
```

# Tips

For now windows is not activate if you want to activate it you need to build this image,
mount it, and copy your key in a file named **key.txt** in `C:\Windows\System32\key.txt`

**Warning :** This file need to have only one line inside without comment and just key
