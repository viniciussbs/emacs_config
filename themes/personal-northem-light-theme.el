;;; personal-northem-light-theme.el --- Theme

;; Copyright (C) 2017 , Vinícius Sales

;; Author: Vinícius Sales
;; Version: 0.1
;; Package-Requires: ((emacs "24"))

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;; THE SOFTWARE.

;; This file is not part of Emacs.

;;; Commentary:

;; Based on my interpretation of the Northem Light color palette.
;; This is not an official release, but a temporary project while the official release is under development.
;; Northem Light color palette: https://github.com/arcticicestudio/northem-light
;; Offical WIP theme: https://github.com/arcticicestudio/northem-light/issues/1

;;; Code:

(deftheme personal-northem-light)
(let ((class '((class color) (min-colors 89)))
      (base02   "#454546") ;; northem-light-0
      (base01   "#6D6D6F") ;; northem-light-1
      (base00   "#C6C6C8") ;; northem-light-2
      (base0    "#E0E0E1") ;; northem-light-3
      (base1    "#F2F2F7") ;; northem-light-4
      (base2    "#F9F9FC") ;; northem-light-5
      (base3    "#FFFFFF") ;; northem-light-6
      (greenish "#7ACAC2") ;; northem-light-7
      (cyan     "#6FBAD0") ;; northem-light-8
      (blue     "#71A7CA") ;; northem-light-9
      (bluer    "#5681B3") ;; northem-light-10
      (red      "#DF5C5A") ;; northem-light-11
      (orange   "#F19054") ;; northem-light-12
      (yellow   "#FFC568") ;; northem-light-13
      (green    "#C6C961") ;; northem-light-14
      (magenta  "#BA8EC4") ;; northem-light-15
      )
  (custom-theme-set-faces
   'personal-northem-light
   `(default ((,class (:foreground ,base02 :background ,base3))))
   `(cursor ((,class (:foreground ,base3 :background ,magenta))))
   `(fringe ((,class (:foreground ,base0 :background ,base2))))
   `(header-line ((,class (:foreground ,base02 :background ,base2))))
   `(hl-line ((,class (:background ,base2))))
   `(highlight ((,class (:background ,base2))))
   `(lazy-highlight ((,class (:background ,base2 :underline t))))
   `(isearch ((,class (:foreground ,blue :inverse-video t :underline nil))))
   `(isearch-fail ((,class (:foreground ,red :inverse-video t))))
   `(menu ((,class (:foreground ,base02 :background ,base2))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,base02))))
   `(mode-line ((,class (:foreground ,cyan :background ,base2 :box (:line-width 3 :color ,base2)))))
   `(mode-line-inactive ((,class (:foreground ,base1 :background ,base2 :strike-through t :box (:line-width 3 :color ,base2)))))
   ;; `(mode-line-highlight ((,class (:foreground ,base02 :box nil :weight bold))))
   ;; `(mode-line-emphasis ((,class (:foreground ,base02))))
   `(region ((,class (:foreground ,base3 :background ,base0))))
   `(secondary-selection ((,class (:background ,base2))))
   `(trailing-whitespace ((,class (:foreground ,red :inverse-video t))))
   `(vertical-border ((,class (:foreground ,base02))))
   `(compilation-info ((,class (:forground ,greenish :bold t))))
   `(compilation-warning ((,class (:foreground ,orange :bold t))))

   ;; font-lock
   `(font-lock-builtin-face ((,class (:foreground ,base02))))
   `(font-lock-comment-face ((,class (:foreground ,base00))))
   `(font-lock-negation-char-face ((,class (:foreground ,base02))))
   `(font-lock-reference-face ((,class (:foreground ,base02))))
   `(font-lock-constant-face ((,class (:foreground ,base02))))
   `(font-lock-doc-face ((,class (:foreground ,base1))))
   `(font-lock-function-name-face ((,class (:foreground ,base02))))
   `(font-lock-keyword-face ((,class (:bold ,class :foreground ,base02))))
   `(font-lock-string-face ((,class (:foreground ,cyan))))
   `(font-lock-type-face ((,class (:foreground ,base02))))
   `(font-lock-variable-name-face ((,class (:foreground ,base02))))
   `(font-lock-warning-face ((,class (:foreground ,red :background ,base2))))

   ;; font-latex
   `(font-latex-bold-face ((,class (:foreground ,base02))))
   `(font-latex-italic-face ((,class (:foreground ,base02 :italic t))))
   `(font-latex-string-face ((,class (:foreground ,cyan))))
   `(font-latex-match-reference-keywords ((,class (:foreground ,base02))))
   `(font-latex-match-variable-keywords ((,class (:foreground ,base02))))

   ;; elixir-mode
   `(elixir-atom-face ((,class (:foreground ,bluer))))

   ;; web-mode
   `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
   `(web-mode-keyword-face ((,class (:foreground ,base02))))
   `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
   `(web-mode-string-face ((,class (:foreground ,cyan))))
   `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,cyan))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,base02))))
   `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
   `(web-mode-html-tag-face ((,class (:foreground ,cyan))))
   `(web-mode-html-tag-bracket-face ((,class (:foreground ,cyan))))
   `(web-mode-css-selector-face ((,class (:foreground ,cyan))))
   `(web-mode-whitespace-face ((,class (:foreground ,red :inverse-video t))))

   ;; css
   `(css-selector ((,class (:foreground ,cyan))))

   ;; ido
   `(ido-first-match ((,class (:foreground ,greenish :weight normal))))
   `(ido-only-match ((,class (:foreground ,greenish :weight normal))))
   `(ido-subdir ((,class (:foreground ,blue))))
   `(ido-incomplete-regexp ((,class (:foreground ,red :weight bold ))))
   `(ido-indicator ((,class (:background ,red :foreground ,base3 :width condensed))))
   `(ido-virtual ((,class (:foreground ,magenta))))

   ;; flx
   `(flx-highlight-face ((,class (:foreground ,greenish :weight normal :underline nil))))

   ;; linum
   `(linum ((,class (:weight normal :underline nil :foreground ,base00 :background ,base2))))
   `(linum-relative-current-face ((,class (:inherit linum))))

   ;; flycheck
   `(flycheck-error
     ((,(append '((supports :underline (:style wave))) class)
       (:underline (:style wave :color ,red) :inherit unspecified))
      (,class (:foreground ,red :inverse-video t :weight bold :underline t))))
   `(flycheck-warning
     ((,(append '((supports :underline (:style wave))) class)
       (:underline (:style wave :color ,yellow) :inherit unspecified))
      (,class (:foreground ,yellow :inverse-video t :weight bold :underline t))))
   `(flycheck-info
     ((,(append '((supports :underline (:style wave))) class)
       (:underline (:style wave :color ,blue) :inherit unspecified))
      (,class (:foreground ,blue :inverse-video t :weight bold :underline t))))
   `(flycheck-fringe-error ((,class (:foreground ,red :inverse-video t :weight bold))))
   `(flycheck-fringe-warning ((,class (:foreground ,yellow :inverse-video t :weight bold))))
   `(flycheck-fringe-info ((,class (:foreground ,blue :inverse-video t :weight bold))))

   `(show-paren-match ((t (:background ,cyan :foreground ,base3))))
   `(show-paren-mismatch ((t (:background ,red :foreground ,base3))))

   ;; org
   `(org-hide ((t (:foreground ,base3))))
   `(org-todo ((t (:foreground ,red :bold t))))
   `(org-done ((t (:foreground ,greenish :bold t))))

   `(org-code ((,class (:foreground ,base1))))
   `(org-level-1 ((,class (:bold t :foreground ,base1 :height 1.1))))
   `(org-level-2 ((,class (:bold nil :foreground ,base1))))
   `(org-level-3 ((,class (:bold t :foreground ,base02))))
   `(org-level-4 ((,class (:bold nil :foreground ,base02))))
   `(org-date ((,class (:underline t :foreground ,base02) )))
   `(org-footnote  ((,class (:underline t :foreground ,base02))))
   `(org-link ((,class (:underline t :foreground ,base02 ))))
   `(org-special-keyword ((,class (:foreground ,base02))))
   `(org-block ((,class (:foreground ,base1))))
   `(org-quote ((,class (:inherit org-block :slant italic))))
   `(org-verse ((,class (:inherit org-block :slant italic))))
   `(org-warning ((,class (:underline t :foreground ,red))))
   `(org-agenda-structure ((,class (:weight bold :foreground ,base1 :box (:color ,base02) :background ,base1))))
   `(org-agenda-date ((,class (:foreground ,base02 :height 1.1 ))))
   `(org-agenda-date-weekend ((,class (:weight normal :foreground ,base02))))
   `(org-agenda-date-today ((,class (:weight bold :foreground ,base02 :height 1.4))))
   `(org-agenda-done ((,class (:foreground ,base02))))
   `(org-scheduled ((,class (:foreground ,base02))))
   `(org-scheduled-today ((,class (:foreground ,base02 :weight bold :height 1.2))))
   `(org-ellipsis ((,class (:inherit ,font-lock-builtin-face))))
   `(org-verbatim ((,class (:foreground ,base02))))
   `(org-document-info-keyword ((,class (:foreground ,base02))))
   `(org-sexp-date ((,class (:foreground ,base02))))

   `(default-italic ((,class (:italic t))))
   `(link ((,class (:foreground ,base0 :underline t))))

   `(gnus-header-content ((,class (:foreground ,base0))))
   `(gnus-header-from ((,class (:foreground ,base0))))
   `(gnus-header-name ((,class (:foreground ,base0))))
   `(gnus-header-subject ((,class (:foreground ,base0 :bold t))))
   `(mu4e-view-url-number-face ((,class (:foreground ,base0))))
   `(mu4e-cited-1-face ((,class (:foreground ,base1))))
   `(mu4e-cited-7-face ((,class (:foreground ,base1))))
   `(mu4e-header-marks-face ((,class (:foreground ,base0))))
   `(ffap ((,class (:foreground ,base0))))
   `(js2-private-function-call ((,class (:foreground ,base0))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,cyan))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground ,base0))))
   `(js2-external-variable ((,class (:foreground ,base0  ))))
   `(js2-function-param ((,class (:foreground ,base02))))
   `(js2-jsdoc-value ((,class (:foreground ,cyan))))
   `(js2-private-member ((,class (:foreground ,base1))))
   `(js3-warning-face ((,class (:underline ,orange))))
   `(js3-error-face ((,class (:underline ,red))))
   `(js3-external-variable-face ((,class (:foreground ,base0))))
   `(js3-function-param-face ((,class (:foreground ,base1))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,base0))))
   `(js3-instance-member-face ((,class (:foreground ,base0))))
   `(warning ((,class (:foreground ,red))))
   `(ac-completion-face ((,class (:underline t :foreground ,base0))))
   `(info-quoted-name ((,class (:inherit ,font-lock-builtin-face))))
   `(info-string ((,class (:foreground ,cyan))))
   `(icompletep-determined ((,class :inherit ,font-lock-builtin-face)))
   `(undo-tree-visualizer-current-face ((,class :inherit ,font-lock-builtin-face)))
   `(undo-tree-visualizer-default-face ((,class :foreground ,base1)))
   `(undo-tree-visualizer-unmodified-face ((,class :foreground ,base0)))
   `(undo-tree-visualizer-register-face ((,class :foreground ,base0)))
   `(slime-repl-inputed-output-face ((,class (:foreground ,base0))))
   `(rainbow-delimiters-depth-1-face ((,class :foreground ,base0)))
   `(rainbow-delimiters-depth-2-face ((,class :foreground ,base0)))
   `(rainbow-delimiters-depth-3-face ((,class :foreground ,base0)))
   `(rainbow-delimiters-depth-4-face ((,class :foreground ,base0)))
   `(rainbow-delimiters-depth-5-face ((,class :foreground ,base0)))
   `(rainbow-delimiters-depth-6-face ((,class :foreground ,base0)))
   `(rainbow-delimiters-depth-7-face ((,class :foreground ,base0)))
   `(rainbow-delimiters-depth-8-face ((,class :foreground ,base0)))
   `(magit-item-highlight ((,class :background ,base1)))
   `(magit-section-heading        ((,class (:foreground ,base0 :weight bold))))
   `(magit-hunk-heading           ((,class (:background ,base1))))
   `(magit-section-highlight      ((,class (:background ,base2))))
   `(magit-hunk-heading-highlight ((,class (:background ,base1))))
   `(magit-diff-context-highlight ((,class (:background ,base1 :foreground ,base1))))
   `(magit-diffstat-added   ((,class (:foreground ,base0))))
   `(magit-diffstat-removed ((,class (:foreground ,base0))))
   `(magit-process-ok ((,class (:foreground ,base0 :weight bold))))
   `(magit-process-ng ((,class (:foreground ,yellow :weight bold))))
   `(magit-branch ((,class (:foreground ,base0 :weight bold))))
   `(magit-log-author ((,class (:foreground ,base1))))
   `(magit-hash ((,class (:foreground ,base1))))
   `(magit-diff-file-header ((,class (:foreground ,base1 :background ,base1))))
   `(term ((,class (:foreground ,base0 :background ,base3))))
   `(term-color-black ((,class (:foreground ,base0 :background ,base02))))
   `(term-color-blue ((,class (:foreground ,base0 p:background ,blue))))
   `(term-color-red ((,class (:foreground ,base0 :background ,red))))
   `(term-color-greenish ((,class (:foreground ,base0 :background ,greenish))))
   `(term-color-yellow ((,class (:foreground ,base0 :background ,yellow))))
   `(term-color-magenta ((,class (:foreground ,base0 :background ,magenta))))
   `(term-color-cyan ((,class (:foreground ,base0 :background ,cyan))))
   `(term-color-white ((,class (:foreground ,base0 :background ,base3))))
   `(rainbow-delimiters-unmatched-face ((,class :foreground ,red)))
   `(helm-header ((,class (:foreground ,base1 :background ,base3 :underline nil :box nil))))
   `(helm-source-header ((,class (:foreground ,base0 :background ,base3 :underline nil :weight bold))))
   `(helm-selection ((,class (:background ,base2 :underline nil))))
   `(helm-selection-line ((,class (:background ,base2))))
   `(helm-visible-mark ((,class (:foreground ,base3 :background ,base1))))
   `(helm-candidate-number ((,class (:foreground ,base3 :background ,base0))))
   `(helm-separator ((,class (:foreground ,base0 :background ,base3))))
   `(helm-time-zone-current ((,class (:inherit ,font-lock-builtin-face :background ,base3))))
   `(helm-time-zone-home ((,class (:foreground ,base0 :background ,base3))))
   `(helm-buffer-not-saved ((,class (:foreground ,base0 :background ,base3))))
   `(helm-buffer-process ((,class (:inherit ,font-lock-builtin-face :background ,base3))))
   `(helm-buffer-saved-out ((,class (:foreground ,base0 :background ,base3))))
   `(helm-buffer-size ((,class (:foreground ,base0 :background ,base3))))
   `(helm-ff-directory ((,class (:foreground ,base0 :background ,base3 :weight bold))))
   `(helm-ff-file ((,class (:foreground ,base0 :background ,base3 :weight normal))))
   `(helm-ff-executable ((,class (:foreground ,base0 :background ,base3 :weight normal))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,red :background ,base3 :weight bold))))
   `(helm-ff-symlink ((,class (:foreground ,base0 :background ,base3 :weight bold))))
   `(helm-ff-prefix ((,class (:foreground ,base3 :background ,base0 :weight normal))))
   `(helm-grep-cmd-line ((,class (:foreground ,base0 :background ,base3))))
   `(helm-grep-file ((,class (:foreground ,base0 :background ,base3))))
   `(helm-grep-finish ((,class (:foreground ,base1 :background ,base3))))
   `(helm-grep-lineno ((,class (:foreground ,base0 :background ,base3))))
   `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((,class (:foreground ,base0 :background ,base3))))
   `(helm-moccur-buffer ((,class (:foreground ,base0 :background ,base3))))
   `(helm-source-go-package-godoc-description ((,class (:foreground ,cyan))))
   `(helm-bookmark-w3m ((,class (:foreground ,base0))))
   `(company-echo-common ((,class (:foreground ,base3 :background ,base0))))
   `(company-preview ((,class (:background ,base3 :foreground ,base0))))
   `(company-preview-common ((,class (:foreground ,base2 :foreground ,base1))))
   `(company-preview-search ((,class (:foreground ,base0 :background ,base3))))
   `(company-scrollbar-bg ((,class (:background ,base1))))
   `(company-scrollbar-fg ((,class (:foreground ,base0))))
   `(company-tooltip ((,class (:foreground ,base1 :background ,base3 :bold t))))
   `(company-tooltop-annotation ((,class (:foreground ,base0))))
   `(company-tooltip-common ((,class ( :foreground ,base1))))
   `(company-tooltip-common-selection ((,class (:foreground ,cyan))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-selection ((,class (:background ,base1 :foreground ,base1))))
   `(company-template-field ((,class (:inherit region))))
   `(jde-java-font-lock-package-face ((t (:foreground ,base0))))
   `(jde-java-font-lock-public-face ((t (:foreground ,base0))))
   `(jde-java-font-lock-private-face ((t (:foreground ,base0))))
   `(jde-java-font-lock-constant-face ((t (:foreground ,base0))))
   `(jde-java-font-lock-modifier-face ((t (:foreground ,base1))))
   `(jde-jave-font-lock-protected-face ((t (:foreground ,base0))))
   `(jde-java-font-lock-number-face ((t (:foreground ,base0))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'personal-northem-light)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; personal-northem-light-theme.el ends here
