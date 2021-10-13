;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Josh Blais"
      user-mail-address "josh@joshblais.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
(setq doom-font (font-spec :family "JetBrainsMono Nerd Font" :size 15))
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-nord)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "/mnt/TrueNAS/org")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
(require 'org-mime)
(require 'centaur-tabs)
(centaur-tabs-mode t)
(setq centaur-tabs-set-bar 'left
      centaur-tabs-style "bar"
      centaur-tabs-set-icons t
      centaur-tabs-gray-out-icons 'buffer
      centaur-tabs-height 24
      centaur-tabs-set-modified-marker t
      centaur-tabs-style "bar"
      centaur-tabs-modified-marker "•")
;(global-set-key (kbd "C-k")  'centaur-tabs-backward)
;(global-set-key (kbd "C-j") 'centaur-tabs-forward)

; Evil-escape sequence
(setq-default evil-escape-key-sequence "kj")
(setq-default evil-escape-delay 0.2)

;; Emmet remap
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(map! :map emmet-mode-keymap
      :n "<C-return>" #'emmet-expand-line)
(setq emmet-expand-jsx-className? t) ;; default nil
;;---------
(use-package org
  :ensure nil
  :custom (org-modules '(org-habit)))
;;---------
(after! org
  (map! :map org-mode-map
        :n "<M-left>" #'org-do-promote
        :n "<M-right>" #'org-do-demote)

  (setq org-fancy-priorities-list '("
⚡
" "
⬆
" "
⬇
" "
☕
")))

;; Load elfeed-org
(custom-set-variables
 '(elfeed-feeds
   (quote
    (("https://www.lukesmith.xyz/rss.xml" )
     ("https://www.hackernoon.com/feed" )
     ("https://feeds.feedburner.com/dcb" )
     ("http://feeds.feedburner.com/zerohedge/feed" )
     ("https://archlinux.org/feeds/news/")
     ("https://www.reddit.com/r/hacking/")
     ("http://krebsonsecurity.com/feed/")
     ("https://www.infowars.com/rss.xml")
     ("http://feeds.feedburner.com/breitbart")
     ("https://www.zdnet.com/topic/security/rss.xml")))))

;; Line wrap
(global-visual-line-mode t)

;; use TabNine
(require 'company-tabnine)
(add-to-list 'company-backends #'company-tabnine)
;; Trigger completion immediately.
(setq company-idle-delay 0)
;; Number the candidates (use M-1, M-2 etc to select completions).
(setq company-show-numbers t)

;; Setup Minimap
(require 'sublimity)
(require 'sublimity-scroll)
(require 'sublimity-map) ;; experimental
(require 'sublimity-attractive)

;; Treemacs
(require 'treemacs-all-the-icons)
(setq doom-themes-treemacs-theme "all-the-icons")
;;(treemacs-load-theme "all-the-icons")

;; Transparency
(set-frame-parameter (selected-frame) 'alpha '(96 . 95))
(add-to-list 'default-frame-alist '(alpha . (96 . 95)))

;; Dimmer setup
(require 'dimmer)
(dimmer-configure-which-key)
(dimmer-configure-helm)
(setq dimmer-fraction 0.30)
(dimmer-mode t)

;; Beacon setup
(beacon-mode 1)

;; Aggresssive Indent
(require 'aggressive-indent)
(global-aggressive-indent-mode 1)

;; Blink cursor
(blink-cursor-mode 1)

(load-file "~/.config/mu4e/mu4e-config.el")

;; Trying to get pomodoro timer working
(require 'org)
(setq org-clock-sound "~/Downloads/Gong.wav")

;; zoom in/out like we do everywhere else.
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
;; Optionally specify a number of files containing elfeed
;; configuration. If not set then the location below is used.
;; Note: The customize interface is also supported.

;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
