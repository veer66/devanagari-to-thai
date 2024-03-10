(defpackage :devanagari-to-thai-tests
  (:use #:cl #:devanagari-to-thai :fiveam))

(in-package :devanagari-to-thai-tests)

(def-suite transliteration
  :description "Test transliteration")

(in-suite transliteration)

(test transliterate-mailithi
      "transliterate मैथिलि ठाकुर"
      (is (equal (transliterate "मैथिलि ठाकुर")
		 "ไมถิลิ ฐากุร")))
