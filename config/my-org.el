  (global-set-key "\C-cl" 'org-store-link)
  (global-set-key "\C-ca" 'org-agenda)
  (global-set-key "\C-cc" 'org-capture)
  (global-set-key "\C-cb" 'org-iswitchb)

;; "In order to include entries from the Emacs diary into Org mode's agenda, you only need to customize the variable"
;; http://orgmode.org/manual/Weekly_002fdaily-agenda.html
(setq org-agenda-include-diary t)
(setq org-directory "/Users/andrew/notes/journal")

;; for org-capture
(setq org-default-notes-file (concat org-directory "/notes.org"))

;; if this is true, the markdown export will have a bunch of HTML crap in it.
(setq org-export-with-toc nil)


(provide 'my-org)
