(message "- editor configurations...")

;; Set UTF-8 as default coding system.
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; Highlight matched and mismatched parenthesis.
(show-paren-mode 1)
(setq show-paren-delay 0)

;; Use 2 spaces to indent code instead of tabs.
(setq indent-tabs-mode nil)
(setq-default tab-width 2)
(setq ruby-indent-level 2)
(setq js-indent-level 2)

;; Delete the selection with a keypress.
(delete-selection-mode t)
