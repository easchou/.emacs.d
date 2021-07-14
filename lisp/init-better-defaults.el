(global-auto-revert-mode)
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("#++" "BEGIN_SRC emacs-lisp")
					    ("#+-" "#+END_SRC")
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

(set 'yes-or-no-p 'y-or-n-p)
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)

;; Day4 Open one dird buffer
(put 'dired-find-alternate-file 'disabled nil)
(require 'dired-x)
(setq dired-dwim-target t)

(setq auto-mode-alist
      (append 
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))
(provide 'init-better-defaults)
