
;; projectile and helm
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match    t)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)
(setq helm-M-x-fuzzy-match t) ;; optional fuzzy matching for helm-M-x

;; yep, taking Ctrl-P
(global-set-key (kbd "C-p") 'helm-projectile)
(global-set-key (kbd "C-, f") 'helm-semantic-or-imenu)
(global-set-key (kbd "C-, o") 'helm-occur)
(global-set-key (kbd "C-, m") 'helm-mark-ring)
(global-set-key (kbd "C-=") 'er/expand-region)
; what about er/contract-region

(provide 'my-helm)
