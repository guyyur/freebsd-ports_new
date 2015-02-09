--- mk/lib.mk.orig	2015-01-07 11:18:28.000000000 +0200
+++ mk/lib.mk	2015-02-08 20:55:14.000000000 +0200
@@ -7,7 +7,7 @@
 
 OBJS+=			${SRCS:.c=.o}
 SOBJS+=			${OBJS:.o=.So}
-LIBS?=			${LIBNAME} ${SHLIB}
+LIBS=			${LIBNAME} ${SHLIB}
 
 CLEANFILES+=		${OBJS} ${SOBJS} ${LIBS} ${SHLIB_LINK}
 
