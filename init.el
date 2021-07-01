(add-to-list 'load-path "~/.emacs.d/lisp") 
(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-keybindings)


;;;;;;; org mode
(require 'org)
(setq org-src-fontify-natively 1)
;;;;;;;

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))





