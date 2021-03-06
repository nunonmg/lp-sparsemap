# cython: language_level=3
# distutils: language=c++

from ..ad3qp.base cimport Factor, GenericFactor, PGenericFactor
from libcpp cimport bool
from libcpp.vector cimport vector

cdef extern from "FactorSequence.h" namespace "AD3":

    cdef cppclass FactorSequence(GenericFactor):
        FactorSequence()
        void Initialize(vector[int] num_states)


