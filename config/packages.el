(message "- packages configurations...")

(require 'package)
(add-to-list 'package-archives (cons "melpa" "https://melpa.org/packages/") t)

;; Use Package before Emacs initialization.
(setq package-enable-at-startup nil)
(package-initialize)
(package-refresh-contents)

;; Diminish - This package implements hiding or abbreviation of the mode line displays (lighters) of minor-modes.
(unless (package-installed-p 'diminish) (package-install 'diminish))
(require 'diminish)

;; Writeroom mode - a distraction-free mode
(unless (package-installed-p 'writeroom-mode) (package-install 'writeroom-mode))
(require 'writeroom-mode)
(with-eval-after-load 'writeroom-mode
  (define-key writeroom-mode-map (kbd "s-<") #'writeroom-decrease-width)
  (define-key writeroom-mode-map (kbd "s->") #'writeroom-increase-width)
  (define-key writeroom-mode-map (kbd "<S-s-return>") #'writeroom-adjust-width))
(global-set-key (kbd "<s-return>") 'writeroom-mode)
(setq writeroom-width 120)

;; Company - Complete Anything
(unless (package-installed-p 'company) (package-install 'company))
(add-hook 'after-init-hook 'global-company-mode)
(global-set-key (kbd "C-c TAB") 'company-complete)

;; Magit - Git client
(unless (package-installed-p 'magit) (package-install 'magit))
(global-set-key (kbd "C-c g") 'magit-status)

;; Emmet mode (aka Zen Coding)
(unless (package-installed-p 'emmet-mode) (package-install 'emmet-mode))
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'web-mode-hook  'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent 2 spaces.
(define-key emmet-mode-keymap (kbd "C-j") nil) ;; C-RET is enough

;; avy - Jump to things
(unless (package-installed-p 'avy) (package-install 'avy))
(require 'avy)
(global-unset-key (kbd "s-k"))
(global-unset-key (kbd "s-m"))
(global-unset-key (kbd "s-M"))
(global-set-key (kbd "s-l") 'avy-goto-line)
(global-set-key (kbd "s-j") 'avy-goto-subword-1)
(global-set-key (kbd "s-J") 'avy-goto-char)
(global-set-key (kbd "s-k r") 'avy-kill-region)
(global-set-key (kbd "s-k l") 'avy-kill-whole-line)
(global-set-key (kbd "s-m l") 'avy-copy-line)
(global-set-key (kbd "s-m r") 'avy-copy-region)
(global-set-key (kbd "s-M r") 'avy-move-region)
(global-set-key (kbd "s-M l") 'avy-move-line)
(setq avy-style 'words)

;; multiple-cursors
(unless (package-installed-p 'multiple-cursors) (package-install 'multiple-cursors))
(require 'multiple-cursors)
(global-set-key (kbd "C-c m l l") 'mc/edit-lines)
(global-set-key (kbd "C-c m l b") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C-c m l e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-c m a a") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c m a r") 'mc/mark-all-in-region)
(global-set-key (kbd "C-c m e") 'mc/mark-more-like-this-extended)
(global-set-key (kbd "C-c m t") 'mc/mark-sgml-tag-pair)
(global-set-key (kbd "C-c m SPC") 'set-rectangular-region-anchor)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-{") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-}") 'mc/skip-to-previous-like-this)

;; expand-region - extension to increase selected region by semantic units
(unless (package-installed-p 'expand-region) (package-install 'expand-region))
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; SCSS mode
(unless (package-installed-p 'scss-mode) (package-install 'scss-mode))
(require 'scss-mode)
(setq scss-compile-at-save nil)
(setq css-indent-offset 2)

;; YAML mode
(unless (package-installed-p 'yaml-mode) (package-install 'yaml-mode))
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; Syntax highlighting for Slim
(unless (package-installed-p 'slim-mode)
  (package-install 'slim-mode))

;; Fix for OS X
(unless (package-installed-p 'exec-path-from-shell)
  (package-install 'exec-path-from-shell))
(add-hook 'after-init-hook 'exec-path-from-shell-initialize)

;; Add node_modules/ to $PATH
(unless (package-installed-p 'add-node-modules-path)
  (package-install 'add-node-modules-path))
(add-hook 'js2-mode-hook #'add-node-modules-path)
(add-hook 'graphql-mode-hook #'add-node-modules-path)

;;flycheck for on the fly syntax checking
(unless (package-installed-p 'flycheck)
  (package-install 'flycheck))
(add-hook 'after-init-hook 'global-flycheck-mode)
(with-eval-after-load 'flycheck
  (flycheck-add-mode 'javascript-eslint 'graphql-mode))
(setq flycheck-eslint-args '("--ext" ".js" "--ext" ".graphql"))

;; Flycheck Credo
(unless (package-installed-p 'flycheck-credo)
  (package-install 'flycheck-credo))
(eval-after-load 'flycheck '(flycheck-credo-setup))
(add-hook 'elixir-mode-hook 'flycheck-mode)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
(setq flycheck-elixir-credo-strict t)

;; inf-ruby provides a REPL buffer connected to a Ruby subprocess
(unless (package-installed-p 'inf-ruby)
  (package-install 'inf-ruby))

;; Projectile is a project interaction library for Emacs
(unless (package-installed-p 'projectile)
  (package-install 'projectile))
(projectile-global-mode)
(define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
(define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
(define-key projectile-mode-map [?\s-f] 'projectile-find-file)
(define-key projectile-mode-map [?\s-g] 'projectile-grep)

;; Lorem Ipsum mode
(unless (package-installed-p 'lorem-ipsum) (package-install 'lorem-ipsum))
(require 'lorem-ipsum)

;; Fuzzy matching for Emacs ... a la Sublime Text.
(unless (package-installed-p 'flx-ido)
  (package-install 'flx-ido))
(flx-ido-mode 1)

;; Yasnippet - A template system for Emacs
(unless (package-installed-p 'yasnippet)
  (package-install 'yasnippet))
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets/ws-snippets/" ;; foo-mode and bar-mode snippet collection
        "~/.emacs.d/snippets/yasnippet/"   ;; the default collection
        ))
(yas-global-mode 1)

;; Markdown mode
(unless (package-installed-p 'markdown-mode)
  (package-install 'markdown-mode))
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; web-mode - an autonomous emacs major-mode for editing web templates
(unless (package-installed-p 'web-mode) (package-install 'web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.eex\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; js2 mode, a better Javascript mode
(unless (package-installed-p 'js2-mode)
  (package-install 'js2-mode))
;;(add-hook 'js-mode-hook 'js2-minor-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; js2 refector mode
(unless (package-installed-p 'js2-refactor)
  (package-install 'js2-refactor))
(require 'js2-refactor)
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-j")

;; GraphQL mode
(unless (package-installed-p 'graphql-mode)
  (package-install 'graphql-mode))

;; Feature mode - Highlight Gherkin/Cucumber/Feature files
(unless (package-installed-p 'feature-mode)
  (package-install 'feature-mode))

;; Lua mode
(unless (package-installed-p 'lua-mode)
  (package-install 'lua-mode))

;; Elixir mode
(unless (package-installed-p 'elixir-mode)
  (package-install 'elixir-mode))

;; Elixir Tooling Integration Into Emacs
(unless (package-installed-p 'alchemist)
  (package-install 'alchemist))
(require 'alchemist)

;; REST Client
(unless (package-installed-p 'restclient)
  (package-install 'restclient))

;; Powerline
(unless (package-installed-p 'powerline)
  (package-install 'powerline))
