;; Disable backup and auto save.
(setq backup-inhibited t)
(setq auto-save-default nil)

;; Set UTF-8 as default coding system.
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; Delete the selection with a keypress.
(delete-selection-mode t)

;; Dired: reuse current buffer by pressing 'a'.
(put 'dired-find-alternate-file 'disabled nil)

;; Enable iBuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(iswitchb-mode)

;; Enable IDO.
(require 'ido)
(ido-mode t)
