include:
  - default
  - chromium
  - dropbox
  - medibuntu

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
      - dconf-tools
      - gconf-editor
      - qemu-kvm-spice
      - python-spice-client-gtk
      - libvirt-bin
      - virt-manager
      - virt-viewer
      - ecryptfs-utils
      - xfonts-terminus
      - fonts-droid
      - ttf-mscorefonts-installer
      - skype
      - beets
      # TODO: clojure & leiningen
      - openjdk-7-jdk
    - require:
      - pkg: default
      - pkg: chromium
      - pkg: dropbox
      - pkg: medibuntu
