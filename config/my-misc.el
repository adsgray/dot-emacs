

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

(require 'golden-ratio)
(golden-ratio-mode 1)

;; https://tuhdo.github.io/helm-intro.html
;; prevent golden-ration from interfering with helm
(defun pl/helm-alive-p ()
  (if (boundp 'helm-alive-p)
      (symbol-value 'helm-alive-p)))

;; do this for minimap too?
(add-to-list 'golden-ratio-inhibit-functions 'pl/helm-alive-p)

;; timestamp messages. from: https://github.com/nivekuil/.emacs.d/blob/master/emacs-init.org
(defun timestamp-message (orig-fun format-string &rest args)
  (when (or (> (length format-string) 0) args)
    (apply orig-fun
           (concat (format-time-string "[%T] " (current-time)) format-string)
           args)))
(advice-add 'message :around #'timestamp-message)

(require 'ace-jump-mode)
(define-key global-map (kbd "C-c C-SPC" ) 'ace-jump-mode)

(define-key global-map (kbd "C-c g") 'magit-status)
;; require-final-newline

(define-key global-map (kbd "C-c p f") 'projectile-find-file)

;; function to open wttrin with first city on list
;; http://pragmaticemacs.com/emacs/weather-in-emacs/
(require 'wttrin)
(setq wttrin-default-cities '("Vancouver,BC,Canada" "Nelson,BC,Canada" "Kingston,ON,Canada"))
(defun weather ()
  "Open `wttrin' without prompting, using first city in `wttrin-default-cities'"
  (interactive)
  ;; save window arrangement to register
                                        ;(window-configuration-to-register :pre-wttrin)
                                        ;(delete-other-windows)
  ;; save frame setup
                                        ;(save-frame-config)
                                        ;(set-frame-width (selected-frame) 130)
                                        ;(set-frame-height (selected-frame) 48)
  ;; call wttrin
  (wttrin-query (car wttrin-default-cities))
  )

;; elfeed
                                        ;(defun my-elfeed-mode ()
                                        ;"Stuff to run when entering an elfeed mode."
                                        ;(add-hook 'elfeed-mode))



(defun tmp/copy-whole-buffer ()
  "Mark and copy the whole buffer into the kill ring."
  (interactive)
  (copy-region-as-kill (point-min) (point-max))
  (message "copied buffer to kill-ring")
  )
(global-set-key (kbd "C-x c") 'tmp/copy-whole-buffer)

(defun tmp/mkblogfile (slug)
  "Do mkdir -p YYYY/MM and create file DD-SLUG.org and open it."
  (interactive "sslug: ")
  (cd "~/code/microblog/posts")
  (let* ((bdir (format-time-string "%Y/%m"))
         (day (format-time-string "%d"))
         (bfile (concat day "-" slug ".org"))
         )
    ;; same as mkdir -p bdir
    (mkdir bdir t)
    (cd bdir)
    (find-file bfile)
    )
  )


;; http://stackoverflow.com/questions/23378271/how-do-i-display-ansi-color-codes-in-emacs-for-any-mode
(require 'ansi-color)

(defun ansi-colorize-current-buffer ()
  "Colorize ansi escape sequences in the current buffer."
  (interactive)
  (ansi-color-apply-on-region (point-min) (point-max)))


;; http://emacs.stackexchange.com/questions/3844/good-methods-for-setting-up-alarms-audio-visual-triggered-by-org-mode-events
;;(setq appt-disp-window-function 'my-appt-display)

(provide 'my-misc)

(defun tmp/indent-and-untabify-buffer ()
  "Mark and copy the whole buffer into the kill ring."
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)
    (untabify (point-min) (point-max) nil)
    )
  )
