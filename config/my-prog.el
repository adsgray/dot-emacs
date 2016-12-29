
;; for programming
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'flycheck-mode)
(add-hook 'prog-mode-hook #'auto-highlight-symbol-mode)
(add-hook 'prog-mode-hook #'wrap-region-mode)

(add-hook 'go-mode-hook (progn
			  (setq compile-command "go build")
			  (add-hook 'before-save-hook 'gofmt-before-save)
			  ))

(provide 'my-prog)
