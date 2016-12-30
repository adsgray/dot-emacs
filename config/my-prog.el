
;; for programming
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'flycheck-mode)
(add-hook 'prog-mode-hook #'auto-highlight-symbol-mode)
(add-hook 'prog-mode-hook #'wrap-region-mode)

;;(add-hook 'go-mode-hook (lambda () ( (setq compile-command "go build"))))

(add-hook 'before-save-hook 'gofmt-before-save)

(require 'go-complete)
(add-hook 'completion-at-point-functions 'go-complete-at-point)

(electric-pair-mode)

(global-set-key (kbd "C-, c") 'compile)
(global-set-key (kbd "C-, r") 'recompile)

(provide 'my-prog)
