(message "- common configurations...")

;; Disable backup and auto save.
(setq backup-inhibited t)
(setq auto-save-default nil)

;; Dired: reuse current buffer by pressing 'a'.
(put 'dired-find-alternate-file 'disabled nil)

;; Enable iBuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(iswitchb-mode)

;; Enable IDO.
(require 'ido)
(ido-mode t)
(ido-everywhere t)
(setq ido-auto-merge-work-directories-length -1)

;; Auto revert file
(global-auto-revert-mode 1)
