.PHONY: image
image:
	packer build --force -on-error=ask windows_r2.json
	tar xfv output-virtualbox-iso/windows-server-2012-r2-64.ova windows-server-2012-r2-64-disk001.vmdk
	mkdir -p raw
	rm -f raw/windows-server-2012-r2-64-disk001.raw.xz
	qemu-img convert -f vmdk -O raw ./windows-server-2012-r2-64-disk001.vmdk ./raw/windows-server-2012-r2-64-disk001.raw
	xz -z -v -1 raw/windows-server-2012-r2-64-disk001.raw
	rm -f windows-server-2012-r2-64-disk001.vmdk

.PHONY: import-to-vagrant
import-to-vagrant:
	VBoxManage import ./output-virtualbox-iso/windows-server-2012-r2-64.ova --vsys 0 --eula accept
	vagrant package --base `VBoxManage list vms | grep "windows-server-2012-r2-64" | sed 's/.*{\(.*\)}.*/\1/'` --output windows-server-2012-r2-64.box
	vagrant box add windows-server-2012-r2-64.box --name windows-server-2012-r2-64 --force
	rm -f windows-server-2012-r2-64.box

.PHONY: clean
clean:
	rm -rf \
		output-virtualbox-iso \
		raw \
	vagrant destroy -f | true
