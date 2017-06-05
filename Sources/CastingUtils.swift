//
//  Casting.swift
//  ObjectMapper
//
//  Created by bubski on 2017-06-05.
//  Copyright © 2017 hearst. All rights reserved.
//
//  The MIT License (MIT)
//
//  Copyright (c) 2014-2017 Hearst
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation

// MARK: - Casting Utils

func platformConsistentCast<T>(_ value: Any) -> T? {
	if let casted = value as? T {
		return casted
	}

	#if os(Linux)

		if T.self is NSNumber.Type {
			return platformAgnosticCastToNSNumber(value) as? T
		}

		if let nsnumber = value as? NSNumber {
			switch T.self {
			case is Int8.Type: return nsnumber.int8Value as? T
			case is UInt8.Type: return nsnumber.uint8Value as? T
			case is Int16.Type: return nsnumber.int16Value as? T
			case is UInt16.Type: return nsnumber.uint16Value as? T
			case is Int32.Type: return nsnumber.int32Value as? T
			case is UInt32.Type: return nsnumber.uint32Value as? T
			case is Int64.Type: return nsnumber.int64Value as? T
			case is UInt64.Type: return nsnumber.uint64Value as? T
			case is Float.Type: return nsnumber.floatValue as? T
			case is Double.Type: return nsnumber.doubleValue as? T
			case is Bool.Type: return nsnumber.boolValue as? T
			case is Int.Type: return nsnumber.intValue as? T
			case is UInt.Type: return nsnumber.uintValue as? T
			case is Decimal.Type: return nil
			default: break
			}
		}
	#endif

	return nil
}

private func platformAgnosticCastToNSNumber(_ value: Any) -> NSNumber? {
	if let casted = value as? NSNumber {
		return casted
	}

	if let casted = value as? Int8 {
		return NSNumber(value: casted)
	}

	if let casted = value as? UInt8 {
		return NSNumber(value: casted)
	}

	if let casted = value as? Int16 {
		return NSNumber(value: casted)
	}

	if let casted = value as? UInt16 {
		return NSNumber(value: casted)
	}

	if let casted = value as? Int32 {
		return NSNumber(value: casted)
	}

	if let casted = value as? UInt32 {
		return NSNumber(value: casted)
	}

	if let casted = value as? Int64 {
		return NSNumber(value: casted)
	}

	if let casted = value as? UInt64 {
		return NSNumber(value: casted)
	}

	if let casted = value as? Float {
		return NSNumber(value: casted)
	}

	if let casted = value as? Double {
		return NSNumber(value: casted)
	}

	if let casted = value as? Bool {
		return NSNumber(value: casted)
	}

	if let casted = value as? Int {
		return NSNumber(value: casted)
	}

	if let casted = value as? UInt {
		return NSNumber(value: casted)
	}

	if let casted = value as? Decimal {
		return NSDecimalNumber(decimal: casted)
	}
	
	return nil
}
