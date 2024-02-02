.PHONY: ubuntu

define ExecuteAllScripts
	SUDO=$(2)
	SUDO=$(2) $(2) ./$(1)/init.sh
	SUDO=$(2) $(2) ./$(1)/nfs-setup.sh
	SUDO=$(2) ./$(1)/zsh-setup.sh
endef

ubuntu:
	$(call ExecuteAllScripts,Ubuntu,sudo)

ubuntu-root:
	$(call ExecuteAllScripts,Ubuntu,)
