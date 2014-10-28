(deftheme ezlearn "EzLearn color theme")
(custom-theme-set-faces
 'ezlearn

 ;; Constant
 '(font-lock-constant-face ((t (:foreground "#333333"))))
 '(font-lock-reference-face ((t (:foreground "#333333"))))
 
 ;; Keyword
 '(font-lock-keyword-face ((t (:foreground "#333333")))) 

 ;; Comment
 '(font-lock-comment-face ((t (:foreground "#bbbbbb")))) 
 '(font-lock-comment-delimiter-face ((t (:foreground "#bbbbbb"))))
 
 ;; Variables
 '(font-lock-variable-name-face ((t (:foreground "#333333"))))

 ;; String
 '(font-lock-string-face ((t (:foreground "#c54e5e"))))

 ;; Emacs frame specific        
 ;; Mode-line
 '(mode-line ((t (:background "#5b5b5b" :foreground "#e7e7e7"))))

 ;; Text Highlight
 '(region ((t (:background "#fffa76"))))

 ;; ;; Function name    -> colore o nome da funcao e no dired o nome do arquivo
 ;; '(font-lock-function-name-face ((t (:foreground "#333333"))))

 ;; ;; ;; Type     -> colore o nome da classe e no dired o path 
 ;; '(font-lock-type-face ((t (:foreground "#333333"))))
 
 ;; ;; ;; User-defined constant -> colore o <?php
 '(font-lock-builtin-face ((t (:foreground "#333333" :bold t))))

 )
(provide 'ezlearn)
