package pipwerks;

#if js
typedef Window = js.html.DOMWindow;
#else
typedef Window = Dynamic;
#end

@:native("pipwerks.SCORM")
extern class Scorm {
	static public var version (default, default):String;
	static public var handleCompletionStatus (default, default):Bool;
	static public var handleExitMode (default, default):Bool;
	static public var API (default, default):{handle:Dynamic, isFound:Bool};
	static public var connection (default, default):Connection;
	static public var data (default, default):Data;
	static public var debug (default, default):Debug;

	static public function isAvailable():Bool;
	static public function init():Bool;
	static public function get(name: String):String;
	static public function set(parameter: String, value: String):Bool;
	static public function save():Bool;
	static public function quit():Bool;
}

@:native("API")
extern class Api {
	public function find(window:Window):Api;
	public function get():Api;
	public function getHandle():Dynamic;
}

@:native("connection")
extern class Connection {
	public var isActive (default, default):Bool;

	public function initialize():Bool;
	public function terminate():Bool;
}

@:native("data")
extern class Data {
	public var completionStatus (default, default):String;
	public var exitStatus (default, default):String;

	public function get(name: String):String;
	public function set(parameter: String, value: String):Bool;
	public function save():Bool;
}

@:native("debug")
extern class Debug{
	public function getCode():Int;
	public function getInfo(errorCode: Int):String;
	public function getDiagnosticInfo(errorCode: Int):String;
}

@:native("pipwerks.UTILS")
extern class Utils {
	static public function StringToBoolean(string: String):Bool;
	static public function trace(msg: String):Void;
}