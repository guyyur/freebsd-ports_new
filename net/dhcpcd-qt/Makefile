
PORTNAME=	dhcpcd-qt
PORTVERSION=	${DHCPCD_UI_VERSION}
CATEGORIES=	net

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Qt system tray monitor for dhcpcd

DESCR=		${.CURDIR}/pkg-descr
MASTERDIR=	${.CURDIR}/../dhcpcd-icons
PLIST=		${.CURDIR}/pkg-plist

RUN_DEPENDS=	dhcpcd-icons>=${DHCPCD_UI_VERSION}:${PORTSDIR}/net/dhcpcd-icons

USES=		tar:bzip2 gettext
USE_QT4=	qmake_build moc_build gui corelib
CONFIGURE_ARGS+=--without-dhcpcd-online \
		--without-icons \
		--with-qt \
		--without-gtk+
MAKE_ARGS+=	INSTALL_ROOT=${STAGEDIR}

CFLAGS+=	-I${LOCALBASE}/include

OPTIONS_DEFINE=	NOTIFY

# Override NOTIFY_DESC
NOTIFY_DESC=	Display notifications

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNOTIFY}
CONFIGURE_ARGS+=--enable-notification
USE_KDE4+=	kdelibs runtime
.else
CONFIGURE_ARGS+=--disable-notification
.endif

.include "${MASTERDIR}/Makefile.common"
.include <bsd.port.mk>
