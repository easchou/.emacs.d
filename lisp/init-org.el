;;;;;;; org mode
(require 'org)
;;<s tab enable

(setq org-src-fontify-natively 1)

(setq org-agenda-files '("~/Org"))
(global-set-key (kbd "C-c a") 'org-agenda)
;;;;;;;
(provide 'init-org)
