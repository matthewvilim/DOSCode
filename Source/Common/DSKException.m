/*
 * DOSKit
 * Copyright (C) 2014  Matthew Vilim
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#import "DSKException.h"

NSString * const DSKSDLUnrecoverableExceptionName = @"DSKSDLUnrecoverableException";
NSString * const DSKSDLUnrecoverableExceptionFormat = @"SDL encountered an unrecoverable error: %s";

NSString * const DSKDOSBoxUnrecoverableExceptionName = @"DSKDOSBoxUnrecoverableException";
NSString * const DSKDOSBoxUnrecoverableExceptionFormat = @"DOSBox encountered an unrecoverable exception: %@";

NSString * const DSKAbstractClassNotOverriddenExceptionName = @"DSKAbstractClassNotOverriddenException";
NSString * const DSKAbstractClassNotOverriddenExceptionFormat = @"attempted to instantiate abstract class %@";

@implementation NSException (DSKExceptionRaise)

+ (void)dsk_raise:(NSString *)name message:(NSString *)message {
    [NSException raise:name format:@"%@", [NSString dsk_logString:message]];
}

@end