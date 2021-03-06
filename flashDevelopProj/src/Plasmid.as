package  
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.AntiAliasType;
	import flash.text.StyleSheet;
	import flash.display.InteractiveObject;
	import com.greensock.TweenLite;
	import com.greensock.plugins.TweenPlugin; 
	import com.greensock.plugins.VisiblePlugin; 
	import com.greensock.easing.*;
	import flash.geom.ColorTransform;
	import flash.geom.Rectangle;
	
	public class Plasmid extends Sprite
	{
		// Plasmid Bacteria
		
		[Embed(source='../lib/plasmid/bacteria1.png')]
		private var bacteria1Class:Class;
		private var bacteria1:Bitmap = new bacteria1Class();
		
		[Embed(source='../lib/plasmid/bacteria2.png')]
		private var bacteria2Class:Class;
		private var bacteria2:Bitmap = new bacteria2Class();
		
		[Embed(source='../lib/plasmid/bacteria3.png')]
		private var bacteria3Class:Class;
		private var bacteria3:Bitmap = new bacteria3Class();
		
		[Embed(source='../lib/plasmid/bacteria4.png')]
		private var bacteria4Class:Class;
		private var bacteria4:Bitmap = new bacteria4Class();
		
		// Plasmid Arrows
		
		[Embed(source='../lib/plasmid/1.png')]
		public var arrow0Class:Class;
		public var arrow0:Bitmap = new arrow0Class();
		
		[Embed(source='../lib/plasmid/2.png')]
		public var arrow1Class:Class;
		public var arrow1:Bitmap = new arrow1Class();
		
		[Embed(source='../lib/plasmid/3.png')]
		public var arrow2Class:Class;
		public var arrow2:Bitmap = new arrow2Class();
		
		[Embed(source='../lib/plasmid/4.png')]
		public var arrow3Class:Class;
		public var arrow3:Bitmap = new arrow3Class();
		
		[Embed(source='../lib/plasmid/5.png')]
		public var arrow4Class:Class;
		public var arrow4:Bitmap = new arrow4Class();
		
		[Embed(source='../lib/plasmid/6.png')]
		public var arrow5Class:Class;
		public var arrow5:Bitmap = new arrow5Class();
		
		[Embed(source='../lib/plasmid/7.png')]
		public var arrow6Class:Class;
		public var arrow6:Bitmap = new arrow6Class();
		
		[Embed(source='../lib/plasmid/8.png')]
		public var arrow7Class:Class;
		public var arrow7:Bitmap = new arrow7Class();
		
		// Plasmid Arrows on Hover
		
		[Embed(source='../lib/plasmid/1h.png')]
		public var arrow0hClass:Class;
		public var arrow0h:Bitmap = new arrow0hClass();
		
		[Embed(source='../lib/plasmid/2h.png')]
		public var arrow1hClass:Class;
		public var arrow1h:Bitmap = new arrow1hClass();
		
		[Embed(source='../lib/plasmid/3h.png')]
		public var arrow2hClass:Class;
		public var arrow2h:Bitmap = new arrow2hClass();
		
		[Embed(source='../lib/plasmid/4h.png')]
		public var arrow3hClass:Class;
		public var arrow3h:Bitmap = new arrow3hClass();
		
		[Embed(source='../lib/plasmid/5h.png')]
		public var arrow4hClass:Class;
		public var arrow4h:Bitmap = new arrow4hClass();
		
		[Embed(source='../lib/plasmid/6h.png')]
		public var arrow5hClass:Class;
		public var arrow5h:Bitmap = new arrow5hClass();
		
		[Embed(source='../lib/plasmid/7h.png')]
		public var arrow6hClass:Class;
		public var arrow6h:Bitmap = new arrow6hClass();
		
		[Embed(source='../lib/plasmid/8h.png')]
		public var arrow7hClass:Class;
		public var arrow7h:Bitmap = new arrow7hClass();
		
		private var arrowBtn0:SimpleButton = new SimpleButton(arrow0, arrow0h, arrow0h, arrow0);
		private var arrowBtn1:SimpleButton = new SimpleButton(arrow1, arrow1h, arrow1h, arrow1);
		private var arrowBtn2:SimpleButton = new SimpleButton(arrow2, arrow2h, arrow2h, arrow2);
		private var arrowBtn3:SimpleButton = new SimpleButton(arrow3, arrow3h, arrow3h, arrow3);
		private var arrowBtn4:SimpleButton = new SimpleButton(arrow4, arrow4h, arrow4h, arrow4);
		private var arrowBtn5:SimpleButton = new SimpleButton(arrow5, arrow5h, arrow5h, arrow5);
		private var arrowBtn6:SimpleButton = new SimpleButton(arrow6, arrow6h, arrow6h, arrow6);
		private var arrowBtn7:SimpleButton = new SimpleButton(arrow7, arrow7h, arrow7h, arrow7);
		
		// Plasmid Lines
		
		[Embed(source='../lib/plasmid/1l.png')]
		public var line0Class:Class;
		public var line0:Bitmap = new line0Class();
		
		[Embed(source='../lib/plasmid/2l.png')]
		public var line1Class:Class;
		public var line1:Bitmap = new line1Class();
		
		[Embed(source='../lib/plasmid/3l.png')]
		public var line2Class:Class;
		public var line2:Bitmap = new line2Class();
		
		[Embed(source='../lib/plasmid/4l.png')]
		public var line3Class:Class;
		public var line3:Bitmap = new line3Class();
		
		[Embed(source='../lib/plasmid/5l.png')]
		public var line4Class:Class;
		public var line4:Bitmap = new line4Class();
		
		[Embed(source='../lib/plasmid/6l.png')]
		public var line5Class:Class;
		public var line5:Bitmap = new line5Class();
		
		[Embed(source='../lib/plasmid/7l.png')]
		public var line6Class:Class;
		public var line6:Bitmap = new line6Class();
		
		[Embed(source='../lib/plasmid/8l.png')]
		public var line7Class:Class;
		public var line7:Bitmap = new line7Class();
		
		// Plasmid Lines on Hover
		
		[Embed(source='../lib/plasmid/1lh.png')]
		public var line0hClass:Class;
		public var line0h:Bitmap = new line0hClass();
		
		[Embed(source='../lib/plasmid/2lh.png')]
		public var line1hClass:Class;
		public var line1h:Bitmap = new line1hClass();
		
		[Embed(source='../lib/plasmid/3lh.png')]
		public var line2hClass:Class;
		public var line2h:Bitmap = new line2hClass();
		
		[Embed(source='../lib/plasmid/4lh.png')]
		public var line3hClass:Class;
		public var line3h:Bitmap = new line3hClass();
		
		[Embed(source='../lib/plasmid/5lh.png')]
		public var line4hClass:Class;
		public var line4h:Bitmap = new line4hClass();
		
		[Embed(source='../lib/plasmid/6lh.png')]
		public var line5hClass:Class;
		public var line5h:Bitmap = new line5hClass();
		
		[Embed(source='../lib/plasmid/7lh.png')]
		public var line6hClass:Class;
		public var line6h:Bitmap = new line6hClass();
		
		[Embed(source='../lib/plasmid/8lh.png')]
		public var line7hClass:Class;
		public var line7h:Bitmap = new line7hClass();
		
		private var lineBtn0:SimpleButton = new SimpleButton(line0, line0h, line0h, line0);
		private var lineBtn1:SimpleButton = new SimpleButton(line1, line1h, line1h, line1);
		private var lineBtn2:SimpleButton = new SimpleButton(line2, line2h, line2h, line2);
		private var lineBtn3:SimpleButton = new SimpleButton(line3, line3h, line3h, line3);
		private var lineBtn4:SimpleButton = new SimpleButton(line4, line4h, line4h, line4);
		private var lineBtn5:SimpleButton = new SimpleButton(line5, line5h, line5h, line5);
		private var lineBtn6:SimpleButton = new SimpleButton(line6, line6h, line6h, line6);
		private var lineBtn7:SimpleButton = new SimpleButton(line7, line7h, line7h, line7);
		
		private var componentDescription:TextField = new TextField();
		
		// Tracking
		
		private var minComponent:int;
		private var maxComponent:int;
		private var componentOrder:Array;
		private var currentArrowIndex:Number;
		private var lastPlasmid:String = "bacteria1";
		private var arrowTypes:Array = [];
		
		public function Plasmid(_minComponent:int, _maxComponent:int, _componentOrder:Array) 
		{				
			TweenPlugin.activate([VisiblePlugin]);
			
			var fontType:TextFormat = new TextFormat();
			fontType.font = "Verdana";
			fontType.size = 10;
			fontType.bold = true;
			
			componentDescription.name = "Description_Text";
			componentDescription.x = 500;
			componentDescription.y = 90;
			componentDescription.wordWrap = true;
			componentDescription.width = 160;
			componentDescription.height = 300;
			componentDescription.alpha = 0.8;
			componentDescription.textColor = 0x000000;
			componentDescription.visible = false;
			componentDescription.defaultTextFormat = fontType;
			this.addChild(componentDescription);
			
			bacteria1.alpha = 1;
			bacteria1.x = 287;
			bacteria1.y = 77;
			this.addChild(bacteria1);
			
			arrowBtn0.x = 389;
			arrowBtn0.y = 71;
			
			arrowBtn1.x = 454;
			arrowBtn1.y = 101;
			
			arrowBtn2.x = 458;
			arrowBtn2.y = 177;
			
			arrowBtn3.x = 391;
			arrowBtn3.y = 242;
			
			arrowBtn4.x = 321;
			arrowBtn4.y = 247;
			
			arrowBtn5.x = 276;
			arrowBtn5.y = 177;
			
			arrowBtn6.x = 283;
			arrowBtn6.y = 109;
			
			arrowBtn7.x = 315;
			arrowBtn7.y = 65;
			
			lineBtn0.x = 390;
			lineBtn0.y = 71;
			
			lineBtn1.x = 453;
			lineBtn1.y = 99;
			
			lineBtn2.x = 458;
			lineBtn2.y = 177;
			
			lineBtn3.x = 392;
			lineBtn3.y = 238;
			
			lineBtn4.x = 319;
			lineBtn4.y = 245;
			
			lineBtn5.x = 278;
			lineBtn5.y = 181;
			
			lineBtn6.x = 284;
			lineBtn6.y = 107;
			
			lineBtn7.x = 314;
			lineBtn7.y = 66;
			
			currentArrowIndex = 0;
			minComponent = _minComponent;
			maxComponent = _maxComponent;
			componentOrder = _componentOrder;
			
			for (var i:Number = 0; i < 8; i++) {
				this["arrowBtn" + i].visible = false;
				this["arrowBtn" + i].alpha = 0;
				this.addChild(this["arrowBtn" + i]);
				this["lineBtn" + i].visible = false;
				this["lineBtn" + i].alpha = 0;
				this.addChild(this["lineBtn" + i])
			}
		}
		
		public function canAdd():Boolean {
			return (currentArrowIndex != maxComponent);
		}
		
		public function canRemove():Boolean {
			return (currentArrowIndex != minComponent);
		}
		
		public function changePlasmid(i:int):void
		{
			var index:int = this.getChildIndex(this[lastPlasmid]);
			this.removeChild(this[lastPlasmid]);
			
			lastPlasmid = "bacteria" + i;
			this[lastPlasmid].alpha = 1;
			this[lastPlasmid].x = 287;
			this[lastPlasmid].y = 77;
			this.addChild(this[lastPlasmid]);
			this.setChildIndex(this[lastPlasmid],index);
		}
		
		public function addArrow(color:uint, colorH:uint, name:String, currentCategory:int):void {
			
			arrowTypes.push(currentCategory);
			
			var newColour:ColorTransform = new ColorTransform(0, 0, 0, 1, color >> 16 & 0xff, color >> 8 & 0xff, color & 0xff, 0);
			var newColourHover:ColorTransform = new ColorTransform(0, 0, 0, 1, colorH >> 16 & 0xff, colorH >> 8 & 0xff, colorH & 0xff, 0);
			var arrowNum:int = componentOrder[currentArrowIndex++];
			
			var arrowName:String = "line" + arrowNum;
			var arrowBtnName:String = "lineBtn" + arrowNum;
			
			if(currentCategory == 0 || currentCategory == 5) {
				arrowName = "arrow" + arrowNum;
				arrowBtnName = "arrowBtn" + arrowNum;
			}
			
			this[arrowName].bitmapData.colorTransform(new Rectangle(0, 0, this[arrowName].width, this[arrowName].height), newColour);
			this[arrowName + "h"].bitmapData.colorTransform(new Rectangle(0, 0, this[arrowName + "h"].width, this[arrowName + "h"].height), newColourHover);
			this[arrowBtnName].name = name;
			this[arrowBtnName].visible = true;
			TweenLite.to(this[arrowBtnName], 0.75, {alpha:1} );
			this[arrowBtnName].addEventListener(MouseEvent.ROLL_OVER, showDescription);
			this[arrowBtnName].addEventListener(MouseEvent.ROLL_OUT, hideDescription);
		}
		
		public function removeArrow():void {
			var arrowNum:int = componentOrder[--currentArrowIndex];
			var arrowLast:int = arrowTypes.pop();
			var arrowBtnName:String = "lineBtn" + arrowNum;
			if (arrowLast == 0 || arrowLast == 5) {
				arrowBtnName = "arrowBtn" + arrowNum;
			}
			this[arrowBtnName].removeEventListener(MouseEvent.ROLL_OVER, showDescription);
			this[arrowBtnName].addEventListener(MouseEvent.ROLL_OUT, hideDescription);
			TweenLite.to(this[arrowBtnName], 0.25, {alpha:0, visible:false});
		}
		
		public function resetArrows():void {
			while (currentArrowIndex > minComponent) { 
				removeArrow();
			}
		}
		
		public function showDescription(e:MouseEvent):void {
			componentDescription.text = e.target.name;
			this.componentDescription.visible = true;
		}
		
		public function hideDescription(e:MouseEvent):void {
			this.componentDescription.visible = false;
		}
	}

}