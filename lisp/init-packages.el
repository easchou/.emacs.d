(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
)

;; common lisp extention
(require 'cl)
(defvar eason/packages '(
			company
			monokai-theme
			solarized-theme
			zenburn-theme
			hungry-delete
			swiper
			counsel
			smartparens
			popwin
			helm
			js2-mode
			nodejs-repl
			exec-path-from-shell
			) "Default packages")

(setq package-selected-packages eason/packages)

(defun eason/packages-installed-p()
  (loop for pkg in eason/packages
	when (not (package-installed-p pkg)) do (return nil)
		  finally (return t)))

(unless (eason/packages-installed-p)
  (message "%s" "Refreshing package database..")
  (package-refresh-contents)
  (dolist (pkg eason/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))


(global-company-mode t)

(load-theme 'monokai t)

(require 'hungry-delete)
(global-hungry-delete-mode)

;(require 'smex)
;(smex-initialize)
;(global-set-key (kbd "M-x") 'smex)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)

(require 'smartparens-config)
(smartparens-global-mode t)

(require 'popwin)
(popwin-mode t)
(exec-path-from-shell-initialize)
(provide 'init-packages)
