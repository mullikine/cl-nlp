(push "../rutils/" asdf:*central-registry*)
(push "../cl-nlp/" asdf:*central-registry*)
(push "./" asdf:*central-registry*)

(ql:quickload :cl-nlp-api)

(v:log :info :api "Starting API at port 7778")
(bt:make-thread (lambda () (woo:run 'napi:napi :port 7778)))

