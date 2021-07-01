      
(global-set-key [delete] 'delete-char)
(global-set-key [f1] 'find-file)
(global-set-key [f3] 'grep-find)
(global-set-key [f4] 'goto-line)
(global-set-key [f5] 'dired)
(global-set-key [f6] 'find-name-dired)
(global-set-key [f7] 'compile)
(global-set-key [f8] 'shell)
(defun load-init-file()
  (interactive)
  (load-file "~/.emacs.d/init.el"))
(global-set-key [f2] 'load-init-file)
(menu-bar-mode -1)
;;(tool-bar-mode -1)
(scroll-bar-mode -1)
(electric-indent-mode -1)
;(global-linum-mode 1)
(delete-selection-mode 1)
(setq inhibit-splash-screen 1)
(global-hl-line-mode t)
;;(add-hook 'emacs-lisp-mode-hook 'show-paren-match)
;;;;;;;;recentf mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)
(global-set-key "\C-x\C-r" 'recentf-open-files)
;;;;;;; org mode
(require 'org)
(setq org-src-fontify-natively 1)
;;;;;;;
(setq-default cursor-type 'bar)
(setq auto-save-default nil)
(setq make-backup-files nil)
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("8id" "sdfzilonsdlkjsdflsjdflkjsdlf")
					     ;; emacs regexp
					     ))


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

(global-auto-revert-mode)
(global-company-mode t)
(load-theme 'zenburn t)
(require 'hungry-delete)
(global-hungry-delete-mode)
;(require 'smex)
;(smex-initialize)
;(global-set-key (kbd "M-x") 'smex)
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(require 'smartparens-config)
;(add-hook 'emacs-lisp-mode 'smartparens-mode)
(smartparens-global-mode t)
(require 'popwin)
(popwin-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d9646b131c4aa37f01f909fbdd5a9099389518eb68f25277ed19ba99adeb7279" "d50ca1c2d916d0763666ce636b42cfaef7d82f88500517beab0496035745e983" default))
 '(package-selected-packages
   '(projectile flycheck-irony flycheck rtags irony sr-speedbar helm-gtags company monokai-theme solarized-theme zenburn-theme hungry-delete smex swiper counsel smartparens popwin))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
