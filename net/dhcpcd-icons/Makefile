
PORTNAME=	dhcpcd-icons
PORTVERSION=	${DHCPCD_UI_VERSION}
CATEGORIES=	net

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Shared icons for dhcpcd-gtk and dhcpcd-qt

RUN_DEPENDS=	${LOCALBASE}/share/icons/hicolor/index.theme:${PORTSDIR}/misc/hicolor-icon-theme

USES=		tar:bzip2
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--without-dhcpcd-online \
		--with-icons \
		--without-gtk+ \
		--without-qt

.include "${.CURDIR}/Makefile.common"
.include <bsd.port.mk>
