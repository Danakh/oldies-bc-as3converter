package bc.flash.custom
{
	/**
	 * @author Danakh
	 */
	[NoConversion]
	public class TransformGestureEvent extends bc.flash.events.Event
	{
		public static const GESTURE_PAN:String = "gesturePan";
		public static const GESTURE_ROTATE:String = "gestureRotate";
		public static const GESTURE_SWIPE:String = "gestureSwipe";
		public static const GESTURE_ZOOM:String = "gestureZoom";
		
		public function get scaleX() : Number
		{
			throw new NotImplementedError();	
		}

		public function get scaleY() : Number
		{
			throw new NotImplementedError();	
		}		

		public function get offsetX() : Number
		{
			throw new NotImplementedError();	
		}

		public function get offsetY() : Number
		{
			throw new NotImplementedError();	
		}		
	}
}
