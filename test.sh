VAR=/home/travis/bin:/home/travis/.local/bin:/usr/local/lib/jvm/openjdk11/bin:/opt/pyenv/shims:/home/travis/.phpenv/shims:/home/travis/perl5/perlbrew/bin:/home/travis/.nvm/versions/node/v10.16.0/bin:/home/travis/.rvm/gems/ruby-2.7.1/bin:/home/travis/.rvm/gems/ruby-2.7.1@global/bin:/home/travis/.rvm/rubies/ruby-2.7.1/bin:/home/travis/gopath/bin:/home/travis/.gimme/versions/go1.11.1.linux.amd64/bin:/usr/local/maven-3.6.3/bin:/usr/local/cmake-3.12.4/bin:/usr/local/clang-7.0.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/home/travis/.rvm/bin:/home/travis/.phpenv/bin:/opt/pyenv/bin:/home/travis/.yarn/bin

VAR=`echo ${VAR%} | awk -v RS=: -v ORS=: '/cmake/ {next} {print}'`
VAR=${VAR%[:space:]*}
echo $VAR
