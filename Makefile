# contrib/pg_stat_statements2/Makefile

MODULE_big = pg_stat_statements2
OBJS = pg_stat_statements2.o

EXTENSION = pg_stat_statements2
DATA = pg_stat_statements2--1.2.sql

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/pg_stat_statements2
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
