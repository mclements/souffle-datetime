AC_INIT(souffle-datetime, 0.1.3, [Mark Clements (firstname.lastname@ki.se)])

AC_SUBST([SOUFFLE_INT_TYPE], [int32_t])

if test $(souffle --version | grep -c "64bit Domains") = "1"; then
AC_SUBST([SOUFFLE_INT_TYPE], [int64_t])
fi

AC_OUTPUT([datetime.cpp])
