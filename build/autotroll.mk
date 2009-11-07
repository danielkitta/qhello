# Makerules.
# This file is part of AutoTroll.
# Copyright (C) 2006  Benoit Sigoure.
#
# AutoTroll is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301,
# USA.
#
# In addition, as a special exception, the copyright holders of AutoTroll
# give you unlimited permission to copy, distribute and modify the configure
# scripts that are the output of Autoconf when processing the macros of
# AutoTroll.  You need not follow the terms of the GNU General Public License
# when using or distributing such scripts, even though portions of the text of
# AutoTroll appear in them. The GNU General Public License (GPL) does govern
# all other use of the material that constitutes AutoTroll.
#
# This special exception to the GPL applies to versions of AutoTroll
# released by the copyright holders of AutoTroll.  Note that people who make
# modified versions of AutoTroll are not obligated to grant this special
# exception for their modified versions; it is their choice whether to do so.
# The GNU General Public License gives permission to release a modified version
# without this exception; this exception also makes it possible to release a
# modified version which carries forward this exception.

 # ------------- #
 # DOCUMENTATION #
 # ------------- #

# See autotroll.m4 :)


SUFFIXES = .moc.cpp .moc.cc .moc.cxx .moc.C .h .hh \
           .ui .ui.h .ui.hh \
           .qrc .qrc.cpp .qrc.cc .qrc.cxx .qrc.C

# Evaluates to 0 iff silent rules are enabled
at_verbosity   = $(at_verbosity_$(V))
at_verbosity_  = $(AM_DEFAULT_VERBOSITY)
at_verbosity_0 = 0

# --- #
# MOC #
# --- #

at_v_MOC   = $(at_v_MOC_$(at_verbosity))
at_v_MOC_0 = @echo "  MOC   " $@;
at_moc_cmd = $(MOC) $(QT_CPPFLAGS) $(EXTRA_CPPFLAGS)

.hh.moc.cpp:
	$(at_v_MOC)$(at_moc_cmd) -o $@ $<

.h.moc.cpp:
	$(at_v_MOC)$(at_moc_cmd) -o $@ $<

.hh.moc.cc:
	$(at_v_MOC)$(at_moc_cmd) -o $@ $<

.h.moc.cc:
	$(at_v_MOC)$(at_moc_cmd) -o $@ $<

.hh.moc.cxx:
	$(at_v_MOC)$(at_moc_cmd) -o $@ $<

.h.moc.cxx:
	$(at_v_MOC)$(at_moc_cmd) -o $@ $<

.hh.moc.C:
	$(at_v_MOC)$(at_moc_cmd) -o $@ $<

.h.moc.C:
	$(at_v_MOC)$(at_moc_cmd) -o $@ $<

# --- #
# UIC #
# --- #

at_v_UIC   = $(at_v_UIC_$(at_verbosity))
at_v_UIC_0 = @echo "  UIC   " $@;

.ui.ui.hh:
	$(at_v_UIC)$(UIC) -o $@ $<

.ui.ui.h:
	$(at_v_UIC)$(UIC) -o $@ $<

# --- #
# RCC #
# --- #

at_v_RCC   = $(at_v_RCC_$(at_verbosity))
at_v_RCC_0 = @echo "  RCC   " $@;
at_rcc_cmd = $(RCC) -name `expr 'X/$<' : '.*[\\/]\(.*\)\.qrc$$'`

.qrc.qrc.cpp:
	$(at_v_RCC)$(at_rcc_cmd) -o $@ $<

.qrc.qrc.cc:
	$(at_v_RCC)$(at_rcc_cmd) -o $@ $<

.qrc.qrc.cxx:
	$(at_v_RCC)$(at_rcc_cmd) -o $@ $<

.qrc.qrc.C:
	$(at_v_RCC)$(at_rcc_cmd) -o $@ $<
