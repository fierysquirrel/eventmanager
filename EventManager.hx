package;

import flash.events.EventDispatcher;

class EventManager
{
	public static var NAME : String = "EVENT_MANAGER";
	
	private static var instance : EventManager;
	
	private static var eventDispatcher : EventDispatcher;
	
	public static function InitInstance(): EventManager
	{
		if (instance == null)
			instance = new EventManager();
				
		return instance;
	}
	
	/*
	 * Creates and returns a screen manager instance if it's not created yet.
	 * Returns the current instance of this class if it already exists.
	 */
	public static function GetInstance(): EventManager
	{
		if ( instance == null )
			throw "EventManager is not initialized. Use function 'InitInstance'";
		
		return instance;
	}
	
	/*
	 * Constructor
	 */
	private function new() 
	{
		eventDispatcher = new EventDispatcher();
	}
}