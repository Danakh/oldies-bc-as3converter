package org.as3commons.zip
{
	/**
	 * @author Danakh
	 */
	[ConvertOnce]
	public class Zip extends bc.flash.events.EventDispatcher
	{
		public function load(url : URLRequest) : void
		{
			throw new NotImplementedError();
		}
		public function loadBytes(bytes : ByteArray) : void
		{
			throw new NotImplementedError();
		}
		public function getFileCount() : int
		{
			throw new NotImplementedError();
		}
		public function getFileAt(index : int) : ZipFile
		{
			throw new NotImplementedError();
		}
	}
}
