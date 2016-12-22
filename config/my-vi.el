;; enable viper on startup
;;(setq viper-mode t)
;;(require 'viper)

(evil-mode 1)

;;(define-key evil-normal-state-map ":q" 'kill-buffer)

(evil-ex-define-cmd "quit" 'kill-this-buffer)

(provide 'my-vi)
