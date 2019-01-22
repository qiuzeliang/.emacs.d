(setq indicate-empty-lines t)
(setq inhibit-splash-screen t)
(setq initial-frame-alist (quote ((fullscreen . maximized))))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq use-dialog-box nil)
(setq use-file-dialog nil)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default cursor-type 'bar)

(global-linum-mode t)
(global-hl-line-mode t)
(delete-selection-mode t)
(electric-pair-mode)

(setq show-paren-delay 0)
(show-paren-mode)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(use-package disable-mouse
  :ensure t
  :config
  (global-disable-mouse-mode))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package smartparens
  :ensure t
  :config
  (show-smartparens-global-mode t))

(use-package hungry-delete
  :ensure t
  :config
  (global-hungry-delete-mode))

(use-package dracula-theme
  :ensure t
  :config
  (load-theme 'dracula t))

(set-face-attribute
 'default nil
 :font (font-spec :name "-outline-Consolas-bold-normal-normal-mono-*-*-*-*-c-*-iso10646-1"
                  :weight 'normal
                  :slant 'normal
                  :size 9.0))
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font
   (frame-parameter nil 'font)
   charset
   (font-spec :name "-outline-微软雅黑-normal-normal-normal-sans-*-*-*-*-p-*-iso10646-1"
              :weight 'normal
              :slant 'normal
              :size 10.5)))

(provide 'init-gui)
