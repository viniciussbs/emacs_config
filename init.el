(setq inhibit-startup-message t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; TODO: Use `use-package`
;; https://emacs.stackexchange.com/questions/16477/how-to-use-use-package-with-built-in-packages
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(blink-cursor-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(delete-selection-mode t)

;; TODO: Use `use-package` or group all variables in a single `setq` call
;; https://emacs.stackexchange.com/questions/16477/how-to-use-use-package-with-built-in-packages
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq js-indent-level 2)
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; Setup `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package all-the-icons
  :ensure t)

(use-package avy
  :ensure t
  :init
  (setq avy-style 'words)
  :bind (("C-ç C-ç" . avy-goto-word-0)
         ("C-ç c" . avy-goto-char)
         ("C-ç w" . avy-goto-word-1)
         ("C-ç l" . avy-goto-line)
         ("C-ç C-l" . avy-goto-line)
         ("C-ç C-s" . avy-goto-char-in-line)
         ("C-ç C-k C-r" . avy-kill-region)
         ("C-ç C-k C-l" . avy-kill-whole-line)
         ("C-ç C-c C-l" . avy-copy-line)
         ("C-ç C-c C-r" . avy-copy-region)
         ("C-ç C-m C-r" . avy-move-region)
         ("C-ç C-m C-l" . avy-move-line)))

(use-package nord-theme
  :ensure t
  :config
;;  (set-frame-font "Source Code Pro-16")
  (load-theme 'nord t))

(use-package dashboard
  :ensure t
  :init
  (setq dashboard-banner-logo-title nil)
  (setq dashboard-startup-banner 'logo)
  (setq dashboard-items '((recents  . 1)
                          (projects . 20)))
  (setq dashboard-show-shortcuts nil)
  (setq dashboard-center-content t)
  ;; (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-set-init-info nil)
  (setq dashboard-set-footer nil)
  :config
  (dashboard-setup-startup-hook))

(use-package elixir-mode
  :ensure t)

(use-package emmet-mode
  :ensure t
  :hook ((sgml-mode) (css-mode) (web-mode))
  :config (define-key emmet-mode-keymap (kbd "C-j") nil))

(use-package expand-region
  :ensure t
  :bind (("C-=" . er/expand-region)
	 ("C-M-=" . er/contract-region)))

(use-package flx-ido
  :ensure t
  :config
  (flx-ido-mode 1))

(use-package google-this
  :ensure t
  :config (google-this-mode 1))

(use-package ibuffer
  :ensure t
  :bind ("C-x C-b" . ibuffer))

(use-package ido
  :ensure t
  :init
  (setq ido-auto-merge-delay-time 3)
  :config
  (ido-mode t)
  (ido-everywhere t))

(use-package js2-mode
  :ensure t
  :mode "\\.js\\'")

(use-package magit
  :ensure t
  :bind ("C-c g" . magit-status))

(use-package multiple-cursors
  :ensure t
  :bind (("C->" . mc/mark-next-like-this)
	 ("C-<" . mc/skip-to-next-like-this)
	 ("C-{" . mc/mark-previous-like-this)
	 ("C-}" . mc/skip-to-previous-like-this)
	 ("C-c m m" . mc/mark-more-like-this-extended)
	 ("C-c m l l" . mc/edit-lines)
	 ("C-c m l b" . mc/edit-beginnings-of-lines)
	 ("C-c m l e" . mc/edit-ends-of-lines)
	 ("C-c m a a" . mc/mark-all-like-this)
	 ("C-c m a r" . mc/mark-all-in-region)))

(use-package projectile
  :ensure t
  :init
  (setq projectile-project-search-path '("~/code/"))
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :config
  (projectile-mode +1))

(use-package restclient
  :ensure t)

(use-package ripgrep
  :ensure t)

(use-package scss-mode
  :ensure t
  :init
  (setq scss-compile-at-save nil)
  (setq css-indent-offset 2))

(use-package web-mode
  :ensure t
  :init
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-attr-indent-offset 2)
  (setq web-mode-enable-auto-indentation nil)
  :mode ("\\.erb\\'" "\\.eex\\'" "\\.leex\\'" "\\.hbs\\'" "\\.html?\\'"))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(toggle-frame-maximized)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (rainbow-mode modus-vivendi-theme modus-operandi-theme ripgrep google-this emmet-mode scss-mode elixir-mode ivy avy phi-replace phi-search expand-region region-bindings-mode multiple-cursors dashboard fireplace zone-nyan zone-rainbow misc web-mode js2-mode which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
