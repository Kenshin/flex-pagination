package com.ksria.flex.pagination.event 
{
	import flash.events.Event;
	
	/**
	 * 
	 * Pagination Event
	 * 
	 * @langversion 3.0
	 * @playerversion Flash 9
	 * @playerversion AIR 1.1
	 * @productversion Flex 4.6
	 *
	 * @author Kenshin
	 */
	public class PaginationEvent extends Event 
	{
		
		/**
		 *  翻页
		 *
		 *  @eventType pageTurning
		 * 
		 *  @langversion 3.0
		 *  @playerversion Flash 9
		 *  @playerversion AIR 1.1
		 *  @productversion Flex 4.6
		 */
		public static const PAGE_TURNING : String = "pageTurning";
		
		/**
		 * @private
		 */
		[Bindable] private var _page : int;
		/**
		* 当前页
		* 
		* @default 0
		* 
		* @langversion 3.0
		* @playerversion Flash 9
		* @playerversion AIR 1.1
		* @productversion Flex 4.6
		*/
		public function set page( value : int ) : void { _page = value; }
		public function get page() : int { return _page; }
		
		/**
		 *  Constructor. 
		 * 
		 *  @param type 事件类型
		 *  @param page 当前页
		 *  @param bubbles Specifies whether the event can bubble up the display list hierarchy.
		 *  @param cancelable Specifies whether the behavior associated with the event can be prevented.
		 *  
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion Flex 4.6
		 */
		public function PaginationEvent( type : String, page : int, bubbles : Boolean = false, cancelable : Boolean = false ) {
			super( type, bubbles, cancelable );
			_page = page;
		}
	}

}