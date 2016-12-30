

;; toggle whitespace mode
(global-set-key (kbd "C-x w") 'whitespace-mode)
;; git blame
(global-set-key (kbd "C-x g s") 'vc-dir)
;; another mapping for C-u because it is clobbered in vi-mode
;;(global-set-key (kbd "C-`") 'universal-argument)
;; short cut to open a new eshell
(global-set-key (kbd "C-x n s") (lambda () (interactive) (eshell (generate-new-buffer-name "*eshell*"))))
;; minimap mode (like sublime text)
(global-set-key (kbd "C-x x") 'minimap-mode)

;; https://www.reddit.com/r/emacs/comments/30g5wo/the_kill_ring_and_the_clipboard/
(setq save-interprogram-paste-before-kill t)
(setq visible-bell 1)
(setq ring-bell-function (lambda () (message "*beep*")))

;;(require 'golden-ratio)
;;(golden-ratio-mode 1)

;; timestamp messages. from: https://github.com/nivekuil/.emacs.d/blob/master/emacs-init.org
(defun timestamp-message (orig-fun format-string &rest args)
  (when (or (> (length format-string) 0) args)
    (apply orig-fun
           (concat (format-time-string "[%T] " (current-time)) format-string)
           args)))
(advice-add 'message :around #'timestamp-message)

(provide 'my-misc)
