@ECHO OFF
REM simple script to run the archon_migration program
java -Xmx1024m -Dfile.encoding=UTF-8 -cp "lib/*" org.nyu.edu.dlts.dbCopyFrame
