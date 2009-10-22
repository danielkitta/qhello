## QHello

AUTOMAKE_OPTIONS = subdir-objects
ACLOCAL_AMFLAGS  = -I build ${ACLOCAL_FLAGS}

include $(top_srcdir)/build/autotroll.mk

AM_CPPFLAGS = $(QT_CPPFLAGS)
AM_CXXFLAGS = $(QT_CXXFLAGS)
AM_LDFLAGS  = $(QT_LDFLAGS)
LDADD       = $(QT_LIBS)

bin_PROGRAMS = qhello

qhello_SOURCES =	\
	src/main.cc	\
	src/hello.cc	\
	src/hello.h

nodist_qhello_SOURCES =	\
	src/hello.moc.cc

CLEANFILES = $(nodist_qhello_SOURCES)

dist_noinst_SCRIPTS = autogen.sh
