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

(provide 'my-vi)
