;;;; devanagari-to-thai.asd

(asdf:defsystem #:devanagari-to-thai
  :description "Devanagari-to-Thai transliteration"
  :author "Vee Satayamas <vsatayamas@gmail.com>"
  :license  "Apache-2.0"
  :version "0.0.1"
  :serial t
  :depends-on (#:arrow-macros)
  :components ((:file "package")
	       (:file "devanagari-to-thai")))

(asdf:defsystem #:devanagari-to-thai/tests
  :depends-on (#:fiveam #:devanagari-to-thai)
  :components ((:module "t"
                :serial t
                :components ((:file "tests"))))
  :perform (test-op (o s)
		    (uiop:symbol-call :fiveam '#:run!
				      (uiop:find-symbol* 'transliteration 'devanagari-to-thai-tests))))
