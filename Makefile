NAME=packer-build-baremetal-windows-server-r2-x86_64

.PHONY: image
image:
	packer build --force windows_r2.json

.PHONY: import-box
import-box:
	vagrant box add ${NAME}.box --name ${NAME} --force

.PHONY: clean
clean:
	rm -rf \
		output-virtualbox-iso \
		${NAME}.box \
	vagrant destroy -f | true
