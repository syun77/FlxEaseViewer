package;

import flash.display.BlendMode;
import flixel.addons.effects.FlxTrail;
import flixel.tweens.misc.VarTween;
import flixel.tweens.FlxEase;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.tweens.FlxTween;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState {

    private var START_X = 4;
    private var START_Y = FlxG.height-48;
    private var END_Y = 48;
    private var TIME = 1;

    private var _obj:FlxSprite;
    private var _ease:Float->Float;
    private var _varTween:VarTween = null;

    override public function create():Void {
        super.create();

        _obj = new FlxSprite(0, 0);
        _obj.makeGraphic(8, 8, FlxColor.WHITE);
        _obj.velocity.x = 270;
        _obj.blend = BlendMode.ADD;
        add(_obj);
        var trail = new FlxTrail(_obj, null, 96, 1, 0.9);
        add(trail);

        var items = ["quadIn", "quadOut", "quadInOut",
            "cubeIn", "cubeOut", "cubeInOut",
            "quartIn", "quartOut", "quartInOut",
            "quintIn", "quintOut", "quintInOut",
            "sineIn", "sineOut", "sineInOut",
            "bounceIn", "bounceOut", "boundInOUt",
            "circIn", "circOut", "circInOut",
            "expoIn", "expoOut", "expoInOut",
            "backIn", "backOut", "backInOut",
            "elasticIn", "elasticOut", "elasticInOut"
        ];
        var cbs = [_cb_quadIn, _cb_quadOut, _cb_quadInOut, _cb_cubeIn, _cb_cubeOut, _cb_cubeInOut, _cb_quartIn, _cb_quartOut, _cb_quartInOut, _cb_quintIn, _cb_quintOut, _cb_quintInOut, _cb_sineIn, _cb_sineOut, _cb_sineInOut, _cb_bounceIn, _cb_bounceOut, _cb_bounceInOut, _cb_circIn, _cb_circOut, _cb_circInOut, _cb_expoIn, _cb_expoOut, _cb_expoInOut, _cb_backIn, _cb_backOut, _cb_backInOut, _cb_elasticIn, _cb_elasticOut, _cb_elasticInOut];

        var x = 296;
        var y = 0;
        var dy = 16;
        var i = 0;
        for(item in items) {
            var btn = new FlxButton(x, y, cbs[i]);
            btn.text = item;
            add(btn);
            y += dy;
            if(y > 220) {
                y = 0;
                x += 80;
            }
            i++;
        }

        _cb_expoOut();
    }

    private function _cbLoop(tween:FlxTween):Void {
        if(_varTween != null) {
            _varTween.cancel();
        }
        _obj.x = START_X;
        _obj.y = START_Y;
        _varTween = FlxTween.tween(_obj, {y:END_Y}, TIME, {ease:_ease, complete:_cbLoop});
    }


    private function _cb_quadIn():Void {
        _ease = FlxEase.quadIn;
        _cbLoop(null);
    }


    private function _cb_quadOut():Void {
        _ease = FlxEase.quadOut;
        _cbLoop(null);
    }


    private function _cb_quadInOut():Void {
        _ease = FlxEase.quadInOut;
        _cbLoop(null);
    }


    private function _cb_cubeIn():Void {
        _ease = FlxEase.cubeIn;
        _cbLoop(null);
    }


    private function _cb_cubeOut():Void {
        _ease = FlxEase.cubeOut;
        _cbLoop(null);
    }


    private function _cb_cubeInOut():Void {
        _ease = FlxEase.cubeInOut;
        _cbLoop(null);
    }


    private function _cb_quartIn():Void {
        _ease = FlxEase.quartIn;
        _cbLoop(null);
    }


    private function _cb_quartOut():Void {
        _ease = FlxEase.quartOut;
        _cbLoop(null);
    }


    private function _cb_quartInOut():Void {
        _ease = FlxEase.quartInOut;
        _cbLoop(null);
    }


    private function _cb_quintIn():Void {
        _ease = FlxEase.quintIn;
        _cbLoop(null);
    }


    private function _cb_quintOut():Void {
        _ease = FlxEase.quintOut;
        _cbLoop(null);
    }


    private function _cb_quintInOut():Void {
        _ease = FlxEase.quintInOut;
        _cbLoop(null);
    }


    private function _cb_sineIn():Void {
        _ease = FlxEase.sineIn;
        _cbLoop(null);
    }


    private function _cb_sineOut():Void {
        _ease = FlxEase.sineOut;
        _cbLoop(null);
    }


    private function _cb_sineInOut():Void {
        _ease = FlxEase.sineInOut;
        _cbLoop(null);
    }


    private function _cb_bounceIn():Void {
        _ease = FlxEase.bounceIn;
        _cbLoop(null);
    }


    private function _cb_bounceOut():Void {
        _ease = FlxEase.bounceOut;
        _cbLoop(null);
    }


    private function _cb_bounceInOut():Void {
        _ease = FlxEase.bounceInOut;
        _cbLoop(null);
    }


    private function _cb_circIn():Void {
        _ease = FlxEase.circIn;
        _cbLoop(null);
    }


    private function _cb_circOut():Void {
        _ease = FlxEase.circOut;
        _cbLoop(null);
    }


    private function _cb_circInOut():Void {
        _ease = FlxEase.circInOut;
        _cbLoop(null);
    }


    private function _cb_expoIn():Void {
        _ease = FlxEase.expoIn;
        _cbLoop(null);
    }


    private function _cb_expoOut():Void {
        _ease = FlxEase.expoOut;
        _cbLoop(null);
    }


    private function _cb_expoInOut():Void {
        _ease = FlxEase.expoInOut;
        _cbLoop(null);
    }


    private function _cb_backIn():Void {
        _ease = FlxEase.backIn;
        _cbLoop(null);
    }


    private function _cb_backOut():Void {
        _ease = FlxEase.backOut;
        _cbLoop(null);
    }


    private function _cb_backInOut():Void {
        _ease = FlxEase.backInOut;
        _cbLoop(null);
    }


    private function _cb_elasticIn():Void {
        _ease = FlxEase.elasticIn;
        _cbLoop(null);
    }


    private function _cb_elasticOut():Void {
        _ease = FlxEase.elasticOut;
        _cbLoop(null);
    }


    private function _cb_elasticInOut():Void {
        _ease = FlxEase.elasticInOut;
        _cbLoop(null);
    }
    override public function destroy():Void {
        super.destroy();
    }

    override public function update():Void {
        super.update();
    }
}