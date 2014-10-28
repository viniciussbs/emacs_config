(deftheme bunker "Bunker color theme")
(custom-theme-set-faces
 'bunker

 '(default ((t (:background "#321b1b" :foreground "#c8b1b1" :height 140 :family "Monaco"))))
 '(cursor ((t (:foreground "#000000" :background "#fff7f7"))))
 '(mode-line ((t (:background "#644d4d" :foreground "#fff7f7"))))
 '(mode-line-inactive ((t (:background "#503939" :foreground "#321b1b"))))
 '(minibuffer-prompt ((t (:foreground "#fff7f7"))))
 '(highlight ((t (:background "#220000"))))
 '(region ((t (:background "#644d4d"))))

 '(font-lock-keyword-face ((t (:foreground "#fff7f7")))) 

)

(provide 'bunker)
;;; bunker.el ends here
