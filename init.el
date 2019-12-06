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
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq js-indent-level 2)
(setq create-lockfiles nil)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package nord-theme
  :ensure t
  :config
  (set-frame-font "Source Code Pro-18")
  (load-theme 'nord t))

(use-package dashboard
  :ensure t
  :init
  (setq dashboard-startup-banner 'logo)
  (setq dashboard-items '((recents  . 5)
			  (projects . 5)
                          (bookmarks . 5)
                          (agenda . 5)
                          (registers . 5)))
  :config
  (dashboard-setup-startup-hook))

(use-package flx-ido
  :ensure t
  :config
  (flx-ido-mode 1))

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

(use-package projectile
  :ensure t
  :init
  (setq projectile-project-search-path '("~/Projects/"))
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :config
  (projectile-mode +1))

(use-package web-mode
  :ensure t
  :init
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-attr-indent-offset 2)
  (setq web-mode-enable-auto-indentation nil)
  :mode ("\\.erb\\'" "\\.eex\\'" "\\.hbs\\'" "\\.html?\\'"))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package zone-rainbow
  :ensure t
  :config
  (zone-when-idle 120))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (dashboard fireplace zone-nyan zone-rainbow misc web-mode js2-mode which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
