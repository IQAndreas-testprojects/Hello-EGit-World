package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.text.Font;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	[SWF(width=800, height=500, backgroundColor=0x000000, frameRate=8)]
	public class FontProblem extends Sprite
	{
		
		[Embed(source="./assets/URWGothicL-Book.ttf", fontFamily="URWGothicL", embedAsCFF="false")]
		public var URWGothicL:Class;
		
		public function FontProblem()
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			var tf:TextField = new TextField();			
			tf.defaultTextFormat = new TextFormat(new URWGothicL().fontName, 30, 0xBBBBBB);
			tf.embedFonts = true;
			tf.text = "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.";
			tf.autoSize = TextFieldAutoSize.LEFT;
			
			tf.x = 150;
			tf.y = 50;
			tf.rotation = 45;
			
			var ctn:Sprite = new Sprite();
			ctn.addChild(tf);
			ctn.scaleY = 0.5;
			this.addChild(ctn);
			
		}
	}
}