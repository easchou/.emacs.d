(global-auto-revert-mode)
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("8id" "sdfzilonsdlkjsdflsjdflkjsdlf")
					     ;; emacs regexp
					     ))

(setq auto-save-default nil)

(setq make-backup-files nil)

;;;;;;;;recentf mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(electric-indent-mode -1)
(delete-selection-mode 1)
(setq-default cursor-type 'bar)


(provide 'init-better-defaults)