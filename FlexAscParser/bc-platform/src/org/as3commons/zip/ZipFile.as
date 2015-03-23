package org.as3commons.zip
{
	/**
	 * @author Danakh
	 */
	[ConvertOnce]
	public class ZipFile
	{
		public var content:ByteArray;
		
		public function getContentAsString():String
		{
			throw new NotImplementedError();
		}
	}
}
