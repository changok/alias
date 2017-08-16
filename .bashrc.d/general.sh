PATH="/usr/local/bin/psql:$PATH"
PATH="/usr/local/share/npm/bin/:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export RUBY_GC_HEAP_INIT_SLOTS=500000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=50000000

export HISTFILESIZE=250000
export HISTSIZE=250000

export VISUAL="vim"
export EDITOR="vim"
export JAVA_HOME="$(/usr/libexec/java_home)"
export JAVA_TOOL_OPTIONS="-Dfile.encoding=utf8"
export JRUBY_OPTS="-J-XX:+HeapDumpOnOutOfMemoryError \
-J-XX:+CMSClassUnloadingEnabled \
-J-XX:+UseConcMarkSweepGC \
-J-XX:+CMSScavengeBeforeRemark \
-J-XX:TargetSurvivorRatio=90 \
-J-Xmx4G \
-J-Dfile.encoding=UTF-8 \
-J-classpath ${JAVA_HOME}/lib/tools.jar \
--dev"
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=128m"
