
;; https://nathantypanski.com/blog/2014-08-03-a-vim-like-emacs-config.html
(require 'elisp-slime-nav)
(defun my-lisp-hook ()
  (elisp-slime-nav-mode)
  (eldoc-mode)
  )
(add-hook 'emacs-lisp-mode-hook 'my-lisp-hook)

(provide 'my-elisp)
