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
  (set-frame-font "MesloLGS NF-15") ;; Other good fonts: "Monoid-11" and "DejaVu Sans Mono-12"
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

(use-package avy
  :ensure t
  :init
  (setq avy-style 'words)
  :bind
  (("C-c C-j" . avy-goto-word-0)
   ("C-c j w" . avy-goto-word-1)
   ("C-c j l" . avy-goto-line)
   ("C-c j c" . avy-goto-char)
   ("C-c j j" . avy-goto-char-in-line)
   ("C-c k k r" . avy-kill-region)
   ("C-c k k l" . avy-kill-whole-line)
   ("C-c k s l" . avy-copy-line)
   ("C-c k s r" . avy-copy-region)
   ("C-c k m r" . avy-move-region)
   ("C-c k m l" . avy-move-line)))

;; Enable Corfu completion UI
(use-package corfu
  :ensure t
  ;; Optional customizations
  ;; :custom
  ;; (corfu-cycle t)                ;; Enable cycling for `corfu-next/previous'
  ;; (corfu-auto t)                 ;; Enable auto completion
  ;; (corfu-separator ?\s)          ;; Orderless field separator
  ;; (corfu-quit-at-boundary nil)   ;; Never quit at completion boundary
  ;; (corfu-quit-no-match nil)      ;; Never quit, even if there is no match
  ;; (corfu-preview-current nil)    ;; Disable current candidate preview
  ;; (corfu-preselect 'prompt)      ;; Preselect the prompt
  ;; (corfu-on-exact-match nil)     ;; Configure handling of exact matches
  ;; (corfu-scroll-margin 5)        ;; Use scroll margin

  ;; Enable Corfu only for certain modes.
  ;; :hook ((prog-mode . corfu-mode)
  ;;        (shell-mode . corfu-mode)
  ;;        (eshell-mode . corfu-mode))

  ;; Recommended: Enable Corfu globally.
  ;; This is recommended since Dabbrev can be used globally (M-/).
  ;; See also `corfu-excluded-modes'.
  :bind
  (:map corfu-map
        ("C-SPC" . corfu-insert-separator))
  :init
  (global-corfu-mode)
  (corfu-popupinfo-mode))

;; Add extensions
(use-package cape
  :ensure t
  ;; Bind dedicated completion commands
  ;; Alternative prefix keys: C-c p, M-p, M-+, ...
  :bind (("C-c p p" . completion-at-point) ;; capf
         ("C-c p t" . complete-tag)        ;; etags
         ("C-c p d" . cape-dabbrev)        ;; or dabbrev-completion
         ("C-c p h" . cape-history)
         ("C-c p f" . cape-file)
         ("C-c p k" . cape-keyword)
         ("C-c p s" . cape-symbol)
         ("C-c p a" . cape-abbrev)
         ("C-c p i" . cape-ispell)
         ("C-c p l" . cape-line)
         ("C-c p w" . cape-dict)
         ("C-c p \\" . cape-tex)
         ("C-c p _" . cape-tex)
         ("C-c p ^" . cape-tex)
         ("C-c p &" . cape-sgml)
         ("C-c p r" . cape-rfc1345))
  :init
  ;; Add `completion-at-point-functions', used by `completion-at-point'.
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-file)
  ;;(add-to-list 'completion-at-point-functions #'cape-history)
  ;;(add-to-list 'completion-at-point-functions #'cape-keyword)
  ;;(add-to-list 'completion-at-point-functions #'cape-tex)
  ;;(add-to-list 'completion-at-point-functions #'cape-sgml)
  ;;(add-to-list 'completion-at-point-functions #'cape-rfc1345)
  ;;(add-to-list 'completion-at-point-functions #'cape-abbrev)
  ;;(add-to-list 'completion-at-point-functions #'cape-ispell)
  ;;(add-to-list 'completion-at-point-functions #'cape-dict)
  ;;(add-to-list 'completion-at-point-functions #'cape-symbol)
  ;;(add-to-list 'completion-at-point-functions #'cape-line)
)

(use-package diredfl
  :ensure t
  :init
  (diredfl-global-mode))

(use-package emacs
  :init
  ;; TAB cycle if there are only few candidates
  (setq completion-cycle-threshold 3)

  ;; Emacs 28: Hide commands in M-x which do not apply to the current mode.
  ;; Corfu commands are hidden, since they are not supposed to be used via M-x.
  ;; (setq read-extended-command-predicate
  ;;       #'command-completion-default-include-p)

  ;; Enable indentation+completion using the TAB key.
  ;; `completion-at-point' is often bound to M-TAB.
  (setq tab-always-indent 'complete))

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
  ((completion-styles '(orderless basic))
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

(toggle-frame-maximized)

;; ------------ automatically generated by Emacs  ------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(diredfl org-modern cape corfu nano-theme modus-themes monotropic-theme lsp-mode mix exunit doom-modeline doom-themes embark marginalia orderless magit project magit-todos magit-todo vertico rainbow-mode modus-vivendi-theme modus-operandi-theme ripgrep google-this emmet-mode scss-mode elixir-mode ivy avy phi-replace phi-search expand-region region-bindings-mode multiple-cursors dashboard fireplace zone-nyan zone-rainbow misc web-mode js2-mode which-key use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
