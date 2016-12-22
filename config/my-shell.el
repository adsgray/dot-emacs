
(require 'eshell)
(defalias 'vi "find-file $1") ;; lol
;; exec-path stuff
(exec-path-from-shell-initialize)

;; eshell specific
(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map (kbd "C-, r")  'helm-eshell-history)))

(provide 'my-shell)
