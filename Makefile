.PHONY: ubuntu

define ExecuteAllScripts
	sudo ./$(1)/ubuntu-init.sh
	sudo ./$(1)/ubuntu-nfs-setup.sh
endef

ubuntu:
	$(call ExecuteAllScripts,Ubuntu)
