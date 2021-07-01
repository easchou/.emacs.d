

(global-set-key [delete] 'delete-char)
(global-set-key [f1] 'counsel-git)
(global-set-key [f3] 'grep-find)
(global-set-key [f4] 'goto-line)
(global-set-key [f5] 'dired)
(global-set-key [f6] 'find-name-dired)
(global-set-key [f7] 'compile)
(global-set-key [f8] 'shell)
(global-set-key "\C-x\C-r" 'recentf-open-files)

(defun load-init-file()
  (interactive)
  (load-file "~/.emacs.d/init.el"))
(global-set-key [f2] 'load-init-file)


(provide 'init-keybindings)
