require 'mkmf'

# mecab_config = with_config('mecab-config', 'mecab-config')
# use_mecab_config = enable_config('mecab-config')
# `mecab-config --libs-only-l`.chomp.split.each { | lib |
#   have_library(lib)
# }
# $CFLAGS += ' ' + `#{mecab_config} --cflags`.chomp
# have_header('mecab.h') && create_makefile('MeCab')

$INCFLAGS += ' -I../src'
$LDFLAGS += ' -L../src/.libs'
have_library('mecab')
have_library('stdc++')
have_header('mecab.h') && create_makefile('MeCab')
