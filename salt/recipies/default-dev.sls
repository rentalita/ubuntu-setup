include:
  - recipies.default

default-dev:
  pkg:
    - latest
    - names:
      - build-essential
      - devscripts
      - fakeroot
      - debhelper
      - exuberant-ctags
      - emacs
      - emacs-goodies-el
      - paredit-el
      - slime
      - cl-swank
      - magit
      - qemu-kvm
      - libvirt-bin
      - virt-manager
      - virt-viewer
      - ecryptfs-utils
      - xfonts-terminus
      - fonts-droid
      - ttf-mscorefonts-installer
      - non-free-codecs
      - libdvdcss2
      - chromium-browser
      - chromium-codecs-ffmpeg-extra
      - nautilus-dropbox
      - skype
      - google-talkplugin
      # TODO: clojure & leiningen
    - require:
      - pkg: default
