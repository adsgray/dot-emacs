;; enable viper on startup
;;(setq viper-mode t)
;;(require 'viper)

(evil-mode 1)

;;(define-key evil-normal-state-map ":q" 'kill-buffer)

;; find these mappings in: https://github.com/emacsmirror/evil/blob/master/evil-maps.el
(evil-ex-define-cmd "quit" 'kill-this-buffer)

(defun save-and-kill-this-buffer ()
  "Save the current buffer, then kill it."
  (interactive)
  (save-buffer)
  (kill-this-buffer))

(define-key evil-normal-state-map "ZZ" 'save-and-kill-this-buffer)

;; "leader" is ctrl x
(define-key evil-normal-state-map "," ctl-x-map)

;; for neo-tree
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)


;(let ((no-evil-modes '(elfeed-search elfeed-show)))
;  (defun maybe-turn-off-evil-mode ()
;    "If major mode is in the list, turn off evil mode."
;    (if (member (major-mode) no-evil-modes))
;    )
;  (add-hook )
;
;  )

;; exclude some modes
;(eval-after-load 'evil-core
;  '(progn
;     (evil-set-initial-state 'elfeed-search 'emacs)
;     (evil-set-initial-state 'elfeed-show 'emacs)
;    )
;  )

(provide 'my-vi)
