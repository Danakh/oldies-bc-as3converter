package bc.flash.events
{
	public class Event extends Object
	{
        public static const ACTIVATE : String = "activate";
        public static const CANCEL : String = "cancel";
        public static const CHANGE : String = "change";
        public static const CLEAR : String = "clear";
        public static const CLOSE : String = "close";
        public static const CONNECT : String = "connect";
        public static const COPY : String = "copy";
        public static const CUT : String = "cut";
        public static const DEACTIVATE : String = "deactivate";
        public static const FRAME_CONSTRUCTED : String = "frameConstructed";
        public static const EXIT_FRAME : String = "exitFrame";
        public static const ID3 : String = "id3";
        public static const INIT : String = "init";
        public static const MOUSE_LEAVE : String = "mouseLeave";
        public static const OPEN : String = "open";
        public static const PASTE : String = "paste";
        public static const RENDER : String = "render";
        public static const SCROLL : String = "scroll";
        public static const TEXT_INTERACTION_MODE_CHANGE : String = "textInteractionModeChange";
        public static const SELECT : String = "select";
        public static const SELECT_ALL : String = "selectAll";
        public static const SOUND_COMPLETE : String = "soundComplete";
        public static const TAB_CHILDREN_CHANGE : String = "tabChildrenChange";
        public static const TAB_ENABLED_CHANGE : String = "tabEnabledChange";
        public static const TAB_INDEX_CHANGE : String = "tabIndexChange";
        public static const UNLOAD : String = "unload";
        public static const FULLSCREEN : String = "fullScreen";
        
        /** Event type for a display object that is added to a parent. */
        public static const ADDED:String = "added";
        /** Event type for a display object that is added to the stage */
        public static const ADDED_TO_STAGE:String = "addedToStage";
        /** Event type for a display object that is entering a new frame. */
        public static const ENTER_FRAME:String = "enterFrame";
        /** Event type for a display object that is removed from its parent. */
        public static const REMOVED:String = "removed";
        /** Event type for a display object that is removed from the stage. */
        public static const REMOVED_FROM_STAGE:String = "removedFromStage";
        /** Event type for a triggered button. */
        public static const TRIGGERED:String = "triggered";
        /** Event type for a movie that has reached the last frame. */
        public static const MOVIE_COMPLETED:String = "movieCompleted";
        /** Event type for a display object that is being flattened. */
        public static const FLATTEN:String = "flatten";
        /** Event type for a resized Flash Player. */
        public static const RESIZE:String = "resize";
        /** Event type that may be used whenever something finishes. */
        public static const COMPLETE:String = "complete";
        /** Event type for a (re)created stage3D rendering context. */
        public static const CONTEXT3D_CREATE:String = "context3DCreate";
        
        private var mTarget:EventDispatcher;
        private var mCurrentTarget:EventDispatcher;
        private var mType:String;
        private var mBubbles:Boolean;
        private var mStopsPropagation:Boolean;
        private var mStopsImmediatePropagation:Boolean;
        
        /** Creates an event object that can be passed to listeners. */
        public function Event(type:String, bubbles:Boolean=false)
        {
            mType = type;
            mBubbles = bubbles;
        }
        
        /** Prevents listeners at the next bubble stage from receiving the event. */
        public function stopPropagation():void
        {
            mStopsPropagation = true;            
        }
        
        /** Prevents any other listeners from receiving the event. */
        public function stopImmediatePropagation():void
        {
            mStopsPropagation = mStopsImmediatePropagation = true;
        }
        
        /** Returns a description of the event, containing type and bubble information. */
        public function toString():String
        {
            return "Event " + mType;
        }
        
        /** @private */
        internal function setTarget(target:EventDispatcher):void 
        { 
            mTarget = target; 
        }
        
        /** @private */
        internal function setCurrentTarget(currentTarget:EventDispatcher):void 
        { 
            mCurrentTarget = currentTarget; 
        }
        
        /** @private */
        internal function get stopsPropagation():Boolean { return mStopsPropagation; }
        
        /** @private */
        internal function get stopsImmediatePropagation():Boolean { return mStopsImmediatePropagation; }
        
        /** Indicates if event will bubble. */
        public function get bubbles():Boolean { return mBubbles; }
        
        /** The object that dispatched the event. */
        public function get target():EventDispatcher { return mTarget; }
        
        /** The object the event is currently bubbling at. */
        public function get currentTarget():EventDispatcher { return mCurrentTarget; }
        
        /** A string that identifies the event. */
        public function get type():String { return mType; }
        
        public function preventDefault():void {}
	}
}
