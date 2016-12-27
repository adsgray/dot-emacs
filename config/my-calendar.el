
(setq calendar-latitude 49.2827)
(setq calendar-longitude -123.1207)
(setq diary-number-of-entries 7)

(appt-activate 1)

;; https://github.com/ahammel/dotfiles/blob/master/.emacs
;; Canadian holidays
(setq general-holidays
      '((holiday-fixed 1 1 "New Year's Day")
	(holiday-new-year-bank-holiday)
	(holiday-fixed 2 14 "Valentine's Day")
        (holiday-fixed 2 15 "Flag Day")
	(holiday-fixed 3 17 "St. Patrick's Day")
	(holiday-fixed 4 1 "April Fools' Day")
        (holiday-float 5 1 3 "Victoria Day")
	(holiday-easter-etc -47 "Shrove Tuesday")
	(holiday-easter-etc -21 "Mother's Day")
	(holiday-easter-etc -2 "Good Friday")
	(holiday-easter-etc 0 "Easter Sunday")
	(holiday-easter-etc 1 "Easter Monday")
	(holiday-float 6 0 3 "Father's Day")
        (holiday-fixed 7 1 "Canada Day")
        (holiday-float 8 1 1 "B.C. Day")
        (holiday-float 9 1 1 "Labour Day")
        (holiday-float 10 1 2 "Thanksgiving")
	(holiday-fixed 10 31 "Halloween")
        (holiday-fixed 11 11 "Remebrance Day")
	(holiday-fixed 12 24 "Christmas Eve")
	(holiday-fixed 12 25 "Christmas Day")
	(holiday-fixed 12 26 "Boxing Day")
	(holiday-fixed 12 31 "New Year's Eve")))

(provide 'my-calendar)
