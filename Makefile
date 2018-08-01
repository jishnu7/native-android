MODE = release
GPROF_FLAG = 0
RELEASE_FLAG = 0
PROFILE_FLAG = 0
V8_SYMBOLS = 0

# Enable DEBUG mode and JavaScript profiling but not Gprof
debug: GPROF_FLAG = 0
debug: RELEASE_FLAG = 0
debug: PROFILE_FLAG = 1
debug: MODE = debug
debug: all

# This version links with libv8_g.a to allow for better tracing of V8-related crashes
v8symbols: V8_SYMBOLS = 1
v8symbols: debug

# Enable RELEASE mode and Gprof but not JavaScript profiling
gprof: GPROF_FLAG = 1
gprof: RELEASE_FLAG = 1
gprof: PROFILE_FLAG = 0
gprof: MODE = release
gprof: all

# Enable RELEASE mode and Gprof and also JavaScript profiling
jsprof: GPROF_FLAG = 1
jsprof: RELEASE_FLAG = 1
jsprof: PROFILE_FLAG = 1
jsprof: MODE = release
jsprof: all

# Enable RELEASE mode but not Gprof or JavaScript profiling
release: GPROF_FLAG = 0
release: RELEASE_FLAG = 1
release: PROFILE_FLAG = 0
release: MODE = release
release: all

analyze:
	./scripts/analyze.sh

setup:
	node checkSymlinks
