(message "- editor configurations...")

(setq-default line-spacing 5)

;; Don't create lockfiles - they break Broccoli build pipeline
(setq create-lockfiles nil)

;; Set UTF-8 as default coding system.
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)
;; Prevent "encoding magic comment" on ruby-mode.
(setq ruby-insert-encoding-magic-comment nil)

;; Highlight matched and mismatched parenthesis.
(show-paren-mode 1)
(setq show-paren-delay 0)

(electric-pair-mode 1)

;; Use 2 spaces to indent code instead of tabs.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq ruby-indent-level 2)
(setq js-indent-level 2)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-attr-indent-offset 2)
(setq web-mode-enable-auto-indentation nil)

;; Delete the selection with a keypress.
(delete-selection-mode t)

;; Keybinding
(global-set-key (kbd "C-|") 'align-regexp)
(global-set-key "\C-h" 'backward-delete-char-untabify)
(define-key isearch-mode-map "\C-h" 'isearch-delete-char)

(global-unset-key (kbd "s-t"))
(global-set-key (kbd "s-t") 'term)

;; TODO: Creat hook to active hs-minor-mode and define the key
;; (define-key hs-minor-mode-map (kbd "<backtab>") 'hs-toggle-hiding)
