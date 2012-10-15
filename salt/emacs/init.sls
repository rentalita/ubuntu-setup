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
    - require:
      - pkg: emacs-pkgs
