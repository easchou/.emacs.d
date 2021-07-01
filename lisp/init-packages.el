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
			smex
			swiper
			counsel
			smartparens
			popwin
			helm
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

(ivy-mode)
;(setq ivy-use-virtual-buffers t)
;(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
;(global-set-key (kbd "C-c C-r") 'ivy-resume)
;(global-set-key (kbd "M-x") 'counsel-M-x)
;(global-set-key (kbd "C-x C-f") 'counsel-find-file)
;(global-set-key (kbd "C-h f") 'counsel-describe-function)
;(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;(add-hook 'emacs-lisp-mode 'smartparens-mode)
(smartparens-global-mode t)

(require 'popwin)
(popwin-mode t)


(provide 'init-packages)
