include:
  - default
  - medibuntu
  - chromium
  - dropbox

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
      - skype
      # TODO: clojure & leiningen
    - require:
      - pkg: default
      - pkg: medibuntu
      - pkg: chromium
      - pkg: dropbox
