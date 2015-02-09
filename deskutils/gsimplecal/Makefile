
PORTNAME=	gsimplecal
PORTVERSION=	2.1
CATEGORIES=	deskutils
# MASTER_SITES=	GHR
MASTER_SITES=	https://github.com/dmedvinsky/gsimplecal/archive/v${DISTVERSION:C/:(.)/\1/g}${EXTRACT_SUFX}?dummy=/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Simple and lightweight GTK calendar

LICENSE=	BSD3CLAUSE

# USE_GITHUB=	yes
# GH_ACCOUNT=	dmedvinsky
# GH_PROJECT=	gsimplecal

USE_GNOME=	gtk30
USE_GMAKE=	yes
USES=		autoreconf pkgconfig gmake
GNU_CONFIGURE=	yes

PLIST_FILES=	bin/gsimplecal

MAN1=		gsimplecal.1

.include <bsd.port.mk>
