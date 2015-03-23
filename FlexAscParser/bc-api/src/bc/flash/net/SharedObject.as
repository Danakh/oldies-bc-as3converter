package bc.flash.net
{
	import bc.flash.errors.NotImplementedError;
	import bc.flash.events.EventDispatcher;
	/**
	 * @author Danakh
	 */
	[NoConvert]
	public class SharedObject
	{
		public var data:Object;
		
		static public function getLocal(i_name:String) : SharedObject
		{
			throw new NotImplementedError();
		}
		
		public function flush() : void
		{
			throw new NotImplementedError();
		}

		public function clear() : void
		{
			throw new NotImplementedError();
		}
	}
}
