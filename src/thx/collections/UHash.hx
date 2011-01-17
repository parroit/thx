﻿/**
 * ...
 * @author Franco Ponticelli
 */

package thx.collections;

class UHash
{
	public static function copyTo<T>(from : Hash<T>, to : Hash<T>)
	{
		for (k in from.keys())
			to.set(k, from.get(k));
		return to;
	}
	
	public static function clone<T>(src : Hash<T>)
	{
		var h = new Hash();
		UHash.copyTo(src, h);
		return h;
	}
	
	public static inline function arrayOfKeys(hash : Hash<Dynamic>)
	{
		return UIterator.array(hash.keys());
	}     
	
	public static function setOfKeys(hash : Hash<Dynamic>) : Set<String>
	{
		var set = new Set();
		for(k in hash.keys())
			set.add(k);
		return set;
	}
	
	public static function count(hash : Hash<Dynamic>)
	{
		#if neko
		return untyped __dollar__hsize(hash.h);
		#elseif php
		return untyped __call__('count', hash.h);
		#else
		var i = 0;
		for (_ in hash)
			i++;
		return i;
		#end
	}
	
	public static function clear(hash : Hash<Dynamic>)
	{
		var _hash : FriendHash = hash;
		#if flash9
		_hash.h = new flash.utils.Dictionary();
		#elseif flash
		_hash.h = untyped __new__(_global["Object"]);
		#elseif neko
		_hash.h = untyped __dollar__hnew(0);
		#elseif js
		untyped {
			_hash.h = __js__("{}");
			if( _hash.h.__proto__ != null ) {
				_hash.h.__proto__ = null;
				__js__("delete")(_hash.h.__proto__);
			}
		}
		#elseif cpp
		_hash.h = {};
		#elseif php
		_hash.h = untyped __call__('array');
		#end
	}
}

typedef FriendHash = {
	private var h :
		#if flash9 flash.utils.Dictionary
		#elseif php ArrayAccess<Dynamic>
		#else Dynamic #end;
}