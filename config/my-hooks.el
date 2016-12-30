
;; company (complete anything, autocompletion in all buffers)
(add-hook 'after-init-hook 'my-company-hooks)

(defun my-company-hooks ()
  ""
  (global-company-mode)
  (add-to-list 'company-backends 'company-go)
  (add-to-list 'company-backends 'company-php)
  (add-to-list 'company-backends 'company-python)
  )

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'my-hooks)
