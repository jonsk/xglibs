diff --git a/app-cdr/cdrkit/cdrkit-1.1.11.xgb b/app-cdr/cdrkit/cdrkit-1.1.11.xgb
new file mode 100644
index 0000000..0c093f4
--- /dev/null
+++ b/app-cdr/cdrkit/cdrkit-1.1.11.xgb
@@ -0,0 +1,95 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="A set of tools for CD/DVD reading and recording, including cdrecord"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://cdrkit.org"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://cdrkit.org/releases/$N-$V.tar.gz"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="cmake ${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.bz2
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	#cd $N-$V$R
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	#./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	#make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	#make DESTDIR=$XGPATH_DEST install
+}
+
+#post install
+xgb_postinst()
+{
+	echo "running after package installed..."
+}
+
+#pre remove
+xgb_prerm()
+{
+	echo "running before package delete..."
+}
+
+#post remove
+xgb_postrm()
+{
+	echo "running after package delete..."
+}
diff --git a/app-cdr/cdrtools/cdrtools-3.00.xgb b/app-cdr/cdrtools/cdrtools-3.00.xgb
new file mode 100644
index 0000000..a780b4b
--- /dev/null
+++ b/app-cdr/cdrtools/cdrtools-3.00.xgb
@@ -0,0 +1,79 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="a set of command line programs that allows to record CD/DVD/BluRay media"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://cdrecord.berlios.de/private/cdrecord.html"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="ftp://ftp.berlios.de/pub/cdrecord/$N-$V.tar.bz2"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.bz2
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/app-emulation/qemu-kvm/qemu-kvm-0.14.0.xgb b/app-emulation/qemu-kvm/qemu-kvm-0.14.0.xgb
new file mode 100644
index 0000000..972dec5
--- /dev/null
+++ b/app-emulation/qemu-kvm/qemu-kvm-0.14.0.xgb
@@ -0,0 +1,86 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="QEMU + Kernel-based Virtual Machine userland tools"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://www.linux-kvm.org"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+#SRC_URI="http://foo.bar.com/$N-$V.tar.bz2"
+SRC_URI="http://downloads.sourceforge.net/project/kvm/qemu-kvm/$V/qemu-kvm-$V.tar.gz"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#init 
+xgb_init()
+{
+	echo "init $N-$V$R build script..."
+}
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.gz
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+	#err_check "enter directory failed."
+
+	#second, add package specified config params to XGB_CONFIG
+	XGB_CONFIG+=" --enable-kvm "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/app-text/dos2unix/dos2unix-5.2.xgb b/app-text/dos2unix/dos2unix-5.2.xgb
new file mode 100644
index 0000000..891a340
--- /dev/null
+++ b/app-text/dos2unix/dos2unix-5.2.xgb
@@ -0,0 +1,84 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="Convert DOS or MAC text files to UNIX format or vice versa"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://www.xs4all.nl/~waterlan/dos2unix.html" 
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://www.xs4all.nl/~waterlan/dos2unix/dos2unix-5.2.tar.gz 
+	http://www.xs4all.nl/~waterlan/dos2unix/dos2unix-$V-doc.tar.gz"
+
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+
+	tar xf $XGPATH_SOURCE/$N-$V.tar.gz
+	err_check "unpack failed."
+
+	tar xf $XGPATH_SOURCE/$N-$V-doc.tar.gz
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+	#err_check "enter directory failed."
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	#./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make prefix="/usr"
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST prefix=/usr install
+}
+
diff --git a/dev-libs/apr-util/apr-util-1.3.10.xgb b/dev-libs/apr-util/apr-util-1.3.10.xgb
new file mode 100644
index 0000000..2db6b6d
--- /dev/null
+++ b/dev-libs/apr-util/apr-util-1.3.10.xgb
@@ -0,0 +1,78 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="Apache Portable Runtime Utility Library"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://apr.apache.org/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://mirror.bjtu.edu.cn/apache//apr/apr-util-$V.tar.bz2"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.bz2
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+	#err_check "enter directory failed."
+
+	#second, add package specified config params to XGB_CONFIG
+	XGB_CONFIG+=" --with-apr=/usr "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/dev-libs/apr/apr-1.4.2.xgb b/dev-libs/apr/apr-1.4.2.xgb
new file mode 100644
index 0000000..c39dbc8
--- /dev/null
+++ b/dev-libs/apr/apr-1.4.2.xgb
@@ -0,0 +1,79 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="Apache Portable Runtime Library"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://apr.apache.org/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://mirror.bjtu.edu.cn/apache//apr/apr-$V.tar.bz2"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.bz2
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+	#err_check "enter directory failed."
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/dev-perl/svn-core/svn-core-1.6.12.1.xgb b/dev-perl/svn-core/svn-core-1.6.12.1.xgb
new file mode 100644
index 0000000..690ebcf
--- /dev/null
+++ b/dev-perl/svn-core/svn-core-1.6.12.1.xgb
@@ -0,0 +1,74 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION=" A Perl extension interface for git-svn"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://search.cpan.org/~msergeant/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://search.cpan.org/CPAN/authors/id/M/MS/MSCHWERN/Alien-SVN-v$V.tar.gz"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND="expat"
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/Alien-SVN-v$V.tar.gz
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd Alien-SVN-v$V
+	perl Build.PL PREFIX=/usr DESTDIR=$XGPATH_DEST
+
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	./Build
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	./Build test
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	./Build DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/dev-perl/svn-simple/svn-simple-0.28.xgb b/dev-perl/svn-simple/svn-simple-0.28.xgb
new file mode 100644
index 0000000..2fa1a98
--- /dev/null
+++ b/dev-perl/svn-simple/svn-simple-0.28.xgb
@@ -0,0 +1,74 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION=" A Perl extension interface for git-svn"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://search.cpan.org/~msergeant/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://search.cpan.org/CPAN/authors/id/C/CL/CLKAO/SVN-Simple-$V.tar.gz"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND="expat"
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/SVN-Simple-$V.tar.gz
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd SVN-Simple-$V
+	perl Makefile.PL PREFIX=/usr DESTDIR=$XGPATH_DEST
+
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	make test
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/dev-util/cgdb/cgdb-0.6.5.xgb b/dev-util/cgdb/cgdb-0.6.5.xgb
new file mode 100644
index 0000000..3407ee0
--- /dev/null
+++ b/dev-util/cgdb/cgdb-0.6.5.xgb
@@ -0,0 +1,82 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="A curses front-end for GDB, the GNU debugger"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://cgdb.sourceforge.net/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+#SRC_URI="http://foo.bar.com/$N-$V.tar.bz2"
+SRC_URI="http://cdnetworks-kr-1.dl.sourceforge.net/project/cgdb/cgdb/cgdb-$V/cgdb-$V.tar.gz"
+
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.gz
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+	#err_check "enter directory failed."
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/dev-vcs/subversion/subversion-1.6.15.xgb b/dev-vcs/subversion/subversion-1.6.15.xgb
new file mode 100644
index 0000000..6c166a6
--- /dev/null
+++ b/dev-vcs/subversion/subversion-1.6.15.xgb
@@ -0,0 +1,79 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="Advanced version control system"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://subversion.apache.org/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://subversion.tigris.org/downloads/subversion-$V.tar.bz2"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND="neon svn-core"
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.bz2
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+	#err_check "enter directory failed."
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/mail-client/claws-mail/claws-mail-3.7.8.xgb b/mail-client/claws-mail/claws-mail-3.7.8.xgb
new file mode 100644
index 0000000..4012f76
--- /dev/null
+++ b/mail-client/claws-mail/claws-mail-3.7.8.xgb
@@ -0,0 +1,80 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="An email client (and news reader) based on GTK+"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://www.claws-mail.org/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+#SRC_URI="http://foo.bar.com/$N-$V.tar.bz2"
+SRC_URI="http://downloads.sourceforge.net/project/sylpheed-claws/Claws%20Mail/$V/claws-mail-$V.tar.bz2"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.bz2
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+	#err_check "enter directory failed."
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/media-libs/sdl/sdl-1.2.14.xgb b/media-libs/sdl/sdl-1.2.14.xgb
new file mode 100644
index 0000000..bf234e9
--- /dev/null
+++ b/media-libs/sdl/sdl-1.2.14.xgb
@@ -0,0 +1,80 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="Simple DirectMedia Layer"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://www.libsdl.org"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://www.libsdl.org/release/SDL-1.2.14.tar.gz"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/SDL-$V$R.tar.gz
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd SDL-$V$R
+	#err_check "enter directory failed."
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/net-fs/samba/samba-3.5.4.xgb b/net-fs/samba/samba-3.5.4.xgb
new file mode 100644
index 0000000..1051b09
--- /dev/null
+++ b/net-fs/samba/samba-3.5.4.xgb
@@ -0,0 +1,101 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="Samba Server component"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://www.samba.org/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://www.samba.org/samba/ftp/stable/samba-$V.tar.gz"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#init 
+xgb_init()
+{
+	echo "init $N-$V$R build script..."
+}
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.bz2
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	#cd $N-$V$R
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	#./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	#make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	#make DESTDIR=$XGPATH_DEST install
+}
+
+#post install
+xgb_postinst()
+{
+	echo "running after package installed..."
+}
+
+#pre remove
+xgb_prerm()
+{
+	echo "running before package delete..."
+}
+
+#post remove
+xgb_postrm()
+{
+	echo "running after package delete..."
+}
diff --git a/net-ftp/pure-ftpd/pure-ftpd-1.0.29.xgb b/net-ftp/pure-ftpd/pure-ftpd-1.0.29.xgb
new file mode 100644
index 0000000..f0749fe
--- /dev/null
+++ b/net-ftp/pure-ftpd/pure-ftpd-1.0.29.xgb
@@ -0,0 +1,79 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="Fast, production-quality, standard-conformant FTP server."
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://www.pureftpd.org/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://download.pureftpd.org/pub/pure-ftpd/releases/pure-ftpd-$V.tar.bz2"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.bz2
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+	#err_check "enter directory failed."
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/net-libs/libetpan/libetpan-1.0.xgb b/net-libs/libetpan/libetpan-1.0.xgb
new file mode 100644
index 0000000..57dc365
--- /dev/null
+++ b/net-libs/libetpan/libetpan-1.0.xgb
@@ -0,0 +1,78 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="A portable, efficient middleware for different kinds of mail access."
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://libetpan.sourceforge.net/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://downloads.sourceforge.net/project/libetpan/libetpan/$V/libetpan-$V.tar.gz"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.gz
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+	#err_check "enter directory failed."
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/net-libs/libpcap/libpcap-1.1.1.xgb b/net-libs/libpcap/libpcap-1.1.1.xgb
new file mode 100644
index 0000000..f865f2a
--- /dev/null
+++ b/net-libs/libpcap/libpcap-1.1.1.xgb
@@ -0,0 +1,79 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="A system-independent library for user-level network packet capture"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://www.tcpdump.org/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://www.tcpdump.org/release/libpcap-$V.tar.gz"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.gz
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+	#err_check "enter directory failed."
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/net-libs/neon/neon-0.29.5.xgb b/net-libs/neon/neon-0.29.5.xgb
new file mode 100644
index 0000000..80dfd67
--- /dev/null
+++ b/net-libs/neon/neon-0.29.5.xgb
@@ -0,0 +1,79 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="HTTP and WebDAV client library"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://www.webdav.org/neon/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://www.webdav.org/neon/neon-$V.tar.gz"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.gz
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+	#err_check "enter directory failed."
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/net-wireless/aircrack-ng/aircrack-ng-1.1.xgb b/net-wireless/aircrack-ng/aircrack-ng-1.1.xgb
new file mode 100644
index 0000000..b977848
--- /dev/null
+++ b/net-wireless/aircrack-ng/aircrack-ng-1.1.xgb
@@ -0,0 +1,79 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="wireless crack tools for wep/psk"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://www.aircrack-ng.org"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+#SRC_URI="http://foo.bar.com/$N-$V.tar.bz2"
+SRC_URI=""
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.gz
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	#./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make prefix=/usr
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make prefix=/usr DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/net-wireless/wpa_supplicant/wpa_supplicant-0.7.3.xgb b/net-wireless/wpa_supplicant/wpa_supplicant-0.7.3.xgb
new file mode 100644
index 0000000..e169a09
--- /dev/null
+++ b/net-wireless/wpa_supplicant/wpa_supplicant-0.7.3.xgb
@@ -0,0 +1,108 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="EEE 802.1X/WPA supplicant for secure wireless transfers"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://hostap.epitest.fi/wpa_supplicant/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+#SRC_URI="http://foo.bar.com/$N-$V.tar.bz2"
+SRC_URI=""
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.gz
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R/$N
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	#./configure $XGB_CONFIG
+
+	echo "CC = $CC" > .config
+
+	# Basic setup
+	echo "CONFIG_CTRL_IFACE=y" >> .config
+	echo "CONFIG_BACKEND=file" >> .config
+
+	# Basic authentication methods
+	# NOTE: we don't set GPSK or SAKE as they conflict
+	# with the below options
+	echo "CONFIG_EAP_GTC=y"         >> .config
+	echo "CONFIG_EAP_MD5=y"         >> .config
+	echo "CONFIG_EAP_OTP=y"         >> .config
+	echo "CONFIG_EAP_PAX=y"         >> .config
+	echo "CONFIG_EAP_PSK=y"         >> .config
+	echo "CONFIG_EAP_TLV=y"         >> .config
+	echo "CONFIG_IEEE8021X_EAPOL=y" >> .config
+	echo "CONFIG_PKCS12=y"          >> .config
+	echo "CONFIG_PEERKEY=y"         >> .config
+	echo "CONFIG_EAP_LEAP=y"        >> .config
+	echo "CONFIG_EAP_MSCHAPV2=y"    >> .config
+	echo "CONFIG_EAP_PEAP=y"        >> .config
+	echo "CONFIG_EAP_TLS=y"         >> .config
+	echo "CONFIG_EAP_TTLS=y"        >> .config
+
+	echo "CONFIG_TLS=openssl"    >> .config
+	echo "CONFIG_SMARTCARD=y"    >> .config
+
+	# Enable mitigation against certain attacks against TKIP
+	echo "CONFIG_DELAYED_MIC_ERROR_REPORT=y" >> .config
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST BINDIR=/usr/sbin install
+}
+
diff --git a/sci-electronics/gaw/gaw-20090629.xgb b/sci-electronics/gaw/gaw-20090629.xgb
new file mode 100644
index 0000000..125bd2a
--- /dev/null
+++ b/sci-electronics/gaw/gaw-20090629.xgb
@@ -0,0 +1,78 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="Gtk Analog Wave viewer"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://www.herveq.fr/linux/gaw.php"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://www.herveq.fr/php/ndl.php"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.gz
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+
+	#second, add package specified config params to XGB_CONFIG
+	XGB_CONFIG+=" --enable-gawsound=no "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/sci-electronics/gaw/gaw-20100902.xgb b/sci-electronics/gaw/gaw-20100902.xgb
new file mode 100644
index 0000000..125bd2a
--- /dev/null
+++ b/sci-electronics/gaw/gaw-20100902.xgb
@@ -0,0 +1,78 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="Gtk Analog Wave viewer"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://www.herveq.fr/linux/gaw.php"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://www.herveq.fr/php/ndl.php"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.gz
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+
+	#second, add package specified config params to XGB_CONFIG
+	XGB_CONFIG+=" --enable-gawsound=no "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/sci-mathematics/calc/calc-2.12.4.3.xgb b/sci-mathematics/calc/calc-2.12.4.3.xgb
new file mode 100644
index 0000000..e1d0b07
--- /dev/null
+++ b/sci-mathematics/calc/calc-2.12.4.3.xgb
@@ -0,0 +1,81 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="An arbitrary precision C-like arithmetic system"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://www.isthe.com/chongo/tech/comp/calc/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://www.isthe.com/chongo/src/calc/calc-$V.tar.bz2"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND="ncurses readline"
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.bz2
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	#./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make DEBUG="${CFLAGS}" \
+		USE_READLINE="-DUSE_READLINE" \
+		READLINE_LIB="-lreadline -lhistory -lncurses" \
+		all
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make T=$XGPATH_DEST install
+}
+
diff --git a/sci-mathematics/yacas/yacas-1.2.2.xgb b/sci-mathematics/yacas/yacas-1.2.2.xgb
new file mode 100644
index 0000000..3476f57
--- /dev/null
+++ b/sci-mathematics/yacas/yacas-1.2.2.xgb
@@ -0,0 +1,92 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="Powerful general purpose computer algebra system"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://yacas.sourceforge.net/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+PATCH_URL="http://www.artfiles.org/gentoo.org/sci-mathematics/yacas/files"
+
+SRC_URI="http://yacas.sourceforge.net/backups/yacas-$V.tar.gz \
+	$PATCH_URL/yacas-1.2.2-gcc43.patch \
+	$PATCH_URL/yacas-1.2.2-makefixes.patch" 
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.gz
+
+	#fist, cd build directory
+	cd $N-$V$R
+	err_check "Enter directory $N-$V$R failed"
+
+	#patch it.
+	patch -p0 < $XGPATH_SOURCE/$N-$V-gcc43.patch
+	err_check "patch $N-$V$R failed (gcc43.patch)"
+
+	patch -p1 < $XGPATH_SOURCE/$N-$V-makefixes.patch
+	err_check "patch $N-$V$R failed (gcc43.patch)"
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/sys-block/partimage/partimage-0.6.8.xgb b/sys-block/partimage/partimage-0.6.8.xgb
new file mode 100644
index 0000000..e0faced
--- /dev/null
+++ b/sys-block/partimage/partimage-0.6.8.xgb
@@ -0,0 +1,71 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="Console-based application to efficiently save raw partition data to an image file."
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://sourceforge.net/projects/partimage/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://downloads.sourceforge.net/project/$N/stable/0.6.8/$N-$V.tar.bz2"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.bz2
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/sys-devel/gdb/gdb-7.2.xgb b/sys-devel/gdb/gdb-7.2.xgb
new file mode 100644
index 0000000..79df167
--- /dev/null
+++ b/sys-devel/gdb/gdb-7.2.xgb
@@ -0,0 +1,78 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="GNU debugger"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://sources.redhat.com/gdb/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://ftp.gnu.org/gnu/gdb/gdb-$V.tar.bz2"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.bz2
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	cd $N-$V$R
+	#err_check "enter directory failed."
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	make DESTDIR=$XGPATH_DEST install
+}
+
diff --git a/x11-misc/notification-daemon/notification-daemon-0.4.0.xgb b/x11-misc/notification-daemon/notification-daemon-0.4.0.xgb
new file mode 100644
index 0000000..403fd1a
--- /dev/null
+++ b/x11-misc/notification-daemon/notification-daemon-0.4.0.xgb
@@ -0,0 +1,101 @@
+#!/bin/bash
+#
+# Xiange Linux build scripts
+
+# Short one-line description of this package.
+DESCRIPTION="Notifications daemons"
+
+# Homepage, not used by Portage directly but handy for developer reference
+HOMEPAGE="http://www.galago-project.org/"
+
+# Point to any required sources; these will be automatically downloaded by
+# gpkg. 
+# $N = package name, such as autoconf, x-org
+# $V = package version, such as 2.6.10
+
+SRC_URI="http://www.galago-project.org/files/releases/source/$N/$N-$V.tar.bz2"
+
+
+# Binary package URI.
+BIN_URI=""
+
+
+# Runtime Depend
+RDEPEND=""
+
+# Build time depend
+DEPEND="${RDEPEND}"
+
+
+
+#init 
+xgb_init()
+{
+	echo "init $N-$V$R build script..."
+}
+
+#unpack
+xgb_unpack()
+{
+	#unpard file from $XGPATH_SOURCE to current directory.
+	echo "Unpacking to `pwd`"
+	tar xf $XGPATH_SOURCE/$N-$V$R.tar.bz2
+}
+
+#config
+xgb_config()
+{
+	echo "config $N-$V$R..."
+
+	#fist, cd build directory
+	#cd $N-$V$R
+
+	#second, add package specified config params to XGB_CONFIG
+	#XGB_CONFIG+=" --foo --bar "
+
+	#Third, call configure with $XGB_CONFIG
+	#./configure $XGB_CONFIG
+}
+
+#build
+xgb_build()
+{
+	echo "make $N-$V$R..."
+
+	#run make in current directory
+	#make
+}
+
+#check
+xgb_check()
+{
+	echo "checking $N-$V$R.."
+	#make check
+}
+
+#install
+xgb_install()
+{
+	echo "install to $XGPATH_DEST"
+
+	#install everything to $XGPATH_DEST
+	#make DESTDIR=$XGPATH_DEST install
+}
+
+#post install
+xgb_postinst()
+{
+	echo "running after package installed..."
+}
+
+#pre remove
+xgb_prerm()
+{
+	echo "running before package delete..."
+}
+
+#post remove
+xgb_postrm()
+{
+	echo "running after package delete..."
+}

