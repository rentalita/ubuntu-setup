emacs-pkgs:
  pkg:
    - latest
    - names:
      - emacs24

emacs-extras-pkgs:
  pkg:
    - latest
    - names:
      - emacs-goodies-el
      - exuberant-ctags
      - magit
      - paredit-el
      - yaml-mode
    - require:
      - pkg: emacs-pkgs
