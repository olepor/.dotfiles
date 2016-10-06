;;; Compiled snippets and support files for `java-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'java-mode
                     '(("sopl" "System.out.println(${1:\"text\"})$0" "PrintNewLine"
                        (require 'evil nil 'noerror)
                        nil nil "/Users/olepor/.emacs.d/private/snippets/java-mode/sopl.yasnippet" nil nil)
                       ("main_class" "class `(file-name-nondirectory (file-name-sans-extension (buffer-file-name)))` {\npublic static void main(String[] args) {\n$0\n}\n}\n\n" "main_class" nil nil nil "/Users/olepor/.emacs.d/private/snippets/java-mode/main_class.yasnippet" nil nil)
                       ("javadoc_snippet" "class `(file-name-nondirectory (file-name-sans-extension (buffer-file-name)))` {\npublic static void main(String[] args) {\n$0\n}\n}\n\n/*\n\n(let ((start-pos)\n  (nr-variables))\n)\n\n(re-search-forward \"[[:space:],(]*\\\\s-*\\\\w+\\\\[?\\\\]?\\\\s-\\\\(\\\\w+\\\\)\" nil t)\n\nint argc, String[] argv) {\n\n}\n\n" "javadoc" nil nil nil "/Users/olepor/.emacs.d/private/snippets/java-mode/javadoc.yasnippet" nil nil)))


;;; Do not edit! File generated at Mon Jun 20 16:11:39 2016
