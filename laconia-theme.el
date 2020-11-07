;;; laconia-theme.el --- A minimalistic/militaristic theme in green and red

;; Copyright (C) 2020 Artyom Bologov
;;
;; Author: Artyom Bologov <aartaka@protonmail.com>
;;
;;
;; Options to load:
;;
;; Put this theme in your load-path and run
;;
;;     M-x load-theme RET laconia RET
;;
;; or put in your init file
;;
;;     (use-package laconia-theme
;;       (load-theme 'laconia t))
;;
;; or
;;
;;     (require 'laconia-theme)
;;     (load-theme 'laconia t)
;;
;; This theme is based on the monochrome theme by Xavier Noria.
;;
;; Works with Emacs 24.

(deftheme laconia
  "A minimalistic/militaristic theme in green and red.")

(let ((class '((class color) (min-colors 10)))
      (black "black")
      (white "white")
      (lgray "light gray")
      (dgray "dark gray")
      (ired "indian red")
      (red "red")
      (dogreen "dark olive green")
      (odrab "olive drab"))

  (custom-theme-set-faces
   'laconia

   `(default ((,class (:foreground ,lgray :background ,black))))
   `(cursor ((,class (:background ,lgray))))

   ;; Highlighting faces

   `(fringe ((,class (:foreground ,black :background ,lgray))))
   `(highlight ((,class (:foreground ,black :background ,lgray))))
   `(match ((,class (:background ,odrab))))
   `(region ((,class (:foreground ,black :background ,lgray))))
   `(secondary-selection ((,class (:foreground: ,black :background ,dogreen))))
   `(isearch ((,class (:foreground ,black :background ,lgray))))
   `(isearch-fail ((,class (:background ,ired))))
   `(lazy-highlight ((,class (:foreground ,black :background ,lgray))))
   `(linum ((,class (:foreground ,dgray :slant italic))))
   `(trailing-whitespace ((,class (:background ,red))))

   ;; Mode line faces

   `(mode-line ((,class (:box (:line-width -1 :style released-button)
			                  :background ,lgray :foreground ,black))))

   `(mode-line-inactive ((,class (:box (:line-width -1 :style released-button)
				                       :background ,lgray
				                       :foreground ,black))))

   ;; Whitespace-mode

   `(whitespace-empty ((,class (:background unspecified :foreground ,red))))
   `(whitespace-line ((,class (:background ,lgray :foreground ,black))))

   ;; Escape and prompt faces

   `(minibuffer-prompt ((,class (:weight bold :foreground ,lgray))))
   `(escape-glyph ((,class (:foreground ,lgray))))
   `(error ((,class (:weight bold :slant italic :foreground ,red))))
   `(warning ((,class (:foreground ,ired))))
   `(success ((,class (:foreground ,odrab))))

   ;; Font lock faces

   `(font-lock-builtin-face ((,class (:foreground ,lgray))))
   `(font-lock-comment-face ((,class (:slant italic :foreground ,dgray))))
   `(font-lock-constant-face ((,class (:weight bold :foreground ,lgray))))
   `(font-lock-function-name-face ((,class (:foreground ,white :slant italic :weight semi-bold))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground ,white))))
   `(font-lock-string-face ((,class (:foreground ,dogreen))))
   `(font-lock-doc-face ((,class (:foreground ,dgray :slant italic))))
   `(font-lock-type-face ((,class (:weight bold :foreground ,lgray))))
   `(font-lock-variable-name-face ((,class (:weight bold :foreground ,ired))))
   `(font-lock-warning-face ((,class (:foreground ,ired))))

   ;; Button and link faces

   `(link ((,class (:underline t :foreground ,lgray))))
   `(link-visited ((,class (:underline t :foreground ,dgray))))

   ;; Show-paren

   `(show-paren-match ((t (:background ,odrab))))
   `(show-paren-mismatch ((t (:background ,red))))

   ;; Speedbar

   `(speedbar-button-face ((,class (:foreground ,dgray))))
   `(speedbar-file-face ((,class (:foreground ,lgray))))
   `(speedbar-directory-face ((,class (:weight bold :foreground ,white))))
   `(speedbar-tag-face ((,class (:foreground ,dgray))))
   `(speedbar-selected-face ((,class (:underline ,lgray :foreground ,lgray))))
   `(speedbar-highlight-face ((,class (:weight bold :background ,black :foreground ,white))))

   ;; ido

   `(ido-first-match ((,class (:foreground ,lgray))))
   `(ido-only-match ((,class (:underline ,lgray :foreground ,lgray))))
   `(ido-subdir ((,class (:weight bold :foreground ,white))))

   ;; MuMaMo

   `(mumamo-background-chunk-major ((,class (:background ,black))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,black))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,black))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,black))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,black))))
   `(mumamo-border-face-in ((,class (:slant unspecified :underline unspecified
                                            :weight bold :foreground ,white))))
   `(mumamo-border-face-out ((,class (:slant unspecified :underline unspecified
                                             :weight bold :foreground ,white))))

   ;; Gnus faces

   `(gnus-group-news-1 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-1-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-2-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-3-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-4-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-5-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-mail-1-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-mail-2-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-mail-3-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-low ((,class (:foreground ,lgray))))
   `(gnus-header-content ((,class (:foreground ,lgray))))
   `(gnus-header-from ((,class (:weight bold :foreground ,lgray))))
   `(gnus-header-subject ((,class (:foreground ,lgray))))
   `(gnus-header-name ((,class (:foreground ,lgray))))
   `(gnus-header-newsgroups ((,class (:foreground ,lgray))))

   ;; Message faces

   `(message-header-name ((,class (:foreground ,lgray))))
   `(message-header-cc ((,class (:foreground ,lgray))))
   `(message-header-other ((,class (:foreground ,lgray))))
   `(message-header-subject ((,class (:foreground ,lgray))))
   `(message-header-to ((,class (:weight bold :foreground ,lgray))))
   `(message-cited-text ((,class (:slant italic :foreground ,lgray))))
   `(message-separator ((,class (:weight bold :foreground ,lgray))))

   ;; EShell

   `(eshell-prompt ((,class (:foreground ,white :bold t))))
   `(eshell-ls-archive ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-backup ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-clutter ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-directory ((,class (:foreground ,lgray :bold t))))
   `(eshell-ls-executable ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-missing ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-product ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-readonly ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-special ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-symlink ((,class (:inherit eshell-ls-unreadable))))

   ;; Org-mode

   `(org-document-title ((t (:height 1.8 :foreground ,ired))))
   `(org-document-info ((t (:foreground ,dogreen))))
   `(org-level-1 ((t (:bold t :foreground ,lgray :height 1.5))))
   `(org-level-2 ((t (:bold nil :foreground ,lgray :height 1.2))))
   `(org-level-3 ((t (:bold t :foreground ,lgray :height 1.0))))
   `(org-level-4 ((t (:bold nil :foreground ,lgray :height 1.0))))
   `(org-link ((t (:foreground ,dogreen :underline t))))
   `(org-todo ((t (:bold t :foreground ,red))))
   `(org-done ((t (:bold t :foreground ,odrab))))
   `(org-time-grid ((t (:foreground ,odrab))))
   `(org-agenda-structure ((t (:foreground ,dogreen))))
   `(org-agenda-done ((t (:foreground ,odrab))))

   ;; Outline

   `(outline-2 ((,class (:foreground ,white))))
   `(outline-8 ((,class (:foreground ,white))))

   ;; Custom

   `(custom-invalid ((,class (:foreground ,white))))
   `(custom-modified ((,class (:background ,odrab))))
   `(custom-state ((,class (:foreground ,odrab))))
   `(custom-set ((,class (:foreground ,odrab))))
   `(custom-themed ((,class (:background ,odrab))))

   ;; helm

   `(helm-header ((t (:foreground ,dgray :background ,black :underline nil :box nil))))
   `(helm-source-header
     ((t (:foreground ,white
                      :background ,black
                      :underline nil
                      :weight bold
                      :box (:line-width 1 :style released-button)))))
   `(helm-selection ((t (:background ,lgray :underline t :foreground ,black))))
   `(helm-selection-line ((t (:background ,black))))
   `(helm-visible-mark ((t (:foreground ,black :background ,white))))
   `(helm-candidate-number ((t (:foreground ,lgray :background ,black))))
   `(helm-separator ((t (:foreground ,white :background ,black))))
   `(helm-time-zone-current ((t (:foreground ,lgray :background ,black))))
   `(helm-time-zone-home ((t (:foreground ,white :background ,black))))
   `(helm-bookmark-addressbook ((t (:foreground ,lgray :background ,black))))
   `(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
   `(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
   `(helm-bookmark-gnus ((t (:foreground ,white :background ,black))))
   `(helm-bookmark-info ((t (:foreground ,lgray :background ,black))))
   `(helm-bookmark-man ((t (:foreground ,white :background ,black))))
   `(helm-bookmark-w3m ((t (:foreground ,white :background ,black))))
   `(helm-buffer-not-saved ((t (:foreground ,white :background ,black))))
   `(helm-buffer-process ((t (:foreground ,white :background ,black))))
   `(helm-buffer-saved-out ((t (:foreground ,lgray :background ,black))))
   `(helm-buffer-size ((t (:foreground ,lgray :background ,black))))
   `(helm-ff-directory ((t (:foreground ,white :background ,black :weight bold))))
   `(helm-ff-file ((t (:foreground ,lgray :background ,black :weight normal))))
   `(helm-ff-file ((t (:foreground ,ired))))
   `(helm-ff-executable ((t (:foreground ,lgray :background ,black :weight normal))))
   `(helm-ff-invalid-symlink ((t (:foreground ,white :background ,black :weight bold))))
   `(helm-ff-symlink ((t (:foreground ,white :background ,black :weight bold))))
   `(helm-ff-prefix ((t (:foreground ,black :background ,white :weight normal))))
   `(helm-grep-cmd-line ((t (:foreground ,white :background ,black))))
   `(helm-grep-file ((t (:foreground ,lgray :background ,black))))
   `(helm-grep-finish ((t (:foreground ,lgray :background ,black))))
   `(helm-grep-lineno ((t (:foreground ,lgray :background ,black))))
   `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((t (:foreground ,white :background ,black))))
   `(helm-lisp-show-completion ((t (:background ,dogreen))))
   `(helm-match ((t (:foreground ,odrab))))
   `(helm-moccur-buffer ((t (:foreground ,white :background ,black))))
   `(helm-mu-contacts-address-face ((t (:foreground ,lgray :background ,black))))
   `(helm-mu-contacts-name-face ((t (:foreground ,lgray :background ,black))))

   ;; Flyspell

   `(flyspell-duplicate ((,class (:weight unspecified :foreground unspecified
				                          :slant unspecified :underline ,lgray))))
   `(flyspell-incorrect ((,class (:weight unspecified :foreground unspecified
				                          :slant unspecified :underline ,lgray))))
   ;; Flycheck

   `(flycheck-error ((,class (:underline (:style wave :color ,red)))))
   `(flyckeck-warning ((,class (:underline (:style wave :color ,ired)))))

   ;; Flymake

   `(flymake-error ((,class (:underline (:style wave :color ,red)))))
   `(flymake-note ((,class (:underline (:style wave :color ,odrab)))))
   `(flymake-warning ((,class (:underline (:style wave :color ,ired))))))

  (custom-theme-set-variables
   'laconia
   `(ansi-color-names-vector [,black ,lgray ,dgray ,dogreen ,ired])))

;; Autoload for MELPA

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'laconia)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; laconia-theme.el ends here
