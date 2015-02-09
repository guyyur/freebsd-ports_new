
PORTNAME=	dhcpcd-gtk
PORTVERSION=	${DHCPCD_UI_VERSION}
CATEGORIES=	net

MAINTAINER=	ports@FreeBSD.org
COMMENT=	GTK+ system tray monitor for dhcpcd

DESCR=		${.CURDIR}/pkg-descr
MASTERDIR=	${.CURDIR}/../dhcpcd-icons
PLIST=		${.CURDIR}/pkg-plist

RUN_DEPENDS=	dhcpcd-icons>=${DHCPCD_UI_VERSION}:${PORTSDIR}/net/dhcpcd-icons

USES=		pkgconfig tar:bzip2 gettext
USE_GNOME=	gtk20
CONFIGURE_ARGS+=--without-dhcpcd-online \
		--without-icons \
		--with-gtk+ \
		--without-qt

CFLAGS+=	-I${LOCALBASE}/include

OPTIONS_DEFINE=	NOTIFY
OPTIONS_DEFAULT=NOTIFY

# Override NOTIFY_DESC
NOTIFY_DESC=	Display notifications

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNOTIFY}
CONFIGURE_ARGS+=--enable-notification
LIB_DEPENDS+=	libnotify.so:${PORTSDIR}/devel/libnotify
.else
CONFIGURE_ARGS+=--disable-notification
.endif

.include "${MASTERDIR}/Makefile.common"
.include <bsd.port.mk>
