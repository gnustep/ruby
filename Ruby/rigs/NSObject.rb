# NSObject.rb - Add a couple of things to the NSObject class
#
#  $Id$
#
#    Copyright (C) 2001 Free Software Foundation, Inc.
#   
#    Written by:  Laurent Julliard <laurent@julliard-online.org>
#    Date: September 2001
#  
#    This file is part of the GNUstep RubyInterface Library.
#
#    This library is free software; you can redistribute it and/or
#    modify it under the terms of the GNU Library General Public
#    License as published by the Free Software Foundation; either
#    version 2 of the License, or (at your option) any later version.
#   
#    This library is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#    Library General Public License for more details.
#   
#    You should have received a copy of the GNU Library General Public
#    License along with this library; if not, write to the Free
#    Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111 USA.
#

NSObject = Rigs.class("NSObject")

module Rigs

    class NSObject

	#
	# the dup method is equivalent to GNUstep copy
	# and mutable dup to mutableCopy
	#
	def dup
	    self.copy
	end

	def mutableDup
	    self.mutableCopy
	end

	def == (arg)
	    self.isEqual(arg)
	end
    end

end

# define constants that are in NSObject.h
NSOrderedAscending = -1
NSOrderedSame = 0
NSOrderedDescending = 1
