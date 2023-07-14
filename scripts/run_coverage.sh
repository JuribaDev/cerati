#!/bin/zsh


cd .. && dart format --line-length 120 . && flutter test --coverage && genhtml coverage/lcov.info -o coverage/html && open coverage/html/index.html