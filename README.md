# POC-Packer-Windows
Make windows image with packer

# Requirements

- [packer](https://github.com/hashicorp/packer)
- [virtualBox](https://www.virtualbox.org/)

# Hack

Move to require version folder

Build image

```
$ make image
```

After build you can launch image in vagrant

```
$ make import-to-vagrant
$ vagrant up
```

# Tips

For now windows is not activate if you want to activate it you need to build this image,
mount it, and copy your key in a file named **key.txt** in `C:\Windows\System32\key.txt`

**Warning :** This file need to have only one line inside without comment and just key
