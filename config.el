;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Tim Hawes"
      user-mail-address "trhawes@gmail.com")

(setq doom-font (font-spec :family "monospace" :size 14))

(setq doom-theme 'doom-one)

(setq display-line-numbers-type t)

(map! :map projectile-mode-map
      :g "<f4>" #'projectile-find-file)

(map! :map centaur-tabs-mode-map
      :g "C-<prior>" #'centaur-tabs-backward
      :g "C-<next>" #'centaur-tabs-forward)

(map! :map ivy-minibuffer-map
      :g "TAB" #'ivy-partial-or-done)

(load! "+emacs-frame-manager")

(load! "+email")

(load! "+dired")

(load! "+eshell.el")

(setq org-directory "~/org/")

(setq org-startup-folded t)
