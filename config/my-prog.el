
;; for programming
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'flycheck-mode)
(add-hook 'prog-mode-hook #'auto-highlight-symbol-mode)
(add-hook 'prog-mode-hook #'wrap-region-mode)

(provide 'my-prog)
