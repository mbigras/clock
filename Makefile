build:
	swiftc -o clock -gnone -O -target x86_64-apple-macosx10.14 clock.swift

install:
	install clock /usr/local/bin/clock
	install org.mbigras.clock.plist $$HOME/Library/LaunchAgents/org.mbigras.clock.plist
	launchctl load $$HOME/Library/LaunchAgents/org.mbigras.clock.plist

load:
	launchctl load $$HOME/Library/LaunchAgents/org.mbigras.clock.plist

unload:
	launchctl unload $$HOME/Library/LaunchAgents/org.mbigras.clock.plist

uninstall: unload
	rm -f /usr/local/bin/clock
	rm -f $$HOME/Library/LaunchAgents/org.mbigras.clock.plist
