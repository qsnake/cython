#cython: embedsignature=True

# note the r, we use \n below
__doc__ = ur"""
    >>> print (Ext.a.__doc__)
    Ext.a(self)

    >>> print (Ext.b.__doc__)
    Ext.b(self, a, b, c)

    >>> print (Ext.c.__doc__)
    Ext.c(self, a, b, c=1)

    >>> print (Ext.d.__doc__)
    Ext.d(self, a, b, *, c=88)

    >>> print (Ext.e.__doc__)
    Ext.e(self, a, b, c=88, **kwds)

    >>> print (Ext.f.__doc__)
    Ext.f(self, a, b, *, c, d=42)

    >>> print (Ext.g.__doc__)
    Ext.g(self, a, b, *, c, d=42, e=17, f, **kwds)

    >>> print (Ext.h.__doc__)
    Ext.h(self, a, b, *args, c, d=42, e=17, f, **kwds)

    >>> print (Ext.k.__doc__)
    Ext.k(self, a, b, c=1, *args, d=42, e=17, f, **kwds)

    >>> print (Ext.get_int.__doc__)
    Ext.get_int(self) -> int

    >>> print (Ext.get_float.__doc__)
    Ext.get_float(self) -> float

    >>> print (Ext.clone.__doc__)
    Ext.clone(self) -> Ext

    >>> print (foo.__doc__)
    foo()

    >>> with_doc_1.__doc__
    'with_doc_1(a, b, c)\nExisting string'

    >>> with_doc_2.__doc__
    'with_doc_2(a, b, c)\n\n    Existing string\n    '

    >>> types.__doc__
    'types(Ext a, int b, unsigned short int c, float d, e)'

    >>> print (f_c.__doc__)
    f_c(char c) -> char

    >>> print (f_uc.__doc__)
    f_uc(unsigned char c) -> unsigned char

    >>> print (f_sc.__doc__)
    f_sc(signed char c) -> signed char


    >>> print (f_s.__doc__)
    f_s(short int s) -> short int

    >>> print (f_us.__doc__)
    f_us(unsigned short int s) -> unsigned short int

    >>> print (f_ss.__doc__)
    f_ss(signed short int s) -> signed short int


    >>> print (f_i.__doc__)
    f_i(int i) -> int

    >>> print (f_ui.__doc__)
    f_ui(unsigned int i) -> unsigned int

    >>> print (f_si.__doc__)
    f_si(signed int i) -> signed int


    >>> print (f_l.__doc__)
    f_l(long int l) -> long int

    >>> print (f_ul.__doc__)
    f_ul(unsigned long int l) -> unsigned long int

    >>> print (f_sl.__doc__)
    f_sl(signed long int l) -> signed long int


    >>> print (f_L.__doc__)
    f_L(long long int L) -> long long int

    >>> print (f_uL.__doc__)
    f_uL(unsigned long long int L) -> unsigned long long int

    >>> print (f_sL.__doc__)
    f_sL(signed long long int L) -> signed long long int


    >>> print (f_f.__doc__)
    f_f(float f) -> float

    >>> print (f_d.__doc__)
    f_d(double d) -> double

    >>> print (f_D.__doc__)
    f_D(long double D) -> long double

"""

cdef class Ext:

    def a(self):
        pass

    def b(self, a, b, c):
        pass

    def c(self, a, b, c=1):
        pass

    def d(self, a, b, *, c = 88):
        pass

    def e(self, a, b, c = 88, **kwds):
        pass

    def f(self, a, b, *, c, d = 42):
        pass

    def g(self, a, b, *, c, d = 42, e = 17, f, **kwds):
        pass

    def h(self, a, b, *args, c, d = 42, e = 17, f, **kwds):
        pass

    def k(self, a, b, c=1, *args, d = 42, e = 17, f, **kwds):
        pass

    cpdef int get_int(self):
        return 0

    cpdef float get_float(self):
        return 0.0

    cpdef Ext clone(self):
        return Ext()

def foo():
    pass

def types(Ext a, int b, unsigned short c, float d, e):
    pass

def with_doc_1(a, b, c):
    """Existing string"""
    pass

def with_doc_2(a, b, c):
    """
    Existing string
    """
    pass

cpdef char f_c(char c):
    return c

cpdef unsigned char f_uc(unsigned char c):
    return c

cpdef signed char f_sc(signed char c):
    return c


cpdef short f_s(short s):
    return s

cpdef unsigned short f_us(unsigned short s):
    return s

cpdef signed short f_ss(signed short s):
    return s


cpdef int f_i(int i):
    return i

cpdef unsigned int f_ui(unsigned int i):
    return i

cpdef signed int f_si(signed int i):
    return i


cpdef long f_l(long l):
    return l

cpdef unsigned long f_ul(unsigned long l):
    return l

cpdef signed long f_sl(signed long l):
    return l


cpdef long long f_L(long long L):
    return L

cpdef unsigned long long f_uL(unsigned long long L):
    return L

cpdef signed long long f_sL(signed long long L):
    return L


cpdef float f_f(float f):
    return f

cpdef double f_d(double d):
    return d

cpdef long double f_D(long double D):
    return D