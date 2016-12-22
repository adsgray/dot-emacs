
;; company (complete anything, autocompletion in all buffers)
(add-hook 'after-init-hook 'global-company-mode)
;; go stuff
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'my-hooks)
