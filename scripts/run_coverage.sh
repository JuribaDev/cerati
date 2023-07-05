#!/bin/zsh


flutter test --converage


genhtml converage/lcov.info -o coverage/html


open coverage/html/index.html