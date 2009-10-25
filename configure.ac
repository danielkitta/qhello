## QHello

AC_INIT([QHello], [0.1], [daniel.kitta@gmail.com], [qhello])
AC_PREREQ([2.59])

AC_CONFIG_SRCDIR([src/hello.cc])
AC_CONFIG_AUX_DIR([build])
AC_CONFIG_MACRO_DIR([build])
AC_CONFIG_HEADERS([build/config.h])

AM_INIT_AUTOMAKE([1.9 check-news no-define nostdinc])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES])
AC_ARG_VAR([ACLOCAL_FLAGS], [aclocal flags, e.g. -I <macro dir>])

AC_PROG_CXX
AT_WITH_QT

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
