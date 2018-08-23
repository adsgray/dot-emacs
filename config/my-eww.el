
;; for eww web browser mode:
(setq shr-color-visible-luminance-min 100)

(eval-after-load 'elfeed-show-mode
                    '(define-key elfeed-show-mode-map [w] 'eww))



(provide 'my-eww)
