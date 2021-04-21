# Firejail profile for zoom
# Description: Video Conferencing and Web Conferencing Service
# This file is overwritten after every install/update
# Persistent local customizations
include zoom.local
# Persistent global definitions
include globals.local

# Disabled until someone reported positive feedback
ignore apparmor
ignore novideo
ignore dbus-user none
ignore dbus-system none

disable-mnt
notv
nou2f
# env USER=user

# uncomment to turnoff hardware acceleration
# no3d

# nogroups breaks webcam access on non-systemd systems (see #3711).
# If you use such a system uncomment the line below or put 'ignore nogroups' in your zoom.local
#ignore nogroups

private

# Disable for now, see https://github.com/netblue30/firejail/issues/3726
#private-etc alternatives,ca-certificates,crypto-policies,fonts,group,ld.so.cache,ld.so.conf,ld.so.conf.d,ld.so.preload,machine-id,nsswitch.conf,pki,resolv.conf,ssl

# Redirect
include electron.profile
