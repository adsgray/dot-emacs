;; enable viper on startup
;;(setq viper-mode t)
;;(require 'viper)

(evil-mode 1)

;;(define-key evil-normal-state-map ":q" 'kill-buffer)

(evil-ex-define-cmd "quit" 'kill-this-buffer)

;; for neo-tree
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)

(provide 'my-vi)
