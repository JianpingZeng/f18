! Copyright (c) 2018, NVIDIA CORPORATION.  All rights reserved.
!
! Licensed under the Apache License, Version 2.0 (the "License");
! you may not use this file except in compliance with the License.
! You may obtain a copy of the License at
!
!     http://www.apache.org/licenses/LICENSE-2.0
!
! Unless required by applicable law or agreed to in writing, software
! distributed under the License is distributed on an "AS IS" BASIS,
! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
! See the License for the specific language governing permissions and
! limitations under the License.

! negative test -- invalid labels, out of range

! RUN: ${F18} -funparse-with-symbols %s 2>&1 | ${FileCheck} %s
! CHECK: end do

SUBROUTINE sub00(a,b,n,m)
  INTEGER n,m
  REAL a(n,m), b(n,m)

  DO 10 j = 1,m
     DO 10 i = 1,n
        g = a(i,j) - b(i,j)
10      PRINT *, g
END SUBROUTINE sub00
