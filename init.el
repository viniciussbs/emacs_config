;; ---- EMACS ----------------------------------------------------
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(defun add-paths-to-path (paths)
  "Add list of path to `exec-path` and `PATH` variables."
  (setenv "PATH" (concat (getenv "PATH") ":" (mapconcat 'identity paths ":")))
  (setq exec-path (append exec-path paths)))

(add-paths-to-path '("~/.local/share/asdf/shims" "~/.local/share/asdf/bin"))

;; ---- APPEARANCE ------------------------------------------------
;; - minibuffer
;; - design
(setq inhibit-startup-message t)
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(blink-cursor-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(use-package all-the-icons
  :ensure t)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config (column-number-mode))

(use-package doom-themes
  :ensure t
  :config
  (set-frame-font "Fira Code-12") ;; Other good fonts: "Monoid-11" and "DejaVu Sans Mono-12"
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  ;; (load-theme 'doom-horizon t)
  ;; (load-theme 'doom-palenight t)
  (load-theme 'doom-dracula t)


  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

;; ---- EDITOR ----------------------------------------------------
;; - default identation
;; - tab vs space
;; - elisp documentation (helpfull?)
(delete-selection-mode t)
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq create-lockfiles nil)
(put 'dired-find-alternate-file 'disabled nil)

;; TODO: reconsider
(use-package avy
  :ensure t
  :init
  (setq avy-style 'words)
  :bind
  (("C-ç C-ç" . avy-goto-word-0)
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

(use-package embark
  :ensure t
  :bind
  (("C-." . embark-act)         ;; pick some comfortable binding
   ("C-;" . embark-dwim)        ;; good alternative: M-.
   ("C-h B" . embark-bindings)) ;; alternative for `describe-bindings'
  :init
  ;; Optionally replace the key help with a completing-read interface
  (setq prefix-help-command #'embark-prefix-help-command)
  :config
  ;; Hide the mode line of the Embark live/completions buffers
  (add-to-list 'display-buffer-alist
               '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
                 nil
                 (window-parameters (mode-line-format . none)))))

;; TODO: reconsider, maybe Embark could solve this?
(use-package expand-region
  :ensure t
  :bind
  (("C-=" . er/expand-region)
	 ("C-M-=" . er/contract-region)))

;; TODO: reconsider since Consult + Embark seams do the trick
(use-package ibuffer
  :ensure t
  :bind ("C-x C-b" . ibuffer))

(use-package marginalia
  :ensure t
  :config (marginalia-mode))

;; TODO: reconsider, maybe Embark solve this
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

(use-package orderless
  :ensure t
  :custom
  ((completion-styles '(orderless))
   (orderless-matching-styles '(orderless-literal orderless-regexp))))

(use-package ripgrep
  :ensure t)

(use-package vertico
  :ensure t
  :custom
  (vertico-cycle t)
  :init
  (vertico-mode))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

;; ---- PROGRAMMING ------------------------------------------------
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
;; - LSP
;; - DAP for debug
;; - some mode to help with language documentation 
;; - restclient
(use-package lsp-mode
  :ensure t
  :diminish lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
  (add-to-list 'exec-path "~/.local/share/elixir-ls")
  :config
  (lsp-enable-which-key-integration t))

(use-package magit
  :ensure t
  :bind ("C-c g" . magit-status))

(use-package magit-todos
  :ensure t
  :init
  (magit-todos-mode))

(use-package project
  :ensure t
  :config
  (define-key project-prefix-map "m" #'magit-project-status)
  (add-to-list 'project-switch-commands '(magit-project-status "Magit") t))

(use-package restclient
  :ensure t)

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode))

;; ---- PROGRAMMING / BACK-END ----
(use-package elixir-mode
  :ensure t
  :hook (elixir-mode . lsp-deferred))

(use-package exunit
  :ensure t
  :config
  (add-hook 'elixir-mode-hook 'exunit-mode))

(use-package mix
  :ensure t
  :init
  (setq compilation-scroll-output t)
  :config
  (add-hook 'elixir-mode-hook 'mix-minor-mode)
  (define-key mix-minor-mode-map (kbd "C-c d") 'mix-minor-mode-command-map))

;; ---- PROGRAMMING / FRONT-END ----
(use-package emmet-mode
  :ensure t
  :hook
  (sgml-mode css-mode web-mode)
  :config
  (define-key emmet-mode-keymap (kbd "C-j") nil) (unbind-key (kbd "C-c C-c") emmet-mode-keymap))

(use-package js2-mode
  :ensure t
  :mode "\\.js\\'"
  :custom
  (js-indent-level 2))

(use-package scss-mode
  :ensure t
  :init
  (setq scss-compile-at-save nil)
  (setq css-indent-offset 2))

(use-package web-mode
  :ensure t
  :mode
  ("\\.erb\\'"
   "\\.eex\\'"
   "\\.leex\\'"
   "\\.hbs\\'"
   "\\.html?\\'")
  :custom
  (web-mode-markup-indent-offset 2)
  (web-mode-css-indent-offset 2)
  (web-mode-code-indent-offset 2)
  (web-mode-attr-indent-offset 2)
  (web-mode-enable-auto-indentation nil))

;; ---- LIFE ORGANIZATION --------------------------------------------
;; - Type7 routine
;; - appointments
;; - todos
;; - bills
;; - email?

;; ---- APPLICATIONS ------------------------------------------------
;; - browser
;; - spotify?
;; TODO: use QuteBrowser
;; TODO: reconsider since I could use QuteBrowser without EAF
(use-package eaf
  :load-path "~/.emacs.d/site-lisp/emacs-application-framework") ; Set to "/usr/share/emacs/site-lisp/eaf" if installed from AUR
  ;; (eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding)
  ;; (eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding)
  ;; (eaf-bind-key take_photo "p" eaf-camera-keybinding)
  ;; (eaf-bind-key nil "M-q" eaf-browser-keybinding)) ;; unbind, see more in the Wiki

(use-package eaf-browser
  :after (eaf)
  :load-path "~/.emacs.d/site-lisp/emacs-application-framework" ; Set to "/usr/share/emacs/site-lisp/eaf" if installed from AUR
  :custom
  ; See https://github.com/emacs-eaf/emacs-application-framework/wiki/Customization
  (eaf-browser-continue-where-left-off t)
  (eaf-browser-enable-adblocker t)
  (browse-url-browser-function 'eaf-open-browser)
  :config
  (defalias 'browse-web #'eaf-open-browser))



(toggle-frame-maximized)

;; ------------ automatically generated by Emacs  ------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(nano-theme modus-themes monotropic-theme lsp-mode mix exunit doom-modeline doom-themes embark marginalia orderless magit project magit-todos magit-todo vertico rainbow-mode modus-vivendi-theme modus-operandi-theme ripgrep google-this emmet-mode scss-mode elixir-mode ivy avy phi-replace phi-search expand-region region-bindings-mode multiple-cursors dashboard fireplace zone-nyan zone-rainbow misc web-mode js2-mode which-key use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
