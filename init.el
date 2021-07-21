(package-initialize)
(require 'org-install)
(require 'ob-tangle)
(setq debug-on-error t)
(org-babel-load-file (expand-file-name "eason.org" user-emacs-directory))




