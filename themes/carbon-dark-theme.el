;;; carbon-dark-theme.el --- Theme 

;; Copyright (C) 2016 , Vinícius Sales

;; Author: Vinícius Sales
;; Version: 0.1
;; Package-Requires: ((emacs "24"))
;; Created with ThemeCreator, https://github.com/mswift42/themecreator.


;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;;; Code:

(deftheme carbon-dark)
(let ((class '((class color) (min-colors 89)))
      ;; Carbon Collor Palette - based on Tailwind CSS Grey palette
      (color-white "#FFFFFF")
      (color-lightest "#F8FAFC")
      (color-lighter "#F1F5F8")
      (color-light "#DAE1E7")
      (color-base "#B8C2CC")
      (color-dark "#8795A1")
      (color-darker "#606F7B")
      (color-darkest "#3D4852")
      (color-black "#22292F")
      (color-blacker "#111518")

      (color-blue "#3490DC")
      (color-cyan "#4DC0B5")
      (color-green "#38C172")
      (color-magenta "#9561E2")
      (color-red "#E3342F")
      (color-yellow "#FFED4A")

      ;; Genéricos
      (background "#22292F")
      (foreground "#B8C2CC")

      ;; Syntax Highlighting
      (builtin "#B8C2CC")
      (keyword "#B8C2CC")
      (const   "#B8C2CC")
      (comment "#606F7B")
      (func    "#B8C2CC")
      (str     "#8795A1")
      (type    "#B8C2CC")
      (var     "#B8C2CC")

      ;; TODO: Legacy variables from old code
      (bg2 "#000000")
      (bg3 "#000000")
      (bg4 "#000000")
      (fg2 "#FFFFFF")
      (fg3 "#FFFFFF")
      (fg4 "#FFFFFF")

      ;; TODO: State Colors - errors, warnings, success etc
      ;; 
      ;; References:
      ;; - https://github.com/belak/emacs-grayscale-theme
      ;; - https://github.com/11111000000/tao-theme-emacs
      (warning "#cf6868")
      (warning2 "#cfac68"))
  (custom-theme-set-faces
   'carbon-dark
   `(default ((,class (:background ,background :foreground ,foreground))))
   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-negation-char-face ((,class (:foreground ,const))))
   `(font-lock-reference-face ((,class (:foreground ,const))))
   `(font-lock-constant-face ((,class (:foreground ,const))))
   `(font-lock-doc-face ((,class (:foreground ,comment))))
   `(font-lock-function-name-face ((,class (:foreground ,func ))))
   `(font-lock-keyword-face ((,class (:foreground ,keyword))))
   `(font-lock-string-face ((,class (:foreground ,str))))
   `(font-lock-type-face ((,class (:foreground ,type ))))
   `(font-lock-variable-name-face ((,class (:foreground ,var))))
   `(font-lock-warning-face ((,class (:foreground ,warning :background ,color-base))))
   `(region ((,class (:background ,color-darker))))
   `(highlight ((,class ( :background ,color-dark))))
   `(hl-line ((,class (:background ,color-darkest))))
   `(fringe ((,class (:background ,background))))
   `(cursor ((,class (:background ,color-darker))))
   `(show-paren-match-face ((,class (:background ,warning))))
   `(isearch ((,class (:bold t :foreground ,color-black :background ,color-dark))))
   `(mode-line ((,class (:box nil :underline nil :overline nil :background ,color-blacker :foreground ,foreground))))
   `(powerline-active1 ((,class (:background ,color-darkest :foreground ,foreground))))
   `(powerline-active2 ((,class (:background ,color-darker :foreground ,foreground))))
   `(mode-line-inactive ((,class (:box nil :underline nil :overline nil :background ,color-light :foreground ,color-dark))))
   `(powerline-inactive1 ((,class (:background ,color-lighter :foreground ,color-dark))))
   `(powerline-inactive2 ((,class (:background ,color-lightest :foreground ,color-dark))))
   ;; `(mode-line-buffer-id ((,class (:bold t :foreground ,func :background nil))))
   ;; `(mode-line-highlight ((,class (:foreground ,keyword :box nil :weight bold))))
   ;; `(mode-line-emphasis ((,class (:foreground ,foreground))))
   `(vertical-border ((,class (:foreground ,fg3))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
   `(default-italic ((,class (:italic t))))
   `(link ((,class (:foreground ,const :underline t))))

   ;; Elixir
   `(elixir-atom-face ((,class (:foreground ,foreground))))
   `(elixir-attribute-face ((,class (:foreground ,foreground))))
   
   `(org-code ((,class (:foreground ,foreground))))
   `(org-hide ((,class (:foreground ,background))))
   `(org-level-1 ((,class (:bold t :foreground ,foreground :height 1.6))))
   `(org-level-2 ((,class (:bold t :foreground ,foreground :height 1.4))))
   `(org-level-3 ((,class (:bold t :foreground ,foreground :height 1.2))))
   `(org-level-4 ((,class (:bold t :foreground ,foreground))))
   `(org-date ((,class (:underline t :foreground ,var))))
   `(org-footnote  ((,class (:underline t :foreground ,fg4))))
   `(org-link ((,class (:underline t :foreground ,type ))))
   `(org-special-keyword ((,class (:foreground ,func))))
   `(org-block ((,class (:foreground ,fg3))))
   `(org-quote ((,class (:inherit org-block :slant italic))))
   `(org-verse ((,class (:inherit org-block :slant italic))))
   `(org-todo ((,class (:box nil :foreground ,color-red :bold t))))
   `(org-done ((,class (:box nil :foreground ,color-green :bold t))))
   `(org-warning ((,class (:underline t :foreground ,color-yellow))))
   `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
   `(org-agenda-date ((,class (:foreground ,var :height 1.1 ))))
   `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))
   `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.4))))
   `(org-agenda-done ((,class (:foreground ,bg4))))
   `(org-scheduled ((,class (:foreground ,type))))
   `(org-scheduled-today ((,class (:foreground ,func :weight bold :height 1.2))))
   `(org-ellipsis ((,class (:foreground ,builtin))))
   `(org-verbatim ((,class (:foreground ,fg4))))
   `(org-document-info-keyword ((,class (:foreground ,func))))
   `(org-sexp-date ((,class (:foreground ,fg4))))
   `(font-latex-bold-face ((,class (:foreground ,type))))
   `(font-latex-italic-face ((,class (:foreground ,var :italic t))))
   `(font-latex-string-face ((,class (:foreground ,str))))
   `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
   `(font-latex-match-variable-keywords ((,class (:foreground ,var))))
   `(ido-subdir ((,class (:foreground ,color-base))))
   `(ido-only-match ((,class (:foreground ,foreground :bold t))))
   `(ido-first-match ((,class (:foreground ,keyword :bold t))))
   `(gnus-header-content ((,class (:foreground ,keyword))))
   `(gnus-header-from ((,class (:foreground ,var))))
   `(gnus-header-name ((,class (:foreground ,type))))
   `(gnus-header-subject ((,class (:foreground ,func :bold t))))
   `(mu4e-view-url-number-face ((,class (:foreground ,type))))
   `(mu4e-cited-1-face ((,class (:foreground ,fg2))))
   `(mu4e-cited-7-face ((,class (:foreground ,fg3))))
   `(mu4e-header-marks-face ((,class (:foreground ,type))))
   `(ffap ((,class (:foreground ,fg4))))
   `(js2-private-function-call ((,class (:foreground ,const))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground ,var))))
   `(js2-external-variable ((,class (:foreground ,type  ))))
   `(js2-function-param ((,class (:foreground ,const))))
   `(js2-jsdoc-value ((,class (:foreground ,str))))
   `(js2-private-member ((,class (:foreground ,fg3))))
   `(js3-warning-face ((,class (:underline ,keyword))))
   `(js3-error-face ((,class (:underline ,warning))))
   `(js3-external-variable-face ((,class (:foreground ,var))))
   `(js3-function-param-face ((,class (:foreground ,fg2))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
   `(js3-instance-member-face ((,class (:foreground ,const))))
   `(warning ((,class (:foreground ,warning)))) 
   `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
   `(info-quoted-name ((,class (:foreground ,builtin))))
   `(info-string ((,class (:foreground ,str))))
   `(icompletep-determined ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-default-face ((,class :foreground ,fg2)))
   `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
   `(undo-tree-visualizer-register-face ((,class :foreground ,type)))
   `(slime-repl-inputed-output-face ((,class (:foreground ,type))))
   `(trailing-whitespace ((,class :foreground nil :background ,warning)))
   `(rainbow-delimiters-depth-1-face ((,class :foreground ,foreground)))
   `(rainbow-delimiters-depth-2-face ((,class :foreground ,type)))
   `(rainbow-delimiters-depth-3-face ((,class :foreground ,var)))
   `(rainbow-delimiters-depth-4-face ((,class :foreground ,const)))
   `(rainbow-delimiters-depth-5-face ((,class :foreground ,keyword)))
   `(rainbow-delimiters-depth-6-face ((,class :foreground ,foreground)))
   `(rainbow-delimiters-depth-7-face ((,class :foreground ,type)))
   `(rainbow-delimiters-depth-8-face ((,class :foreground ,var)))

   ;; Magit
   ;; magit-diff-highlight-hunk-region-using-face
   `(magit-branch ((,class (:foreground ,const :weight bold))))
   `(magit-diff-context ((,class (:background ,color-darker :foreground ,comment))))
   `(magit-diff-context-highlight ((,class (:background ,color-darker :foreground ,foreground))))
   `(magit-diff-hunk-heading ((,class (:background ,color-dark :foreground ,comment))))
   `(magit-diff-hunk-heading-highlight ((,class (:background ,color-dark, :foreground ,foreground))))
   `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))
   `(magit-diffstat-added   ((,class (:foreground ,type))))
   `(magit-diffstat-removed ((,class (:foreground ,var))))
   `(magit-hash ((,class (:foreground ,fg2))))
   `(magit-hunk-heading           ((,class (:background ,color-base))))
   `(magit-hunk-heading-highlight ((,class (:background ,color-base, :foreground ,foreground))))
   `(magit-item-highlight ((,class :background ,bg3)))
   `(magit-log-author ((,class (:foreground ,fg3))))
   `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
   `(magit-process-ok ((,class (:foreground ,func :weight bold))))
   `(magit-section-heading ((,class (:foreground ,keyword :weight bold))))
   `(magit-section-highlight ((,class (:background ,background :foreground ,foreground))))

   `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))

   ;; term
   `(term ((,class (:foreground ,foreground :background ,background))))
   `(term-color-black ((,class (:foreground ,color-black))))
   `(term-color-blue ((,class (:foreground ,color-blue))))
   `(term-color-red ((,class (:foreground ,color-red))))
   `(term-color-green ((,class (:foreground ,color-green))))
   `(term-color-yellow ((,class (:foreground ,color-yellow))))
   `(term-color-magenta ((,class (:foreground ,color-magenta))))
   `(term-color-cyan ((,class (:foreground ,color-cyan))))
   `(term-color-white ((,class (:foreground ,color-white))))

   `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))
   `(helm-header ((,class (:foreground ,fg2 :background ,background :underline nil :box nil))))
   `(helm-source-header ((,class (:foreground ,keyword :background ,background :underline nil :weight bold))))
   `(helm-selection ((,class (:background ,bg2 :underline nil))))
   `(helm-selection-line ((,class (:background ,bg2))))
   `(helm-visible-mark ((,class (:foreground ,background :background ,bg3))))
   `(helm-candidate-number ((,class (:foreground ,background :background ,foreground))))
   `(helm-separator ((,class (:foreground ,type :background ,background))))
   `(helm-time-zone-current ((,class (:foreground ,builtin :background ,background))))
   `(helm-time-zone-home ((,class (:foreground ,type :background ,background))))
   `(helm-buffer-not-saved ((,class (:foreground ,type :background ,background))))
   `(helm-buffer-process ((,class (:foreground ,builtin :background ,background))))
   `(helm-buffer-saved-out ((,class (:foreground ,foreground :background ,background))))
   `(helm-buffer-size ((,class (:foreground ,foreground :background ,background))))
   `(helm-ff-directory ((,class (:foreground ,func :background ,background :weight bold))))
   `(helm-ff-file ((,class (:foreground ,foreground :background ,background :weight normal))))
   `(helm-ff-executable ((,class (:foreground ,var :background ,background :weight normal))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,warning2 :background ,background :weight bold))))
   `(helm-ff-symlink ((,class (:foreground ,keyword :background ,background :weight bold))))
   `(helm-ff-prefix ((,class (:foreground ,background :background ,keyword :weight normal))))
   `(helm-grep-cmd-line ((,class (:foreground ,foreground :background ,background))))
   `(helm-grep-file ((,class (:foreground ,foreground :background ,background))))
   `(helm-grep-finish ((,class (:foreground ,fg2 :background ,background))))
   `(helm-grep-lineno ((,class (:foreground ,foreground :background ,background))))
   `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((,class (:foreground ,func :background ,background))))
   `(helm-moccur-buffer ((,class (:foreground ,func :background ,background))))
   `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
   `(helm-bookmark-w3m ((,class (:foreground ,type))))
   `(company-echo-common ((,class (:foreground ,background :background ,foreground))))
   `(company-preview ((,class (:background ,background :foreground ,var))))
   `(company-preview-common ((,class (:foreground ,bg2 :foreground ,fg3))))
   `(company-preview-search ((,class (:foreground ,type :background ,background))))
   `(company-scrollbar-bg ((,class (:background ,bg3))))
   `(company-scrollbar-fg ((,class (:foreground ,keyword))))
   `(company-tooltip ((,class (:foreground ,fg2 :background ,background :bold t))))
   `(company-tooltop-annotation ((,class (:foreground ,const))))
   `(company-tooltip-common ((,class ( :foreground ,fg3))))
   `(company-tooltip-common-selection ((,class (:foreground ,str))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-selection ((,class (:background ,bg3 :foreground ,fg3))))
   `(company-template-field ((,class (:inherit region))))
   `(web-mode-attr-tag-custom-face ((,class (:foreground ,color-dark :bold nil))))
   `(web-mode-block-attr-name-face ((,class (:foreground ,foreground))))
   `(web-mode-block-attr-value-face ((,class (:foreground ,foreground))))
   `(web-mode-block-comment-face ((,class (:foreground ,comment))))
   `(web-mode-block-control-face ((,class (:foreground ,foreground))))
   `(web-mode-block-delimiter-face ((,class (:foreground ,foreground))))
   `(web-mode-block-face ((,class (:foreground ,foreground))))
   `(web-mode-block-string-face ((,class (:foreground ,foreground))))
   `(web-mode-builtin-face ((,class (:foreground ,foreground))))
   `(web-mode-comment-face ((,class (:foreground ,comment))))
   `(web-mode-constant-face ((,class (:foreground ,foreground))))
   `(web-mode-doctype-face ((,class (:foreground ,color-dark :bold nil))))
   `(web-mode-filter-face ((,class (:foreground ,foreground))))
   `(web-mode-function-call-face ((,class (:foreground ,foreground))))
   `(web-mode-function-name-face ((,class (:foreground ,foreground))))
   `(web-mode-html-attr-equal-face ((,class (:foreground ,color-dark :bold nil))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,color-dark :bold nil))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,color-dark :bold nil))))
   `(web-mode-html-tag-bracket-face ((,class (:foreground ,color-dark :bold nil))))
   `(web-mode-html-tag-custom-face ((,class (:foreground ,color-dark :bold nil))))
   `(web-mode-html-tag-face ((,class (:foreground ,color-dark :bold nil))))
   `(web-mode-html-tag-namespaced-face ((,class (:foreground ,color-dark :bold nil))))
   `(web-mode-keyword-face ((,class (:foreground ,foreground))))
   `(web-mode-preprocessor-face ((,class (:foreground ,foreground))))
   `(web-mode-string-face ((,class (:foreground ,foreground))))
   `(web-mode-symbol-face ((,class (:foreground ,foreground))))
   `(web-mode-type-face ((,class (:foreground ,foreground))))
   `(web-mode-variable-name-face ((,class (:foreground ,foreground))))
   `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
   `(jde-java-font-lock-package-face ((t (:foreground ,var))))
   `(jde-java-font-lock-public-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-private-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-constant-face ((t (:foreground ,const))))
   `(jde-java-font-lock-modifier-face ((t (:foreground ,fg2))))
   `(jde-jave-font-lock-protected-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-number-face ((t (:foreground ,var))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'carbon-dark)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; carbon-dark-theme.el ends here
