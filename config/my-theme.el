
;;(require 'nyan-mode)
;; corral

(defun load-my-theme ()
  "Load my theme after startup."
  (setq darkokai-mode-line-padding 1)
  (load-theme 'darkokai t)
  (nyan-mode) ;; yes
  (volatile-highlights-mode t)
  (menu-bar-mode -1)
  (toggle-scroll-bar -1)
  (tool-bar-mode -1)
  )

(add-hook 'after-init-hook 'load-my-theme)

(provide 'my-theme)
