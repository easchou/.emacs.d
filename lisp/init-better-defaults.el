(global-auto-revert-mode)
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
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

;;occure mode dwim (do what i mean)
(defun occur-dwim ()
  "Call 'occur' with a sane default"
  (interactive)
  (push (if (region-active-p)
	   (buffer-substring-no-properties (region-beginning) (region-end))
	 (let ((sym (thing-at-point 'symbol)))
	   (when (stringp sym)
	     (regexp-quote sym))))
	regexp-history)
  (call-interactively 'occur))
(global-set-key (kbd "M-s o") 'occur-dwim)

;; company speedup
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0.5)

(provide 'init-better-defaults)
