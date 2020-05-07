ifeq ($(PREFIX),)
	PREFIX := /usr/local
endif
ifeq ($(XDG_DEST),)
	XDG_DEST := /etc/xdg/autostart
endif

help:
	@echo "make install for installing both wifiman and wifigui"
	@echo "make install_no_wifigui for installing wifiman without wifigui"
	@echo "make uninstall for removing locally installed wifiman (and wifigui)"
	@echo "make install_indicator for installing wifiman, wifigui, and wifiman-indicator"

install:
	install -d $(PREFIX)/bin
	install -m 755 wifiman $(PREFIX)/bin
	install -m 755 wifigui $(PREFIX)/bin

uninstall:
	rm $(PREFIX)/bin/wifiman
ifeq (,$(wildcard $(PREFIX)/wifigui))
	rm $(PREFIX)/bin/wifigui
endif

install_no_wifigui: 
	install -d $(PREFIX)/bin
	install -m 755 wifiman $(PREFIX)/bin

install_indicator: install
	git submodule update --init --recursive && cd wifiman-indicator && ./deps_check.sh && make && make install XDG_DEST=$(XDG_DEST) PREFIX=$(PREFIX)

clean:
	rm -rf wifiman-indicator/*
